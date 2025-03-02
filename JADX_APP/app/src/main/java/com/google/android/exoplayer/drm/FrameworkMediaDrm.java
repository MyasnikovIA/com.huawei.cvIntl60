package com.google.android.exoplayer.drm;

import android.annotation.TargetApi;
import android.media.MediaCrypto;
import android.media.MediaDrm;
import com.google.android.exoplayer.drm.ExoMediaDrm;
import com.google.android.exoplayer.util.Assertions;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@TargetApi(18)
/* loaded from: classes.dex */
public final class FrameworkMediaDrm implements ExoMediaDrm<FrameworkMediaCrypto> {
    private final MediaDrm mediaDrm;

    public FrameworkMediaDrm(UUID uuid) {
        this.mediaDrm = new MediaDrm((UUID) Assertions.checkNotNull(uuid));
    }

    /* renamed from: com.google.android.exoplayer.drm.FrameworkMediaDrm$1 */
    class C11961 implements MediaDrm.OnEventListener {
        final /* synthetic */ ExoMediaDrm.OnEventListener val$listener;

        C11961(ExoMediaDrm.OnEventListener onEventListener) {
            onEventListener = onEventListener;
        }

        @Override // android.media.MediaDrm.OnEventListener
        public void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
            onEventListener.onEvent(FrameworkMediaDrm.this, bArr, i, i2, bArr2);
        }
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void setOnEventListener(ExoMediaDrm.OnEventListener<? super FrameworkMediaCrypto> onEventListener) {
        this.mediaDrm.setOnEventListener(onEventListener == null ? null : new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer.drm.FrameworkMediaDrm.1
            final /* synthetic */ ExoMediaDrm.OnEventListener val$listener;

            C11961(ExoMediaDrm.OnEventListener onEventListener2) {
                onEventListener = onEventListener2;
            }

            @Override // android.media.MediaDrm.OnEventListener
            public void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                onEventListener.onEvent(FrameworkMediaDrm.this, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public byte[] openSession() {
        return this.mediaDrm.openSession();
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void closeSession(byte[] bArr) {
        this.mediaDrm.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public ExoMediaDrm.KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i, HashMap<String, String> hashMap) {
        return new ExoMediaDrm.KeyRequest() { // from class: com.google.android.exoplayer.drm.FrameworkMediaDrm.2
            final /* synthetic */ MediaDrm.KeyRequest val$request;

            C11972(MediaDrm.KeyRequest keyRequest) {
                keyRequest = keyRequest;
            }

            @Override // com.google.android.exoplayer.drm.ExoMediaDrm.KeyRequest
            public byte[] getData() {
                return keyRequest.getData();
            }

            @Override // com.google.android.exoplayer.drm.ExoMediaDrm.KeyRequest
            public String getDefaultUrl() {
                return keyRequest.getDefaultUrl();
            }
        };
    }

    /* renamed from: com.google.android.exoplayer.drm.FrameworkMediaDrm$2 */
    class C11972 implements ExoMediaDrm.KeyRequest {
        final /* synthetic */ MediaDrm.KeyRequest val$request;

        C11972(MediaDrm.KeyRequest keyRequest) {
            keyRequest = keyRequest;
        }

        @Override // com.google.android.exoplayer.drm.ExoMediaDrm.KeyRequest
        public byte[] getData() {
            return keyRequest.getData();
        }

        @Override // com.google.android.exoplayer.drm.ExoMediaDrm.KeyRequest
        public String getDefaultUrl() {
            return keyRequest.getDefaultUrl();
        }
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        return this.mediaDrm.provideKeyResponse(bArr, bArr2);
    }

    /* renamed from: com.google.android.exoplayer.drm.FrameworkMediaDrm$3 */
    class C11983 implements ExoMediaDrm.ProvisionRequest {
        final /* synthetic */ MediaDrm.ProvisionRequest val$provisionRequest;

        C11983(MediaDrm.ProvisionRequest provisionRequest) {
            provisionRequest = provisionRequest;
        }

        @Override // com.google.android.exoplayer.drm.ExoMediaDrm.ProvisionRequest
        public byte[] getData() {
            return provisionRequest.getData();
        }

        @Override // com.google.android.exoplayer.drm.ExoMediaDrm.ProvisionRequest
        public String getDefaultUrl() {
            return provisionRequest.getDefaultUrl();
        }
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        return new ExoMediaDrm.ProvisionRequest() { // from class: com.google.android.exoplayer.drm.FrameworkMediaDrm.3
            final /* synthetic */ MediaDrm.ProvisionRequest val$provisionRequest;

            C11983(MediaDrm.ProvisionRequest provisionRequest) {
                provisionRequest = provisionRequest;
            }

            @Override // com.google.android.exoplayer.drm.ExoMediaDrm.ProvisionRequest
            public byte[] getData() {
                return provisionRequest.getData();
            }

            @Override // com.google.android.exoplayer.drm.ExoMediaDrm.ProvisionRequest
            public String getDefaultUrl() {
                return provisionRequest.getDefaultUrl();
            }
        };
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void provideProvisionResponse(byte[] bArr) {
        this.mediaDrm.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void release() {
        this.mediaDrm.release();
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.mediaDrm.restoreKeys(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void setPropertyString(String str, String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public void setPropertyByteArray(String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    @Override // com.google.android.exoplayer.drm.ExoMediaDrm
    public FrameworkMediaCrypto createMediaCrypto(UUID uuid, byte[] bArr) {
        return new FrameworkMediaCrypto(new MediaCrypto(uuid, bArr));
    }
}
