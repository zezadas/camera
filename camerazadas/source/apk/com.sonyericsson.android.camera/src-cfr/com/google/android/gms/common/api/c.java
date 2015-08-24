/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.o;

public final class c<L> {
    private final c<L> Js;
    private volatile L mListener;

    c(Looper looper, L l) {
        this.Js = new a(looper);
        this.mListener = o.b(l, (Object)"Listener must not be null");
    }

    public void a(b<L> object) {
        o.b(object, (Object)"Notifier must not be null");
        object = this.Js.obtainMessage(1, object);
        this.Js.sendMessage((Message)object);
    }

    void b(b<L> b) {
        L l = this.mListener;
        if (l == null) {
            b.gr();
            return;
        }
        try {
            b.d(l);
            return;
        }
        catch (Exception var2_3) {
            Log.w("ListenerHolder", "Notifying listener failed", var2_3);
            b.gr();
            return;
        }
    }

    public void clear() {
        this.mListener = null;
    }

    private final class a
    extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMessage(Message message) {
            boolean bl = true;
            if (message.what != 1) {
                bl = false;
            }
            o.K(bl);
            c.this.b((b)message.obj);
        }
    }

    public static interface b<L> {
        public void d(L var1);

        public void gr();
    }

}

