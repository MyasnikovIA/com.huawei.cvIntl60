package com.google.android.exoplayer.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.DeniedByServerException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.ExoMediaCrypto;
import com.google.android.exoplayer.drm.ExoMediaDrm;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.util.Util;
import java.util.HashMap;
import java.util.UUID;

@TargetApi(18)
/* loaded from: classes.dex */
public class StreamingDrmSessionManager<T extends ExoMediaCrypto> implements DrmSessionManager<T> {
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    final MediaDrmCallback callback;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private Exception lastException;
    private T mediaCrypto;
    private final ExoMediaDrm<T> mediaDrm;
    final StreamingDrmSessionManager<T>.MediaDrmHandler mediaDrmHandler;
    private int openCount;
    private final HashMap<String, String> optionalKeyRequestParameters;
    private Handler postRequestHandler;
    final StreamingDrmSessionManager<T>.PostResponseHandler postResponseHandler;
    private boolean provisioningInProgress;
    private HandlerThread requestHandlerThread;
    private DrmInitData.SchemeInitData schemeInitData;
    private byte[] sessionId;
    private int state;
    final UUID uuid;
    public static final UUID WIDEVINE_UUID = new UUID(-1301668207276963122L, -6645017420763422227L);
    public static final UUID PLAYREADY_UUID = new UUID(-7348484286925749626L, -6083546864340672619L);

    public interface EventListener {
        void onDrmKeysLoaded();

        void onDrmSessionManagerError(Exception exc);
    }

    private static FrameworkMediaDrm createFrameworkDrm(UUID uuid) {
        try {
            return new FrameworkMediaDrm(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new UnsupportedDrmException(1, e);
        } catch (Exception e2) {
            throw new UnsupportedDrmException(2, e2);
        }
    }

    public static StreamingDrmSessionManager<FrameworkMediaCrypto> newWidevineInstance(Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener) {
        return newFrameworkInstance(WIDEVINE_UUID, looper, mediaDrmCallback, hashMap, handler, eventListener);
    }

    public static StreamingDrmSessionManager<FrameworkMediaCrypto> newPlayReadyInstance(Looper looper, MediaDrmCallback mediaDrmCallback, String str, Handler handler, EventListener eventListener) {
        HashMap hashMap;
        if (!TextUtils.isEmpty(str)) {
            hashMap = new HashMap();
            hashMap.put(PLAYREADY_CUSTOM_DATA_KEY, str);
        } else {
            hashMap = null;
        }
        return newFrameworkInstance(PLAYREADY_UUID, looper, mediaDrmCallback, hashMap, handler, eventListener);
    }

    public static StreamingDrmSessionManager<FrameworkMediaCrypto> newFrameworkInstance(UUID uuid, Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener) {
        return newInstance(uuid, looper, mediaDrmCallback, hashMap, handler, eventListener, createFrameworkDrm(uuid));
    }

    public static <T extends ExoMediaCrypto> StreamingDrmSessionManager<T> newInstance(UUID uuid, Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener, ExoMediaDrm<T> exoMediaDrm) {
        return new StreamingDrmSessionManager<>(uuid, looper, mediaDrmCallback, hashMap, handler, eventListener, exoMediaDrm);
    }

    private StreamingDrmSessionManager(UUID uuid, Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener, ExoMediaDrm<T> exoMediaDrm) {
        this.uuid = uuid;
        this.callback = mediaDrmCallback;
        this.optionalKeyRequestParameters = hashMap;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.mediaDrm = exoMediaDrm;
        exoMediaDrm.setOnEventListener(new MediaDrmEventListener());
        this.mediaDrmHandler = new MediaDrmHandler(looper);
        this.postResponseHandler = new PostResponseHandler(looper);
        this.state = 1;
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public final T getMediaCrypto() {
        if (this.state != 3 && this.state != 4) {
            throw new IllegalStateException();
        }
        return this.mediaCrypto;
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public boolean requiresSecureDecoderComponent(String str) {
        if (this.state != 3 && this.state != 4) {
            throw new IllegalStateException();
        }
        return this.mediaCrypto.requiresSecureDecoderComponent(str);
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public final Exception getError() {
        if (this.state == 0) {
            return this.lastException;
        }
        return null;
    }

    public final String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    public final void setPropertyString(String str, String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }

    public final byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    public final void setPropertyByteArray(String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public void open(DrmInitData drmInitData) {
        byte[] parseSchemeSpecificData;
        int i = this.openCount + 1;
        this.openCount = i;
        if (i == 1) {
            if (this.postRequestHandler == null) {
                this.requestHandlerThread = new HandlerThread("DrmRequestHandler");
                this.requestHandlerThread.start();
                this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
            }
            if (this.schemeInitData == null) {
                this.schemeInitData = drmInitData.get(this.uuid);
                if (this.schemeInitData == null) {
                    onError(new IllegalStateException("Media does not support uuid: " + this.uuid));
                    return;
                } else if (Util.SDK_INT < 21 && (parseSchemeSpecificData = PsshAtomUtil.parseSchemeSpecificData(this.schemeInitData.data, WIDEVINE_UUID)) != null) {
                    this.schemeInitData = new DrmInitData.SchemeInitData(this.schemeInitData.mimeType, parseSchemeSpecificData);
                }
            }
            this.state = 2;
            openInternal(true);
        }
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public void close() {
        int i = this.openCount - 1;
        this.openCount = i;
        if (i == 0) {
            this.state = 1;
            this.provisioningInProgress = false;
            this.mediaDrmHandler.removeCallbacksAndMessages(null);
            this.postResponseHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler = null;
            this.requestHandlerThread.quit();
            this.requestHandlerThread = null;
            this.schemeInitData = null;
            this.mediaCrypto = null;
            this.lastException = null;
            if (this.sessionId != null) {
                this.mediaDrm.closeSession(this.sessionId);
                this.sessionId = null;
            }
        }
    }

    private void openInternal(boolean z) {
        try {
            this.sessionId = this.mediaDrm.openSession();
            this.mediaCrypto = this.mediaDrm.createMediaCrypto(this.uuid, this.sessionId);
            this.state = 3;
            postKeyRequest();
        } catch (NotProvisionedException e) {
            if (z) {
                postProvisionRequest();
            } else {
                onError(e);
            }
        } catch (Exception e2) {
            onError(e2);
        }
    }

    public void postProvisionRequest() {
        if (!this.provisioningInProgress) {
            this.provisioningInProgress = true;
            this.postRequestHandler.obtainMessage(0, this.mediaDrm.getProvisionRequest()).sendToTarget();
        }
    }

    public void onProvisionResponse(Object obj) {
        this.provisioningInProgress = false;
        if (this.state == 2 || this.state == 3 || this.state == 4) {
            if (obj instanceof Exception) {
                onError((Exception) obj);
                return;
            }
            try {
                this.mediaDrm.provideProvisionResponse((byte[]) obj);
                if (this.state == 2) {
                    openInternal(false);
                } else {
                    postKeyRequest();
                }
            } catch (DeniedByServerException e) {
                onError(e);
            }
        }
    }

    public void postKeyRequest() {
        try {
            this.postRequestHandler.obtainMessage(1, this.mediaDrm.getKeyRequest(this.sessionId, this.schemeInitData.data, this.schemeInitData.mimeType, 1, this.optionalKeyRequestParameters)).sendToTarget();
        } catch (NotProvisionedException e) {
            onKeysError(e);
        }
    }

    public void onKeyResponse(Object obj) {
        if (this.state == 3 || this.state == 4) {
            if (obj instanceof Exception) {
                onKeysError((Exception) obj);
                return;
            }
            try {
                this.mediaDrm.provideKeyResponse(this.sessionId, (byte[]) obj);
                this.state = 4;
                if (this.eventHandler != null && this.eventListener != null) {
                    this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.drm.StreamingDrmSessionManager.1
                        RunnableC11991() {
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            StreamingDrmSessionManager.this.eventListener.onDrmKeysLoaded();
                        }
                    });
                }
            } catch (Exception e) {
                onKeysError(e);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer.drm.StreamingDrmSessionManager$1 */
    class RunnableC11991 implements Runnable {
        RunnableC11991() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StreamingDrmSessionManager.this.eventListener.onDrmKeysLoaded();
        }
    }

    private void onKeysError(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            postProvisionRequest();
        } else {
            onError(exc);
        }
    }

    public void onError(Exception exc) {
        this.lastException = exc;
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.drm.StreamingDrmSessionManager.2
                final /* synthetic */ Exception val$e;

                RunnableC12002(Exception exc2) {
                    exc = exc2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    StreamingDrmSessionManager.this.eventListener.onDrmSessionManagerError(exc);
                }
            });
        }
        if (this.state != 4) {
            this.state = 0;
        }
    }

    /* renamed from: com.google.android.exoplayer.drm.StreamingDrmSessionManager$2 */
    class RunnableC12002 implements Runnable {
        final /* synthetic */ Exception val$e;

        RunnableC12002(Exception exc2) {
            exc = exc2;
        }

        @Override // java.lang.Runnable
        public void run() {
            StreamingDrmSessionManager.this.eventListener.onDrmSessionManagerError(exc);
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (StreamingDrmSessionManager.this.openCount != 0) {
                if (StreamingDrmSessionManager.this.state == 3 || StreamingDrmSessionManager.this.state == 4) {
                    switch (message.what) {
                        case 1:
                            StreamingDrmSessionManager.this.state = 3;
                            StreamingDrmSessionManager.this.postProvisionRequest();
                            break;
                        case 2:
                            StreamingDrmSessionManager.this.postKeyRequest();
                            break;
                        case 3:
                            StreamingDrmSessionManager.this.state = 3;
                            StreamingDrmSessionManager.this.onError(new KeysExpiredException());
                            break;
                    }
                }
            }
        }
    }

    private class MediaDrmEventListener implements ExoMediaDrm.OnEventListener<T> {
        private MediaDrmEventListener() {
        }

        /* synthetic */ MediaDrmEventListener(StreamingDrmSessionManager streamingDrmSessionManager, RunnableC11991 runnableC11991) {
            this();
        }

        @Override // com.google.android.exoplayer.drm.ExoMediaDrm.OnEventListener
        public void onEvent(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
            StreamingDrmSessionManager.this.mediaDrmHandler.sendEmptyMessage(i);
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    StreamingDrmSessionManager.this.onProvisionResponse(message.obj);
                    break;
                case 1:
                    StreamingDrmSessionManager.this.onKeyResponse(message.obj);
                    break;
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        e = StreamingDrmSessionManager.this.callback.executeProvisionRequest(StreamingDrmSessionManager.this.uuid, (ExoMediaDrm.ProvisionRequest) message.obj);
                        break;
                    case 1:
                        e = StreamingDrmSessionManager.this.callback.executeKeyRequest(StreamingDrmSessionManager.this.uuid, (ExoMediaDrm.KeyRequest) message.obj);
                        break;
                    default:
                        throw new RuntimeException();
                }
            } catch (Exception e) {
                e = e;
            }
            StreamingDrmSessionManager.this.postResponseHandler.obtainMessage(message.what, e).sendToTarget();
        }
    }
}
