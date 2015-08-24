/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/*
 * Exception performing whole class analysis.
 */
public final class c<L> {
    private final c<L> Js;
    private volatile L mListener;

    c(Looper var1, L var2);

    public void a(b<L> var1);

    void b(b<L> var1);

    public void clear();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class a
    extends Handler {
        final /* synthetic */ c Jt;

        public a(c var1, Looper var2);

        @Override
        public void handleMessage(Message var1);
    }

    public static interface b<L> {
        public void d(L var1);

        public void gr();
    }

}

