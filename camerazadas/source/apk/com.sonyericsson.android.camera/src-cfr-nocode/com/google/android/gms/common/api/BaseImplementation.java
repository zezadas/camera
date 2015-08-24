/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.j;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis ignored.
 */
public class BaseImplementation {
    public BaseImplementation();

    static void a(Result var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class AbstractPendingResult<R extends Result>
    implements b<R>,
    PendingResult<R> {
        private final Object Ir;
        private final ArrayList<PendingResult.a> Is;
        private ResultCallback<R> It;
        private volatile R Iu;
        private volatile boolean Iv;
        private boolean Iw;
        private boolean Ix;
        private j Iy;
        protected CallbackHandler<R> mHandler;
        private final CountDownLatch mg;

        AbstractPendingResult();

        public AbstractPendingResult(Looper var1);

        public AbstractPendingResult(CallbackHandler<R> var1);

        static /* synthetic */ void a(AbstractPendingResult var0);

        private void c(R var1);

        private R gf();

        private void gh();

        private void gi();

        protected void a(CallbackHandler<R> var1);

        @Override
        public final void a(PendingResult.a var1);

        protected final void a(j var1);

        @Override
        public final R await();

        @Override
        public final R await(long var1, TimeUnit var3);

        @Override
        public final void b(R var1);

        protected abstract R c(Status var1);

        @Override
        public void cancel();

        protected void gg();

        @Override
        public boolean isCanceled();

        public final boolean isReady();

        @Override
        public final void setResultCallback(ResultCallback<R> var1);

        @Override
        public final void setResultCallback(ResultCallback<R> var1, long var2, TimeUnit var4);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class CallbackHandler<R extends Result>
    extends Handler {
        public static final int CALLBACK_ON_COMPLETE = 1;
        public static final int CALLBACK_ON_TIMEOUT = 2;

        public CallbackHandler();

        public CallbackHandler(Looper var1);

        protected void deliverResultCallback(ResultCallback<R> var1, R var2);

        @Override
        public void handleMessage(Message var1);

        public void removeTimeoutMessages();

        public void sendResultCallback(ResultCallback<R> var1, R var2);

        public void sendTimeoutResultCallback(AbstractPendingResult<R> var1, long var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class a<R extends Result, A extends Api.a>
    extends AbstractPendingResult<R>
    implements b.c<A> {
        private final Api.c<A> Ip;
        private b.a Iz;

        protected a(Api.c<A> var1);

        private void a(RemoteException var1);

        protected abstract void a(A var1) throws RemoteException;

        @Override
        public void a(b.a var1);

        @Override
        public final void b(A var1) throws DeadObjectException;

        @Override
        public final Api.c<A> ge();

        @Override
        protected void gg();

        @Override
        public int gj();

        @Override
        public final void m(Status var1);
    }

    public static interface b<R> {
        public void b(R var1);
    }

}

