/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class BaseImplementation {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static void a(Result result) {
        if (!(result instanceof Releasable)) return;
        try {
            ((Releasable)result).release();
            return;
        }
        catch (RuntimeException var1_1) {
            Log.w("GoogleApi", "Unable to release " + result, var1_1);
            return;
        }
    }

    public static abstract class AbstractPendingResult<R extends Result>
    implements b<R>,
    PendingResult<R> {
        private final Object Ir = new Object();
        private final ArrayList<PendingResult.a> Is = new ArrayList();
        private ResultCallback<R> It;
        private volatile R Iu;
        private volatile boolean Iv;
        private boolean Iw;
        private boolean Ix;
        private j Iy;
        protected CallbackHandler<R> mHandler;
        private final CountDownLatch mg = new CountDownLatch(1);

        AbstractPendingResult() {
        }

        public AbstractPendingResult(Looper looper) {
            this.mHandler = new CallbackHandler(looper);
        }

        public AbstractPendingResult(CallbackHandler<R> callbackHandler) {
            this.mHandler = callbackHandler;
        }

        private void c(R object) {
            this.Iu = object;
            this.Iy = null;
            this.mg.countDown();
            object = this.Iu.getStatus();
            if (this.It != null) {
                this.mHandler.removeTimeoutMessages();
                if (!this.Iw) {
                    this.mHandler.sendResultCallback(this.It, this.gf());
                }
            }
            Iterator<PendingResult.a> iterator = this.Is.iterator();
            while (iterator.hasNext()) {
                iterator.next().n((Status)object);
            }
            this.Is.clear();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        private R gf() {
            Object object = this.Ir;
            synchronized (object) {
                boolean bl = !this.Iv;
                o.a(bl, "Result has already been consumed.");
                o.a(this.isReady(), "Result is not ready.");
                R r = this.Iu;
                this.gg();
                return r;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        private void gh() {
            Object object = this.Ir;
            synchronized (object) {
                if (!this.isReady()) {
                    this.b(this.c(Status.Jw));
                    this.Ix = true;
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        private void gi() {
            Object object = this.Ir;
            synchronized (object) {
                if (!this.isReady()) {
                    this.b(this.c(Status.Jy));
                    this.Ix = true;
                }
                return;
            }
        }

        protected void a(CallbackHandler<R> callbackHandler) {
            this.mHandler = callbackHandler;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public final void a(PendingResult.a a) {
            boolean bl = !this.Iv;
            o.a(bl, "Result has already been consumed.");
            Object object = this.Ir;
            synchronized (object) {
                if (this.isReady()) {
                    a.n(this.Iu.getStatus());
                } else {
                    this.Is.add(a);
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        protected final void a(j j) {
            Object object = this.Ir;
            synchronized (object) {
                this.Iy = j;
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public final R await() {
            boolean bl = true;
            boolean bl2 = Looper.myLooper() != Looper.getMainLooper();
            o.a(bl2, "await must not be called on the UI thread");
            bl2 = !this.Iv ? bl : false;
            o.a(bl2, "Result has already been consumed");
            try {
                this.mg.await();
            }
            catch (InterruptedException var3_3) {
                this.gh();
            }
            o.a(this.isReady(), "Result is not ready.");
            return this.gf();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public final R await(long l, TimeUnit timeUnit) {
            boolean bl = true;
            boolean bl2 = l <= 0 || Looper.myLooper() != Looper.getMainLooper();
            o.a(bl2, "await must not be called on the UI thread when time is greater than zero.");
            bl2 = !this.Iv ? bl : false;
            o.a(bl2, "Result has already been consumed.");
            try {
                if (!this.mg.await(l, timeUnit)) {
                    this.gi();
                }
            }
            catch (InterruptedException var3_3) {
                this.gh();
            }
            o.a(this.isReady(), "Result is not ready.");
            return this.gf();
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public final void b(R r) {
            boolean bl = true;
            Object object = this.Ir;
            synchronized (object) {
                if (this.Ix || this.Iw) {
                    BaseImplementation.a(r);
                    return;
                }
                boolean bl2 = !this.isReady();
                o.a(bl2, "Results have already been set");
                bl2 = !this.Iv ? bl : false;
                o.a(bl2, "Result has already been consumed");
                this.c(r);
                return;
            }
        }

        protected abstract R c(Status var1);

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void cancel() {
            Object object = this.Ir;
            synchronized (object) {
                if (this.Iw || this.Iv) {
                    return;
                }
                j j = this.Iy;
                if (j != null) {
                    try {
                        this.Iy.cancel();
                    }
                    catch (RemoteException var2_3) {}
                }
                BaseImplementation.a(this.Iu);
                this.It = null;
                this.Iw = true;
                this.c(this.c(Status.Jz));
                return;
            }
        }

        protected void gg() {
            this.Iv = true;
            this.Iu = null;
            this.It = null;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public boolean isCanceled() {
            Object object = this.Ir;
            synchronized (object) {
                return this.Iw;
            }
        }

        public final boolean isReady() {
            if (this.mg.getCount() == 0) {
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public final void setResultCallback(ResultCallback<R> resultCallback) {
            boolean bl = !this.Iv;
            o.a(bl, "Result has already been consumed.");
            Object object = this.Ir;
            synchronized (object) {
                if (this.isCanceled()) {
                    return;
                }
                if (this.isReady()) {
                    this.mHandler.sendResultCallback(resultCallback, this.gf());
                } else {
                    this.It = resultCallback;
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public final void setResultCallback(ResultCallback<R> resultCallback, long l, TimeUnit timeUnit) {
            boolean bl = true;
            boolean bl2 = !this.Iv;
            o.a(bl2, "Result has already been consumed.");
            bl2 = this.mHandler != null ? bl : false;
            o.a(bl2, "CallbackHandler has not been set before calling setResultCallback.");
            Object object = this.Ir;
            synchronized (object) {
                if (this.isCanceled()) {
                    return;
                }
                if (this.isReady()) {
                    this.mHandler.sendResultCallback(resultCallback, this.gf());
                } else {
                    this.It = resultCallback;
                    this.mHandler.sendTimeoutResultCallback(this, timeUnit.toMillis(l));
                }
                return;
            }
        }
    }

    public static class CallbackHandler<R extends Result>
    extends Handler {
        public static final int CALLBACK_ON_COMPLETE = 1;
        public static final int CALLBACK_ON_TIMEOUT = 2;

        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        protected void deliverResultCallback(ResultCallback<R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
                return;
            }
            catch (RuntimeException var1_2) {
                BaseImplementation.a(r);
                throw var1_2;
            }
        }

        @Override
        public void handleMessage(Message object) {
            switch (object.what) {
                default: {
                    Log.wtf("GoogleApi", "Don't know how to handle this message.");
                    return;
                }
                case 1: {
                    object = (Pair)object.obj;
                    this.deliverResultCallback((ResultCallback)object.first, (Result)object.second);
                    return;
                }
                case 2: 
            }
            ((AbstractPendingResult)object.obj).gi();
        }

        public void removeTimeoutMessages() {
            this.removeMessages(2);
        }

        public void sendResultCallback(ResultCallback<R> resultCallback, R r) {
            this.sendMessage(this.obtainMessage(1, new Pair<ResultCallback<R>, R>(resultCallback, r)));
        }

        public void sendTimeoutResultCallback(AbstractPendingResult<R> abstractPendingResult, long l) {
            this.sendMessageDelayed(this.obtainMessage(2, abstractPendingResult), l);
        }
    }

    public static abstract class a<R extends Result, A extends Api.a>
    extends AbstractPendingResult<R>
    implements b.c<A> {
        private final Api.c<A> Ip;
        private b.a Iz;

        protected a(Api.c<A> c) {
            this.Ip = o.i(c);
        }

        private void a(RemoteException remoteException) {
            this.m(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        protected abstract void a(A var1) throws RemoteException;

        @Override
        public void a(b.a a) {
            this.Iz = a;
        }

        @Override
        public final void b(A a) throws DeadObjectException {
            if (this.mHandler == null) {
                this.a(new CallbackHandler<R>(a.getLooper()));
            }
            try {
                this.a(a);
                return;
            }
            catch (DeadObjectException var1_2) {
                this.a(var1_2);
                throw var1_2;
            }
            catch (RemoteException var1_3) {
                this.a(var1_3);
                return;
            }
        }

        @Override
        public final Api.c<A> ge() {
            return this.Ip;
        }

        @Override
        protected void gg() {
            super.gg();
            if (this.Iz != null) {
                this.Iz.b(this);
                this.Iz = null;
            }
        }

        @Override
        public int gj() {
            return 0;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public final void m(Status status) {
            boolean bl = !status.isSuccess();
            o.b(bl, (Object)"Failed result must not be success");
            this.b(this.c(status));
        }
    }

    public static interface b<R> {
        public void b(R var1);
    }

}

