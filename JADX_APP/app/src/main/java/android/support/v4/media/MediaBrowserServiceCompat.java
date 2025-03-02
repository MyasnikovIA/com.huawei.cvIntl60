package android.support.v4.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaBrowserServiceCompatApi21;
import android.support.v4.media.MediaBrowserServiceCompatApi23;
import android.support.v4.media.MediaBrowserServiceCompatApi26;
import android.support.v4.media.MediaSessionManager;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    private static final float EPSILON = 1.0E-5f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_MEDIA_ITEM = "media_item";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String KEY_SEARCH_RESULTS = "search_results";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_ERROR = -1;
    static final int RESULT_FLAG_ON_LOAD_ITEM_NOT_IMPLEMENTED = 2;
    static final int RESULT_FLAG_ON_SEARCH_NOT_IMPLEMENTED = 4;
    static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_OK = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int RESULT_PROGRESS_UPDATE = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    ConnectionRecord mCurConnection;
    private MediaBrowserServiceImpl mImpl;
    MediaSessionCompat.Token mSession;
    static final String TAG = "MBServiceCompat";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap<>();
    final ServiceHandler mHandler = new ServiceHandler();

    interface MediaBrowserServiceImpl {
        Bundle getBrowserRootHints();

        MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo();

        void notifyChildrenChanged(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle);

        void notifyChildrenChanged(String str, Bundle bundle);

        IBinder onBind(Intent intent);

        void onCreate();

        void setSessionToken(MediaSessionCompat.Token token);
    }

    private interface ServiceCallbacks {
        IBinder asBinder();

        void onConnect(String str, MediaSessionCompat.Token token, Bundle bundle);

        void onConnectFailed();

        void onLoadChildren(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2);
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String str, int i, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {
        private Messenger mMessenger;

        MediaBrowserServiceImplBase() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.mMessenger.getBinder();
            }
            return null;
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 */
        class RunnableC04101 implements Runnable {
            final /* synthetic */ MediaSessionCompat.Token val$token;

            RunnableC04101(MediaSessionCompat.Token token) {
                token = token;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<ConnectionRecord> it = MediaBrowserServiceCompat.this.mConnections.values().iterator();
                while (it.hasNext()) {
                    ConnectionRecord next = it.next();
                    try {
                        next.callbacks.onConnect(next.root.getRootId(), token, next.root.getExtras());
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Connection for " + next.pkg + " is no longer valid.");
                        it.remove();
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void setSessionToken(MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.1
                final /* synthetic */ MediaSessionCompat.Token val$token;

                RunnableC04101(MediaSessionCompat.Token token2) {
                    token = token2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Iterator<ConnectionRecord> it = MediaBrowserServiceCompat.this.mConnections.values().iterator();
                    while (it.hasNext()) {
                        ConnectionRecord next = it.next();
                        try {
                            next.callbacks.onConnect(next.root.getRootId(), token, next.root.getExtras());
                        } catch (RemoteException e) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Connection for " + next.pkg + " is no longer valid.");
                            it.remove();
                        }
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2 */
        class RunnableC04112 implements Runnable {
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            RunnableC04112(String str, Bundle bundle) {
                str = str;
                bundle = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    MediaBrowserServiceImplBase.this.notifyChildrenChangedOnHandler(MediaBrowserServiceCompat.this.mConnections.get(it.next()), str, bundle);
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(@NonNull String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.2
                final /* synthetic */ Bundle val$options;
                final /* synthetic */ String val$parentId;

                RunnableC04112(String str2, Bundle bundle2) {
                    str = str2;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                    while (it.hasNext()) {
                        MediaBrowserServiceImplBase.this.notifyChildrenChangedOnHandler(MediaBrowserServiceCompat.this.mConnections.get(it.next()), str, bundle);
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3 */
        class RunnableC04123 implements Runnable {
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;
            final /* synthetic */ MediaSessionManager.RemoteUserInfo val$remoteUserInfo;

            RunnableC04123(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle) {
                remoteUserInfo = remoteUserInfo;
                str = str;
                bundle = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < MediaBrowserServiceCompat.this.mConnections.size()) {
                        ConnectionRecord valueAt = MediaBrowserServiceCompat.this.mConnections.valueAt(i2);
                        if (!valueAt.browserInfo.equals(remoteUserInfo)) {
                            i = i2 + 1;
                        } else {
                            MediaBrowserServiceImplBase.this.notifyChildrenChangedOnHandler(valueAt, str, bundle);
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(@NonNull MediaSessionManager.RemoteUserInfo remoteUserInfo, @NonNull String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplBase.3
                final /* synthetic */ Bundle val$options;
                final /* synthetic */ String val$parentId;
                final /* synthetic */ MediaSessionManager.RemoteUserInfo val$remoteUserInfo;

                RunnableC04123(MediaSessionManager.RemoteUserInfo remoteUserInfo2, String str2, Bundle bundle2) {
                    remoteUserInfo = remoteUserInfo2;
                    str = str2;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < MediaBrowserServiceCompat.this.mConnections.size()) {
                            ConnectionRecord valueAt = MediaBrowserServiceCompat.this.mConnections.valueAt(i2);
                            if (!valueAt.browserInfo.equals(remoteUserInfo)) {
                                i = i2 + 1;
                            } else {
                                MediaBrowserServiceImplBase.this.notifyChildrenChangedOnHandler(valueAt, str, bundle);
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                }
            });
        }

        void notifyChildrenChangedOnHandler(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, pair.second)) {
                        MediaBrowserServiceCompat.this.performLoadChildren(str, connectionRecord, pair.second, bundle);
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            if (MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) {
                return null;
            }
            return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            return MediaBrowserServiceCompat.this.mCurConnection.browserInfo;
        }
    }

    @RequiresApi(21)
    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl, MediaBrowserServiceCompatApi21.ServiceCompatProxy {
        Messenger mMessenger;
        final List<Bundle> mRootExtrasList = new ArrayList();
        Object mServiceObj;

        MediaBrowserServiceImplApi21() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi21.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, intent);
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1 */
        class RunnableC04041 implements Runnable {
            final /* synthetic */ MediaSessionCompat.Token val$token;

            RunnableC04041(MediaSessionCompat.Token token) {
                token = token;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!MediaBrowserServiceImplApi21.this.mRootExtrasList.isEmpty()) {
                    IMediaSession extraBinder = token.getExtraBinder();
                    if (extraBinder != null) {
                        Iterator<Bundle> it = MediaBrowserServiceImplApi21.this.mRootExtrasList.iterator();
                        while (it.hasNext()) {
                            BundleCompat.putBinder(it.next(), MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder.asBinder());
                        }
                    }
                    MediaBrowserServiceImplApi21.this.mRootExtrasList.clear();
                }
                MediaBrowserServiceCompatApi21.setSessionToken(MediaBrowserServiceImplApi21.this.mServiceObj, token.getToken());
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void setSessionToken(MediaSessionCompat.Token token) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.1
                final /* synthetic */ MediaSessionCompat.Token val$token;

                RunnableC04041(MediaSessionCompat.Token token2) {
                    token = token2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (!MediaBrowserServiceImplApi21.this.mRootExtrasList.isEmpty()) {
                        IMediaSession extraBinder = token.getExtraBinder();
                        if (extraBinder != null) {
                            Iterator<Bundle> it = MediaBrowserServiceImplApi21.this.mRootExtrasList.iterator();
                            while (it.hasNext()) {
                                BundleCompat.putBinder(it.next(), MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder.asBinder());
                            }
                        }
                        MediaBrowserServiceImplApi21.this.mRootExtrasList.clear();
                    }
                    MediaBrowserServiceCompatApi21.setSessionToken(MediaBrowserServiceImplApi21.this.mServiceObj, token.getToken());
                }
            });
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(String str, Bundle bundle) {
            notifyChildrenChangedForFramework(str, bundle);
            notifyChildrenChangedForCompat(str, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void notifyChildrenChanged(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle) {
            notifyChildrenChangedForCompat(remoteUserInfo, str, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        public MediaBrowserServiceCompatApi21.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
            Bundle bundle2;
            if (bundle == null || bundle.getInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 0) == 0) {
                bundle2 = null;
            } else {
                bundle.remove(MediaBrowserProtocol.EXTRA_CLIENT_VERSION);
                this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
                Bundle bundle3 = new Bundle();
                bundle3.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
                BundleCompat.putBinder(bundle3, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.mMessenger.getBinder());
                if (MediaBrowserServiceCompat.this.mSession != null) {
                    IMediaSession extraBinder = MediaBrowserServiceCompat.this.mSession.getExtraBinder();
                    BundleCompat.putBinder(bundle3, MediaBrowserProtocol.EXTRA_SESSION_BINDER, extraBinder == null ? null : extraBinder.asBinder());
                    bundle2 = bundle3;
                } else {
                    this.mRootExtrasList.add(bundle3);
                    bundle2 = bundle3;
                }
            }
            MediaBrowserServiceCompat.this.mCurConnection = MediaBrowserServiceCompat.this.new ConnectionRecord(str, -1, i, bundle, null);
            BrowserRoot onGetRoot = MediaBrowserServiceCompat.this.onGetRoot(str, i, bundle);
            MediaBrowserServiceCompat.this.mCurConnection = null;
            if (onGetRoot == null) {
                return null;
            }
            if (bundle2 == null) {
                bundle2 = onGetRoot.getExtras();
            } else if (onGetRoot.getExtras() != null) {
                bundle2.putAll(onGetRoot.getExtras());
            }
            return new MediaBrowserServiceCompatApi21.BrowserRoot(onGetRoot.getRootId(), bundle2);
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2 */
        class C04052 extends Result<List<MediaBrowserCompat.MediaItem>> {
            final /* synthetic */ MediaBrowserServiceCompatApi21.ResultWrapper val$resultWrapper;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04052(Object obj, MediaBrowserServiceCompatApi21.ResultWrapper resultWrapper) {
                super(obj);
                resultWrapper = resultWrapper;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList = null;
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList2.add(obtain);
                    }
                    arrayList = arrayList2;
                }
                resultWrapper.sendResult(arrayList);
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void detach() {
                resultWrapper.detach();
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceCompatProxy
        public void onLoadChildren(String str, MediaBrowserServiceCompatApi21.ResultWrapper<List<Parcel>> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadChildren(str, new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.2
                final /* synthetic */ MediaBrowserServiceCompatApi21.ResultWrapper val$resultWrapper;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C04052(Object str2, MediaBrowserServiceCompatApi21.ResultWrapper resultWrapper2) {
                    super(str2);
                    resultWrapper = resultWrapper2;
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList = null;
                    if (list != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (MediaBrowserCompat.MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList2.add(obtain);
                        }
                        arrayList = arrayList2;
                    }
                    resultWrapper.sendResult(arrayList);
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }
            });
        }

        void notifyChildrenChangedForFramework(String str, Bundle bundle) {
            MediaBrowserServiceCompatApi21.notifyChildrenChanged(this.mServiceObj, str);
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3 */
        class RunnableC04063 implements Runnable {
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;

            RunnableC04063(String str, Bundle bundle) {
                str = str;
                bundle = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    MediaBrowserServiceImplApi21.this.notifyChildrenChangedForCompatOnHandler(MediaBrowserServiceCompat.this.mConnections.get(it.next()), str, bundle);
                }
            }
        }

        void notifyChildrenChangedForCompat(String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.3
                final /* synthetic */ Bundle val$options;
                final /* synthetic */ String val$parentId;

                RunnableC04063(String str2, Bundle bundle2) {
                    str = str2;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Iterator<IBinder> it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                    while (it.hasNext()) {
                        MediaBrowserServiceImplApi21.this.notifyChildrenChangedForCompatOnHandler(MediaBrowserServiceCompat.this.mConnections.get(it.next()), str, bundle);
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4 */
        class RunnableC04074 implements Runnable {
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ String val$parentId;
            final /* synthetic */ MediaSessionManager.RemoteUserInfo val$remoteUserInfo;

            RunnableC04074(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle) {
                remoteUserInfo = remoteUserInfo;
                str = str;
                bundle = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < MediaBrowserServiceCompat.this.mConnections.size()) {
                        ConnectionRecord valueAt = MediaBrowserServiceCompat.this.mConnections.valueAt(i2);
                        if (valueAt.browserInfo.equals(remoteUserInfo)) {
                            MediaBrowserServiceImplApi21.this.notifyChildrenChangedForCompatOnHandler(valueAt, str, bundle);
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        }

        void notifyChildrenChangedForCompat(MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21.4
                final /* synthetic */ Bundle val$options;
                final /* synthetic */ String val$parentId;
                final /* synthetic */ MediaSessionManager.RemoteUserInfo val$remoteUserInfo;

                RunnableC04074(MediaSessionManager.RemoteUserInfo remoteUserInfo2, String str2, Bundle bundle2) {
                    remoteUserInfo = remoteUserInfo2;
                    str = str2;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < MediaBrowserServiceCompat.this.mConnections.size()) {
                            ConnectionRecord valueAt = MediaBrowserServiceCompat.this.mConnections.valueAt(i2);
                            if (valueAt.browserInfo.equals(remoteUserInfo)) {
                                MediaBrowserServiceImplApi21.this.notifyChildrenChangedForCompatOnHandler(valueAt, str, bundle);
                            }
                            i = i2 + 1;
                        } else {
                            return;
                        }
                    }
                }
            });
        }

        void notifyChildrenChangedForCompatOnHandler(ConnectionRecord connectionRecord, String str, Bundle bundle) {
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                for (Pair<IBinder, Bundle> pair : list) {
                    if (MediaBrowserCompatUtils.hasDuplicatedItems(bundle, pair.second)) {
                        MediaBrowserServiceCompat.this.performLoadChildren(str, connectionRecord, pair.second, bundle);
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            if (this.mMessenger == null) {
                return null;
            }
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            if (MediaBrowserServiceCompat.this.mCurConnection.rootHints != null) {
                return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
            }
            return null;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
            if (MediaBrowserServiceCompat.this.mCurConnection == null) {
                throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            }
            return MediaBrowserServiceCompat.this.mCurConnection.browserInfo;
        }
    }

    @RequiresApi(23)
    class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 implements MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        MediaBrowserServiceImplApi23() {
            super();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi23.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1 */
        class C04081 extends Result<MediaBrowserCompat.MediaItem> {
            final /* synthetic */ MediaBrowserServiceCompatApi21.ResultWrapper val$resultWrapper;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04081(Object obj, MediaBrowserServiceCompatApi21.ResultWrapper resultWrapper) {
                super(obj);
                resultWrapper = resultWrapper;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(MediaBrowserCompat.MediaItem mediaItem) {
                if (mediaItem == null) {
                    resultWrapper.sendResult(null);
                    return;
                }
                Parcel obtain = Parcel.obtain();
                mediaItem.writeToParcel(obtain, 0);
                resultWrapper.sendResult(obtain);
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void detach() {
                resultWrapper.detach();
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi23.ServiceCompatProxy
        public void onLoadItem(String str, MediaBrowserServiceCompatApi21.ResultWrapper<Parcel> resultWrapper) {
            MediaBrowserServiceCompat.this.onLoadItem(str, new Result<MediaBrowserCompat.MediaItem>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.1
                final /* synthetic */ MediaBrowserServiceCompatApi21.ResultWrapper val$resultWrapper;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C04081(Object str2, MediaBrowserServiceCompatApi21.ResultWrapper resultWrapper2) {
                    super(str2);
                    resultWrapper = resultWrapper2;
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void onResultSent(MediaBrowserCompat.MediaItem mediaItem) {
                    if (mediaItem == null) {
                        resultWrapper.sendResult(null);
                        return;
                    }
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    resultWrapper.sendResult(obtain);
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }
            });
        }
    }

    @RequiresApi(26)
    class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi23 implements MediaBrowserServiceCompatApi26.ServiceCompatProxy {
        MediaBrowserServiceImplApi26() {
            super();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi26.createService(MediaBrowserServiceCompat.this, this);
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj);
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1 */
        class C04091 extends Result<List<MediaBrowserCompat.MediaItem>> {
            final /* synthetic */ MediaBrowserServiceCompatApi26.ResultWrapper val$resultWrapper;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04091(Object obj, MediaBrowserServiceCompatApi26.ResultWrapper resultWrapper) {
                super(obj);
                resultWrapper = resultWrapper;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
                ArrayList arrayList = null;
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (MediaBrowserCompat.MediaItem mediaItem : list) {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        arrayList2.add(obtain);
                    }
                    arrayList = arrayList2;
                }
                resultWrapper.sendResult(arrayList, getFlags());
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void detach() {
                resultWrapper.detach();
            }
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi26.ServiceCompatProxy
        public void onLoadChildren(String str, MediaBrowserServiceCompatApi26.ResultWrapper resultWrapper, Bundle bundle) {
            MediaBrowserServiceCompat.this.onLoadChildren(str, new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi26.1
                final /* synthetic */ MediaBrowserServiceCompatApi26.ResultWrapper val$resultWrapper;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C04091(Object str2, MediaBrowserServiceCompatApi26.ResultWrapper resultWrapper2) {
                    super(str2);
                    resultWrapper = resultWrapper2;
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
                    ArrayList arrayList = null;
                    if (list != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (MediaBrowserCompat.MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList2.add(obtain);
                        }
                        arrayList = arrayList2;
                    }
                    resultWrapper.sendResult(arrayList, getFlags());
                }

                @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
                public void detach() {
                    resultWrapper.detach();
                }
            }, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public Bundle getBrowserRootHints() {
            if (MediaBrowserServiceCompat.this.mCurConnection != null) {
                if (MediaBrowserServiceCompat.this.mCurConnection.rootHints == null) {
                    return null;
                }
                return new Bundle(MediaBrowserServiceCompat.this.mCurConnection.rootHints);
            }
            return MediaBrowserServiceCompatApi26.getBrowserRootHints(this.mServiceObj);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21
        void notifyChildrenChangedForFramework(String str, Bundle bundle) {
            if (bundle != null) {
                MediaBrowserServiceCompatApi26.notifyChildrenChanged(this.mServiceObj, str, bundle);
            } else {
                super.notifyChildrenChangedForFramework(str, bundle);
            }
        }
    }

    @RequiresApi(28)
    class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
        MediaBrowserServiceImplApi28() {
            super();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
            if (MediaBrowserServiceCompat.this.mCurConnection != null) {
                return MediaBrowserServiceCompat.this.mCurConnection.browserInfo;
            }
            return new MediaSessionManager.RemoteUserInfo(((MediaBrowserService) this.mServiceObj).getCurrentBrowserInfo());
        }
    }

    private final class ServiceHandler extends Handler {
        private final ServiceBinderImpl mServiceBinderImpl;

        ServiceHandler() {
            this.mServiceBinderImpl = MediaBrowserServiceCompat.this.new ServiceBinderImpl();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bundle data = message.getData();
            switch (message.what) {
                case 1:
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle);
                    this.mServiceBinderImpl.connect(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle, new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 2:
                    this.mServiceBinderImpl.disconnect(new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 3:
                    Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.ensureClassLoader(bundle2);
                    this.mServiceBinderImpl.addSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), bundle2, new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 4:
                    this.mServiceBinderImpl.removeSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), BundleCompat.getBinder(data, MediaBrowserProtocol.DATA_CALLBACK_TOKEN), new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 5:
                    this.mServiceBinderImpl.getMediaItem(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 6:
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.ensureClassLoader(bundle3);
                    this.mServiceBinderImpl.registerCallbacks(new ServiceCallbacksCompat(message.replyTo), data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), bundle3);
                    break;
                case 7:
                    this.mServiceBinderImpl.unregisterCallbacks(new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 8:
                    Bundle bundle4 = data.getBundle(MediaBrowserProtocol.DATA_SEARCH_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle4);
                    this.mServiceBinderImpl.search(data.getString(MediaBrowserProtocol.DATA_SEARCH_QUERY), bundle4, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    break;
                case 9:
                    Bundle bundle5 = data.getBundle(MediaBrowserProtocol.DATA_CUSTOM_ACTION_EXTRAS);
                    MediaSessionCompat.ensureClassLoader(bundle5);
                    this.mServiceBinderImpl.sendCustomAction(data.getString(MediaBrowserProtocol.DATA_CUSTOM_ACTION), bundle5, (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER), new ServiceCallbacksCompat(message.replyTo));
                    break;
                default:
                    Log.w(MediaBrowserServiceCompat.TAG, "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    break;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Binder.getCallingPid());
            return super.sendMessageAtTime(message, j);
        }

        public void postOrRun(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }
    }

    private class ConnectionRecord implements IBinder.DeathRecipient {
        public final MediaSessionManager.RemoteUserInfo browserInfo;
        public final ServiceCallbacks callbacks;
        public final int pid;
        public final String pkg;
        public BrowserRoot root;
        public final Bundle rootHints;
        public final HashMap<String, List<Pair<IBinder, Bundle>>> subscriptions = new HashMap<>();
        public final int uid;

        ConnectionRecord(String str, int i, int i2, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            this.pkg = str;
            this.pid = i;
            this.uid = i2;
            this.browserInfo = new MediaSessionManager.RemoteUserInfo(str, i, i2);
            this.rootHints = bundle;
            this.callbacks = serviceCallbacks;
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ConnectionRecord$1 */
        class RunnableC04031 implements Runnable {
            RunnableC04031() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MediaBrowserServiceCompat.this.mConnections.remove(ConnectionRecord.this.callbacks.asBinder());
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MediaBrowserServiceCompat.this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ConnectionRecord.1
                RunnableC04031() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserServiceCompat.this.mConnections.remove(ConnectionRecord.this.callbacks.asBinder());
                }
            });
        }
    }

    public static class Result<T> {
        private final Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendErrorCalled;
        private boolean mSendProgressUpdateCalled;
        private boolean mSendResultCalled;

        Result(Object obj) {
            this.mDebug = obj;
        }

        public void sendResult(T t) {
            if (this.mSendResultCalled || this.mSendErrorCalled) {
                throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
            }
            this.mSendResultCalled = true;
            onResultSent(t);
        }

        public void sendProgressUpdate(Bundle bundle) {
            if (this.mSendResultCalled || this.mSendErrorCalled) {
                throw new IllegalStateException("sendProgressUpdate() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
            }
            checkExtraFields(bundle);
            this.mSendProgressUpdateCalled = true;
            onProgressUpdateSent(bundle);
        }

        public void sendError(Bundle bundle) {
            if (this.mSendResultCalled || this.mSendErrorCalled) {
                throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
            }
            this.mSendErrorCalled = true;
            onErrorSent(bundle);
        }

        public void detach() {
            if (this.mDetachCalled) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
            }
            if (this.mSendResultCalled) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
            }
            if (this.mSendErrorCalled) {
                throw new IllegalStateException("detach() called when sendError() had already been called for: " + this.mDebug);
            }
            this.mDetachCalled = true;
        }

        boolean isDone() {
            return this.mDetachCalled || this.mSendResultCalled || this.mSendErrorCalled;
        }

        void setFlags(int i) {
            this.mFlags = i;
        }

        int getFlags() {
            return this.mFlags;
        }

        void onResultSent(T t) {
        }

        void onProgressUpdateSent(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an interim update for " + this.mDebug);
        }

        void onErrorSent(Bundle bundle) {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.mDebug);
        }

        private void checkExtraFields(Bundle bundle) {
            if (bundle != null && bundle.containsKey(MediaBrowserCompat.EXTRA_DOWNLOAD_PROGRESS)) {
                float f = bundle.getFloat(MediaBrowserCompat.EXTRA_DOWNLOAD_PROGRESS);
                if (f < -1.0E-5f || f > 1.00001f) {
                    throw new IllegalArgumentException("The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0].");
                }
            }
        }
    }

    private class ServiceBinderImpl {
        ServiceBinderImpl() {
        }

        public void connect(String str, int i, int i2, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            if (!MediaBrowserServiceCompat.this.isValidPackage(str, i2)) {
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + str);
            }
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.1
                final /* synthetic */ ServiceCallbacks val$callbacks;
                final /* synthetic */ int val$pid;
                final /* synthetic */ String val$pkg;
                final /* synthetic */ Bundle val$rootHints;
                final /* synthetic */ int val$uid;

                RunnableC04131(ServiceCallbacks serviceCallbacks2, String str2, int i3, int i22, Bundle bundle2) {
                    serviceCallbacks = serviceCallbacks2;
                    str = str2;
                    i = i3;
                    i2 = i22;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i, i2, bundle, serviceCallbacks);
                    MediaBrowserServiceCompat.this.mCurConnection = connectionRecord;
                    connectionRecord.root = MediaBrowserServiceCompat.this.onGetRoot(str, i2, bundle);
                    MediaBrowserServiceCompat.this.mCurConnection = null;
                    if (connectionRecord.root == null) {
                        Log.i(MediaBrowserServiceCompat.TAG, "No root for client " + str + " from service " + getClass().getName());
                        try {
                            serviceCallbacks.onConnectFailed();
                            return;
                        } catch (RemoteException e) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                            return;
                        }
                    }
                    try {
                        MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                        asBinder.linkToDeath(connectionRecord, 0);
                        if (MediaBrowserServiceCompat.this.mSession != null) {
                            serviceCallbacks.onConnect(connectionRecord.root.getRootId(), MediaBrowserServiceCompat.this.mSession, connectionRecord.root.getExtras());
                        }
                    } catch (RemoteException e2) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnect() failed. Dropping client. pkg=" + str);
                        MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$1 */
        class RunnableC04131 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ int val$pid;
            final /* synthetic */ String val$pkg;
            final /* synthetic */ Bundle val$rootHints;
            final /* synthetic */ int val$uid;

            RunnableC04131(ServiceCallbacks serviceCallbacks2, String str2, int i3, int i22, Bundle bundle2) {
                serviceCallbacks = serviceCallbacks2;
                str = str2;
                i = i3;
                i2 = i22;
                bundle = bundle2;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = serviceCallbacks.asBinder();
                MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i, i2, bundle, serviceCallbacks);
                MediaBrowserServiceCompat.this.mCurConnection = connectionRecord;
                connectionRecord.root = MediaBrowserServiceCompat.this.onGetRoot(str, i2, bundle);
                MediaBrowserServiceCompat.this.mCurConnection = null;
                if (connectionRecord.root == null) {
                    Log.i(MediaBrowserServiceCompat.TAG, "No root for client " + str + " from service " + getClass().getName());
                    try {
                        serviceCallbacks.onConnectFailed();
                        return;
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + str);
                        return;
                    }
                }
                try {
                    MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                    asBinder.linkToDeath(connectionRecord, 0);
                    if (MediaBrowserServiceCompat.this.mSession != null) {
                        serviceCallbacks.onConnect(connectionRecord.root.getRootId(), MediaBrowserServiceCompat.this.mSession, connectionRecord.root.getExtras());
                    }
                } catch (RemoteException e2) {
                    Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnect() failed. Dropping client. pkg=" + str);
                    MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$2 */
        class RunnableC04142 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;

            RunnableC04142(ServiceCallbacks serviceCallbacks) {
                serviceCallbacks = serviceCallbacks;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord remove = MediaBrowserServiceCompat.this.mConnections.remove(serviceCallbacks.asBinder());
                if (remove != null) {
                    remove.callbacks.asBinder().unlinkToDeath(remove, 0);
                }
            }
        }

        public void disconnect(ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.2
                final /* synthetic */ ServiceCallbacks val$callbacks;

                RunnableC04142(ServiceCallbacks serviceCallbacks2) {
                    serviceCallbacks = serviceCallbacks2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord remove = MediaBrowserServiceCompat.this.mConnections.remove(serviceCallbacks.asBinder());
                    if (remove != null) {
                        remove.callbacks.asBinder().unlinkToDeath(remove, 0);
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$3 */
        class RunnableC04153 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ String val$id;
            final /* synthetic */ Bundle val$options;
            final /* synthetic */ IBinder val$token;

            RunnableC04153(ServiceCallbacks serviceCallbacks, String str, IBinder iBinder, Bundle bundle) {
                serviceCallbacks = serviceCallbacks;
                str = str;
                iBinder = iBinder;
                bundle = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                if (connectionRecord == null) {
                    Log.w(MediaBrowserServiceCompat.TAG, "addSubscription for callback that isn't registered id=" + str);
                } else {
                    MediaBrowserServiceCompat.this.addSubscription(str, connectionRecord, iBinder, bundle);
                }
            }
        }

        public void addSubscription(String str, IBinder iBinder, Bundle bundle, ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.3
                final /* synthetic */ ServiceCallbacks val$callbacks;
                final /* synthetic */ String val$id;
                final /* synthetic */ Bundle val$options;
                final /* synthetic */ IBinder val$token;

                RunnableC04153(ServiceCallbacks serviceCallbacks2, String str2, IBinder iBinder2, Bundle bundle2) {
                    serviceCallbacks = serviceCallbacks2;
                    str = str2;
                    iBinder = iBinder2;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        Log.w(MediaBrowserServiceCompat.TAG, "addSubscription for callback that isn't registered id=" + str);
                    } else {
                        MediaBrowserServiceCompat.this.addSubscription(str, connectionRecord, iBinder, bundle);
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$4 */
        class RunnableC04164 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ String val$id;
            final /* synthetic */ IBinder val$token;

            RunnableC04164(ServiceCallbacks serviceCallbacks, String str, IBinder iBinder) {
                serviceCallbacks = serviceCallbacks;
                str = str;
                iBinder = iBinder;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                if (connectionRecord == null) {
                    Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription for callback that isn't registered id=" + str);
                } else if (!MediaBrowserServiceCompat.this.removeSubscription(str, connectionRecord, iBinder)) {
                    Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription called for " + str + " which is not subscribed");
                }
            }
        }

        public void removeSubscription(String str, IBinder iBinder, ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.4
                final /* synthetic */ ServiceCallbacks val$callbacks;
                final /* synthetic */ String val$id;
                final /* synthetic */ IBinder val$token;

                RunnableC04164(ServiceCallbacks serviceCallbacks2, String str2, IBinder iBinder2) {
                    serviceCallbacks = serviceCallbacks2;
                    str = str2;
                    iBinder = iBinder2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                    if (connectionRecord == null) {
                        Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription for callback that isn't registered id=" + str);
                    } else if (!MediaBrowserServiceCompat.this.removeSubscription(str, connectionRecord, iBinder)) {
                        Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription called for " + str + " which is not subscribed");
                    }
                }
            });
        }

        public void getMediaItem(String str, ResultReceiver resultReceiver, ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.5
                    final /* synthetic */ ServiceCallbacks val$callbacks;
                    final /* synthetic */ String val$mediaId;
                    final /* synthetic */ ResultReceiver val$receiver;

                    RunnableC04175(ServiceCallbacks serviceCallbacks2, String str2, ResultReceiver resultReceiver2) {
                        serviceCallbacks = serviceCallbacks2;
                        str = str2;
                        resultReceiver = resultReceiver2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                        if (connectionRecord == null) {
                            Log.w(MediaBrowserServiceCompat.TAG, "getMediaItem for callback that isn't registered id=" + str);
                        } else {
                            MediaBrowserServiceCompat.this.performLoadItem(str, connectionRecord, resultReceiver);
                        }
                    }
                });
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$5 */
        class RunnableC04175 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ String val$mediaId;
            final /* synthetic */ ResultReceiver val$receiver;

            RunnableC04175(ServiceCallbacks serviceCallbacks2, String str2, ResultReceiver resultReceiver2) {
                serviceCallbacks = serviceCallbacks2;
                str = str2;
                resultReceiver = resultReceiver2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                if (connectionRecord == null) {
                    Log.w(MediaBrowserServiceCompat.TAG, "getMediaItem for callback that isn't registered id=" + str);
                } else {
                    MediaBrowserServiceCompat.this.performLoadItem(str, connectionRecord, resultReceiver);
                }
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$6 */
        class RunnableC04186 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ int val$pid;
            final /* synthetic */ String val$pkg;
            final /* synthetic */ Bundle val$rootHints;
            final /* synthetic */ int val$uid;

            RunnableC04186(ServiceCallbacks serviceCallbacks, String str, int i, int i2, Bundle bundle) {
                serviceCallbacks = serviceCallbacks;
                str = str;
                i = i;
                i2 = i2;
                bundle = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = serviceCallbacks.asBinder();
                MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i, i2, bundle, serviceCallbacks);
                MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                try {
                    asBinder.linkToDeath(connectionRecord, 0);
                } catch (RemoteException e) {
                    Log.w(MediaBrowserServiceCompat.TAG, "IBinder is already dead.");
                }
            }
        }

        public void registerCallbacks(ServiceCallbacks serviceCallbacks, String str, int i, int i2, Bundle bundle) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.6
                final /* synthetic */ ServiceCallbacks val$callbacks;
                final /* synthetic */ int val$pid;
                final /* synthetic */ String val$pkg;
                final /* synthetic */ Bundle val$rootHints;
                final /* synthetic */ int val$uid;

                RunnableC04186(ServiceCallbacks serviceCallbacks2, String str2, int i3, int i22, Bundle bundle2) {
                    serviceCallbacks = serviceCallbacks2;
                    str = str2;
                    i = i3;
                    i2 = i22;
                    bundle = bundle2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                    ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(str, i, i2, bundle, serviceCallbacks);
                    MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                    try {
                        asBinder.linkToDeath(connectionRecord, 0);
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "IBinder is already dead.");
                    }
                }
            });
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$7 */
        class RunnableC04197 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;

            RunnableC04197(ServiceCallbacks serviceCallbacks) {
                serviceCallbacks = serviceCallbacks;
            }

            @Override // java.lang.Runnable
            public void run() {
                IBinder asBinder = serviceCallbacks.asBinder();
                ConnectionRecord remove = MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                if (remove != null) {
                    asBinder.unlinkToDeath(remove, 0);
                }
            }
        }

        public void unregisterCallbacks(ServiceCallbacks serviceCallbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.7
                final /* synthetic */ ServiceCallbacks val$callbacks;

                RunnableC04197(ServiceCallbacks serviceCallbacks2) {
                    serviceCallbacks = serviceCallbacks2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = serviceCallbacks.asBinder();
                    ConnectionRecord remove = MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                    if (remove != null) {
                        asBinder.unlinkToDeath(remove, 0);
                    }
                }
            });
        }

        public void search(String str, Bundle bundle, ResultReceiver resultReceiver, ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.8
                    final /* synthetic */ ServiceCallbacks val$callbacks;
                    final /* synthetic */ Bundle val$extras;
                    final /* synthetic */ String val$query;
                    final /* synthetic */ ResultReceiver val$receiver;

                    RunnableC04208(ServiceCallbacks serviceCallbacks2, String str2, Bundle bundle2, ResultReceiver resultReceiver2) {
                        serviceCallbacks = serviceCallbacks2;
                        str = str2;
                        bundle = bundle2;
                        resultReceiver = resultReceiver2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                        if (connectionRecord == null) {
                            Log.w(MediaBrowserServiceCompat.TAG, "search for callback that isn't registered query=" + str);
                        } else {
                            MediaBrowserServiceCompat.this.performSearch(str, bundle, connectionRecord, resultReceiver);
                        }
                    }
                });
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$8 */
        class RunnableC04208 implements Runnable {
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ Bundle val$extras;
            final /* synthetic */ String val$query;
            final /* synthetic */ ResultReceiver val$receiver;

            RunnableC04208(ServiceCallbacks serviceCallbacks2, String str2, Bundle bundle2, ResultReceiver resultReceiver2) {
                serviceCallbacks = serviceCallbacks2;
                str = str2;
                bundle = bundle2;
                resultReceiver = resultReceiver2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                if (connectionRecord == null) {
                    Log.w(MediaBrowserServiceCompat.TAG, "search for callback that isn't registered query=" + str);
                } else {
                    MediaBrowserServiceCompat.this.performSearch(str, bundle, connectionRecord, resultReceiver);
                }
            }
        }

        public void sendCustomAction(String str, Bundle bundle, ResultReceiver resultReceiver, ServiceCallbacks serviceCallbacks) {
            if (!TextUtils.isEmpty(str) && resultReceiver != null) {
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceBinderImpl.9
                    final /* synthetic */ String val$action;
                    final /* synthetic */ ServiceCallbacks val$callbacks;
                    final /* synthetic */ Bundle val$extras;
                    final /* synthetic */ ResultReceiver val$receiver;

                    RunnableC04219(ServiceCallbacks serviceCallbacks2, String str2, Bundle bundle2, ResultReceiver resultReceiver2) {
                        serviceCallbacks = serviceCallbacks2;
                        str = str2;
                        bundle = bundle2;
                        resultReceiver = resultReceiver2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                        if (connectionRecord == null) {
                            Log.w(MediaBrowserServiceCompat.TAG, "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                        } else {
                            MediaBrowserServiceCompat.this.performCustomAction(str, bundle, connectionRecord, resultReceiver);
                        }
                    }
                });
            }
        }

        /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$ServiceBinderImpl$9 */
        class RunnableC04219 implements Runnable {
            final /* synthetic */ String val$action;
            final /* synthetic */ ServiceCallbacks val$callbacks;
            final /* synthetic */ Bundle val$extras;
            final /* synthetic */ ResultReceiver val$receiver;

            RunnableC04219(ServiceCallbacks serviceCallbacks2, String str2, Bundle bundle2, ResultReceiver resultReceiver2) {
                serviceCallbacks = serviceCallbacks2;
                str = str2;
                bundle = bundle2;
                resultReceiver = resultReceiver2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectionRecord connectionRecord = MediaBrowserServiceCompat.this.mConnections.get(serviceCallbacks.asBinder());
                if (connectionRecord == null) {
                    Log.w(MediaBrowserServiceCompat.TAG, "sendCustomAction for callback that isn't registered action=" + str + ", extras=" + bundle);
                } else {
                    MediaBrowserServiceCompat.this.performCustomAction(str, bundle, connectionRecord, resultReceiver);
                }
            }
        }
    }

    private static class ServiceCallbacksCompat implements ServiceCallbacks {
        final Messenger mCallbacks;

        ServiceCallbacksCompat(Messenger messenger) {
            this.mCallbacks = messenger;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.mCallbacks.getBinder();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnect(String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 2);
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle2.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, token);
            bundle2.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, bundle);
            sendRequest(1, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnectFailed() {
            sendRequest(2, null);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onLoadChildren(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle, Bundle bundle2) {
            Bundle bundle3 = new Bundle();
            bundle3.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            bundle3.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            bundle3.putBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS, bundle2);
            if (list != null) {
                bundle3.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            sendRequest(3, bundle3);
        }

        private void sendRequest(int i, Bundle bundle) {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 2;
            obtain.setData(bundle);
            this.mCallbacks.send(obtain);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void attachToBaseContext(Context context) {
        attachBaseContext(context);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 28) {
            this.mImpl = new MediaBrowserServiceImplApi28();
        } else if (Build.VERSION.SDK_INT >= 26) {
            this.mImpl = new MediaBrowserServiceImplApi26();
        } else if (Build.VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaBrowserServiceImplApi23();
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaBrowserServiceImplApi21();
        } else {
            this.mImpl = new MediaBrowserServiceImplBase();
        }
        this.mImpl.onCreate();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle bundle) {
        result.setFlags(1);
        onLoadChildren(str, result);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onSubscribe(String str, Bundle bundle) {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onUnsubscribe(String str) {
    }

    public void onLoadItem(String str, @NonNull Result<MediaBrowserCompat.MediaItem> result) {
        result.setFlags(2);
        result.sendResult(null);
    }

    public void onSearch(@NonNull String str, Bundle bundle, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result) {
        result.setFlags(4);
        result.sendResult(null);
    }

    public void onCustomAction(@NonNull String str, Bundle bundle, @NonNull Result<Bundle> result) {
        result.sendError(null);
    }

    public void setSessionToken(MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        }
        if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        }
        this.mSession = token;
        this.mImpl.setSessionToken(token);
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.mSession;
    }

    public final Bundle getBrowserRootHints() {
        return this.mImpl.getBrowserRootHints();
    }

    @NonNull
    public final MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo() {
        return this.mImpl.getCurrentBrowserInfo();
    }

    public void notifyChildrenChanged(@NonNull String str) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(str, null);
    }

    public void notifyChildrenChanged(@NonNull String str, @NonNull Bundle bundle) {
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(str, bundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void notifyChildrenChanged(@NonNull MediaSessionManager.RemoteUserInfo remoteUserInfo, @NonNull String str, @NonNull Bundle bundle) {
        if (remoteUserInfo == null) {
            throw new IllegalArgumentException("remoteUserInfo cannot be null in notifyChildrenChanged");
        }
        if (str == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        if (bundle == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        this.mImpl.notifyChildrenChanged(remoteUserInfo, str, bundle);
    }

    boolean isValidPackage(String str, int i) {
        if (str == null) {
            return false;
        }
        for (String str2 : getPackageManager().getPackagesForUid(i)) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    void addSubscription(String str, ConnectionRecord connectionRecord, IBinder iBinder, Bundle bundle) {
        List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
        List<Pair<IBinder, Bundle>> arrayList = list == null ? new ArrayList() : list;
        for (Pair<IBinder, Bundle> pair : arrayList) {
            if (iBinder == pair.first && MediaBrowserCompatUtils.areSameOptions(bundle, pair.second)) {
                return;
            }
        }
        arrayList.add(new Pair<>(iBinder, bundle));
        connectionRecord.subscriptions.put(str, arrayList);
        performLoadChildren(str, connectionRecord, bundle, null);
        this.mCurConnection = connectionRecord;
        onSubscribe(str, bundle);
        this.mCurConnection = null;
    }

    boolean removeSubscription(String str, ConnectionRecord connectionRecord, IBinder iBinder) {
        boolean z = false;
        try {
            if (iBinder == null) {
                return connectionRecord.subscriptions.remove(str) != null;
            }
            List<Pair<IBinder, Bundle>> list = connectionRecord.subscriptions.get(str);
            if (list != null) {
                Iterator<Pair<IBinder, Bundle>> it = list.iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    if (iBinder == it.next().first) {
                        it.remove();
                        z2 = true;
                    }
                }
                if (list.size() == 0) {
                    connectionRecord.subscriptions.remove(str);
                }
                z = z2;
            }
            this.mCurConnection = connectionRecord;
            onUnsubscribe(str);
            this.mCurConnection = null;
            return z;
        } finally {
            this.mCurConnection = connectionRecord;
            onUnsubscribe(str);
            this.mCurConnection = null;
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$1 */
    class C03991 extends Result<List<MediaBrowserCompat.MediaItem>> {
        final /* synthetic */ ConnectionRecord val$connection;
        final /* synthetic */ Bundle val$notifyChildrenChangedOptions;
        final /* synthetic */ String val$parentId;
        final /* synthetic */ Bundle val$subscribeOptions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03991(Object obj, ConnectionRecord connectionRecord, String str, Bundle bundle, Bundle bundle2) {
            super(obj);
            connectionRecord = connectionRecord;
            str = str;
            bundle = bundle;
            bundle2 = bundle2;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
        public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
            if (MediaBrowserServiceCompat.this.mConnections.get(connectionRecord.callbacks.asBinder()) != connectionRecord) {
                if (MediaBrowserServiceCompat.DEBUG) {
                    Log.d(MediaBrowserServiceCompat.TAG, "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connectionRecord.pkg + " id=" + str);
                }
            } else {
                if ((getFlags() & 1) != 0) {
                    list = MediaBrowserServiceCompat.this.applyOptions(list, bundle);
                }
                try {
                    connectionRecord.callbacks.onLoadChildren(str, list, bundle, bundle2);
                } catch (RemoteException e) {
                    Log.w(MediaBrowserServiceCompat.TAG, "Calling onLoadChildren() failed for id=" + str + " package=" + connectionRecord.pkg);
                }
            }
        }
    }

    void performLoadChildren(String str, ConnectionRecord connectionRecord, Bundle bundle, Bundle bundle2) {
        C03991 c03991 = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.1
            final /* synthetic */ ConnectionRecord val$connection;
            final /* synthetic */ Bundle val$notifyChildrenChangedOptions;
            final /* synthetic */ String val$parentId;
            final /* synthetic */ Bundle val$subscribeOptions;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C03991(String str2, ConnectionRecord connectionRecord2, String str22, Bundle bundle3, Bundle bundle22) {
                super(str22);
                connectionRecord = connectionRecord2;
                str = str22;
                bundle = bundle3;
                bundle2 = bundle22;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
                if (MediaBrowserServiceCompat.this.mConnections.get(connectionRecord.callbacks.asBinder()) != connectionRecord) {
                    if (MediaBrowserServiceCompat.DEBUG) {
                        Log.d(MediaBrowserServiceCompat.TAG, "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + connectionRecord.pkg + " id=" + str);
                    }
                } else {
                    if ((getFlags() & 1) != 0) {
                        list = MediaBrowserServiceCompat.this.applyOptions(list, bundle);
                    }
                    try {
                        connectionRecord.callbacks.onLoadChildren(str, list, bundle, bundle2);
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Calling onLoadChildren() failed for id=" + str + " package=" + connectionRecord.pkg);
                    }
                }
            }
        };
        this.mCurConnection = connectionRecord2;
        if (bundle3 == null) {
            onLoadChildren(str22, c03991);
        } else {
            onLoadChildren(str22, c03991, bundle3);
        }
        this.mCurConnection = null;
        if (!c03991.isDone()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connectionRecord2.pkg + " id=" + str22);
        }
    }

    List<MediaBrowserCompat.MediaItem> applyOptions(List<MediaBrowserCompat.MediaItem> list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i != -1 || i2 != -1) {
            int i3 = i2 * i;
            int i4 = i3 + i2;
            if (i < 0 || i2 < 1 || i3 >= list.size()) {
                return Collections.emptyList();
            }
            if (i4 > list.size()) {
                i4 = list.size();
            }
            return list.subList(i3, i4);
        }
        return list;
    }

    /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$2 */
    class C04002 extends Result<MediaBrowserCompat.MediaItem> {
        final /* synthetic */ ResultReceiver val$receiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04002(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            resultReceiver = resultReceiver;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
        public void onResultSent(MediaBrowserCompat.MediaItem mediaItem) {
            if ((getFlags() & 2) != 0) {
                resultReceiver.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaItem);
            resultReceiver.send(0, bundle);
        }
    }

    void performLoadItem(String str, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        C04002 c04002 = new Result<MediaBrowserCompat.MediaItem>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.2
            final /* synthetic */ ResultReceiver val$receiver;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04002(Object str2, ResultReceiver resultReceiver2) {
                super(str2);
                resultReceiver = resultReceiver2;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(MediaBrowserCompat.MediaItem mediaItem) {
                if ((getFlags() & 2) != 0) {
                    resultReceiver.send(-1, null);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, mediaItem);
                resultReceiver.send(0, bundle);
            }
        };
        this.mCurConnection = connectionRecord;
        onLoadItem(str2, c04002);
        this.mCurConnection = null;
        if (!c04002.isDone()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + str2);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$3 */
    class C04013 extends Result<List<MediaBrowserCompat.MediaItem>> {
        final /* synthetic */ ResultReceiver val$receiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04013(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            resultReceiver = resultReceiver;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
        public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
            if ((getFlags() & 4) != 0 || list == null) {
                resultReceiver.send(-1, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
            resultReceiver.send(0, bundle);
        }
    }

    void performSearch(String str, Bundle bundle, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        C04013 c04013 = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.3
            final /* synthetic */ ResultReceiver val$receiver;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04013(Object str2, ResultReceiver resultReceiver2) {
                super(str2);
                resultReceiver = resultReceiver2;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(List<MediaBrowserCompat.MediaItem> list) {
                if ((getFlags() & 4) != 0 || list == null) {
                    resultReceiver.send(-1, null);
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS, (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                resultReceiver.send(0, bundle2);
            }
        };
        this.mCurConnection = connectionRecord;
        onSearch(str2, bundle, c04013);
        this.mCurConnection = null;
        if (!c04013.isDone()) {
            throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=" + str2);
        }
    }

    /* renamed from: android.support.v4.media.MediaBrowserServiceCompat$4 */
    class C04024 extends Result<Bundle> {
        final /* synthetic */ ResultReceiver val$receiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04024(Object obj, ResultReceiver resultReceiver) {
            super(obj);
            resultReceiver = resultReceiver;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
        public void onResultSent(Bundle bundle) {
            resultReceiver.send(0, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
        void onProgressUpdateSent(Bundle bundle) {
            resultReceiver.send(1, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
        void onErrorSent(Bundle bundle) {
            resultReceiver.send(-1, bundle);
        }
    }

    void performCustomAction(String str, Bundle bundle, ConnectionRecord connectionRecord, ResultReceiver resultReceiver) {
        C04024 c04024 = new Result<Bundle>(str) { // from class: android.support.v4.media.MediaBrowserServiceCompat.4
            final /* synthetic */ ResultReceiver val$receiver;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04024(Object str2, ResultReceiver resultReceiver2) {
                super(str2);
                resultReceiver = resultReceiver2;
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(Bundle bundle2) {
                resultReceiver.send(0, bundle2);
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            void onProgressUpdateSent(Bundle bundle2) {
                resultReceiver.send(1, bundle2);
            }

            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            void onErrorSent(Bundle bundle2) {
                resultReceiver.send(-1, bundle2);
            }
        };
        this.mCurConnection = connectionRecord;
        onCustomAction(str2, bundle, c04024);
        this.mCurConnection = null;
        if (!c04024.isDone()) {
            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str2 + " extras=" + bundle);
        }
    }

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";

        @Deprecated
        public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(@NonNull String str, @Nullable Bundle bundle) {
            if (str == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = str;
            this.mExtras = bundle;
        }

        public String getRootId() {
            return this.mRootId;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }
    }
}
