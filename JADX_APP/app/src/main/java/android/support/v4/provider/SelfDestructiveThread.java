package android.support.v4.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.annotation.GuardedBy;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SelfDestructiveThread {
    private static final int MSG_DESTRUCTION = 0;
    private static final int MSG_INVOKE_RUNNABLE = 1;
    private final int mDestructAfterMillisec;

    @GuardedBy("mLock")
    private Handler mHandler;
    private final int mPriority;

    @GuardedBy("mLock")
    private HandlerThread mThread;
    private final String mThreadName;
    private final Object mLock = new Object();
    private Handler.Callback mCallback = new Handler.Callback() { // from class: android.support.v4.provider.SelfDestructiveThread.1
        C04471() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
        
            return true;
         */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean handleMessage(android.os.Message r4) {
            /*
                r3 = this;
                r2 = 1
                int r0 = r4.what
                switch(r0) {
                    case 0: goto L11;
                    case 1: goto L7;
                    default: goto L6;
                }
            L6:
                return r2
            L7:
                android.support.v4.provider.SelfDestructiveThread r1 = android.support.v4.provider.SelfDestructiveThread.this
                java.lang.Object r0 = r4.obj
                java.lang.Runnable r0 = (java.lang.Runnable) r0
                r1.onInvokeRunnable(r0)
                goto L6
            L11:
                android.support.v4.provider.SelfDestructiveThread r0 = android.support.v4.provider.SelfDestructiveThread.this
                r0.onDestruction()
                goto L6
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.SelfDestructiveThread.C04471.handleMessage(android.os.Message):boolean");
        }
    };

    @GuardedBy("mLock")
    private int mGeneration = 0;

    public interface ReplyCallback<T> {
        void onReply(T t);
    }

    /* renamed from: android.support.v4.provider.SelfDestructiveThread$1 */
    class C04471 implements Handler.Callback {
        C04471() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            /*
                this = this;
                r2 = 1
                int r0 = r4.what
                switch(r0) {
                    case 0: goto L11;
                    case 1: goto L7;
                    default: goto L6;
                }
            L6:
                return r2
            L7:
                android.support.v4.provider.SelfDestructiveThread r1 = android.support.v4.provider.SelfDestructiveThread.this
                java.lang.Object r0 = r4.obj
                java.lang.Runnable r0 = (java.lang.Runnable) r0
                r1.onInvokeRunnable(r0)
                goto L6
            L11:
                android.support.v4.provider.SelfDestructiveThread r0 = android.support.v4.provider.SelfDestructiveThread.this
                r0.onDestruction()
                goto L6
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.provider.SelfDestructiveThread.C04471.handleMessage(android.os.Message):boolean");
        }
    }

    public SelfDestructiveThread(String str, int i, int i2) {
        this.mThreadName = str;
        this.mPriority = i;
        this.mDestructAfterMillisec = i2;
    }

    @VisibleForTesting
    public boolean isRunning() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mThread != null;
        }
        return z;
    }

    @VisibleForTesting
    public int getGeneration() {
        int i;
        synchronized (this.mLock) {
            i = this.mGeneration;
        }
        return i;
    }

    private void post(Runnable runnable) {
        synchronized (this.mLock) {
            if (this.mThread == null) {
                this.mThread = new HandlerThread(this.mThreadName, this.mPriority);
                this.mThread.start();
                this.mHandler = new Handler(this.mThread.getLooper(), this.mCallback);
                this.mGeneration++;
            }
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, runnable));
        }
    }

    /* renamed from: android.support.v4.provider.SelfDestructiveThread$2 */
    class RunnableC04482 implements Runnable {
        final /* synthetic */ Callable val$callable;
        final /* synthetic */ Handler val$callingHandler;
        final /* synthetic */ ReplyCallback val$reply;

        RunnableC04482(Callable callable, Handler handler, ReplyCallback replyCallback) {
            callable = callable;
            handler = handler;
            replyCallback = replyCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = callable.call();
            } catch (Exception e) {
                obj = null;
            }
            handler.post(new Runnable() { // from class: android.support.v4.provider.SelfDestructiveThread.2.1
                final /* synthetic */ Object val$result;

                AnonymousClass1(Object obj2) {
                    obj = obj2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    replyCallback.onReply(obj);
                }
            });
        }

        /* renamed from: android.support.v4.provider.SelfDestructiveThread$2$1 */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ Object val$result;

            AnonymousClass1(Object obj2) {
                obj = obj2;
            }

            @Override // java.lang.Runnable
            public void run() {
                replyCallback.onReply(obj);
            }
        }
    }

    public <T> void postAndReply(Callable<T> callable, ReplyCallback<T> replyCallback) {
        post(new Runnable() { // from class: android.support.v4.provider.SelfDestructiveThread.2
            final /* synthetic */ Callable val$callable;
            final /* synthetic */ Handler val$callingHandler;
            final /* synthetic */ ReplyCallback val$reply;

            RunnableC04482(Callable callable2, Handler handler, ReplyCallback replyCallback2) {
                callable = callable2;
                handler = handler;
                replyCallback = replyCallback2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                try {
                    obj2 = callable.call();
                } catch (Exception e) {
                    obj2 = null;
                }
                handler.post(new Runnable() { // from class: android.support.v4.provider.SelfDestructiveThread.2.1
                    final /* synthetic */ Object val$result;

                    AnonymousClass1(Object obj22) {
                        obj = obj22;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        replyCallback.onReply(obj);
                    }
                });
            }

            /* renamed from: android.support.v4.provider.SelfDestructiveThread$2$1 */
            class AnonymousClass1 implements Runnable {
                final /* synthetic */ Object val$result;

                AnonymousClass1(Object obj22) {
                    obj = obj22;
                }

                @Override // java.lang.Runnable
                public void run() {
                    replyCallback.onReply(obj);
                }
            }
        });
    }

    public <T> T postAndWait(Callable<T> callable, int i) {
        T t;
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        post(new Runnable() { // from class: android.support.v4.provider.SelfDestructiveThread.3
            final /* synthetic */ Callable val$callable;
            final /* synthetic */ Condition val$cond;
            final /* synthetic */ AtomicReference val$holder;
            final /* synthetic */ ReentrantLock val$lock;
            final /* synthetic */ AtomicBoolean val$running;

            RunnableC04493(AtomicReference atomicReference2, Callable callable2, ReentrantLock reentrantLock2, AtomicBoolean atomicBoolean2, Condition newCondition2) {
                atomicReference = atomicReference2;
                callable = callable2;
                reentrantLock = reentrantLock2;
                atomicBoolean = atomicBoolean2;
                newCondition = newCondition2;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception e) {
                }
                reentrantLock.lock();
                try {
                    atomicBoolean.set(false);
                    newCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock2.lock();
        try {
            if (!atomicBoolean2.get()) {
                t = (T) atomicReference2.get();
            } else {
                long nanos = TimeUnit.MILLISECONDS.toNanos(i);
                do {
                    try {
                        nanos = newCondition2.awaitNanos(nanos);
                    } catch (InterruptedException e) {
                    }
                    if (!atomicBoolean2.get()) {
                        t = (T) atomicReference2.get();
                    }
                } while (nanos > 0);
                throw new InterruptedException("timeout");
            }
            return t;
        } finally {
            reentrantLock2.unlock();
        }
    }

    /* renamed from: android.support.v4.provider.SelfDestructiveThread$3 */
    class RunnableC04493 implements Runnable {
        final /* synthetic */ Callable val$callable;
        final /* synthetic */ Condition val$cond;
        final /* synthetic */ AtomicReference val$holder;
        final /* synthetic */ ReentrantLock val$lock;
        final /* synthetic */ AtomicBoolean val$running;

        RunnableC04493(AtomicReference atomicReference2, Callable callable2, ReentrantLock reentrantLock2, AtomicBoolean atomicBoolean2, Condition newCondition2) {
            atomicReference = atomicReference2;
            callable = callable2;
            reentrantLock = reentrantLock2;
            atomicBoolean = atomicBoolean2;
            newCondition = newCondition2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                atomicReference.set(callable.call());
            } catch (Exception e) {
            }
            reentrantLock.lock();
            try {
                atomicBoolean.set(false);
                newCondition.signal();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    void onInvokeRunnable(Runnable runnable) {
        runnable.run();
        synchronized (this.mLock) {
            this.mHandler.removeMessages(0);
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0), this.mDestructAfterMillisec);
        }
    }

    void onDestruction() {
        synchronized (this.mLock) {
            if (!this.mHandler.hasMessages(1)) {
                this.mThread.quit();
                this.mThread = null;
                this.mHandler = null;
            }
        }
    }
}
