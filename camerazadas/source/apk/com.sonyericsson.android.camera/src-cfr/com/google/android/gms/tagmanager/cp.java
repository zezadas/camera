/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.co;
import com.google.android.gms.tagmanager.o;
import com.google.android.gms.tagmanager.r;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class cp
implements o.e {
    private final String aoc;
    private String aoy;
    private bg<c.j> aqt;
    private r aqu;
    private final ScheduledExecutorService aqw;
    private final a aqx;
    private ScheduledFuture<?> aqy;
    private boolean mClosed;
    private final Context mContext;

    public cp(Context context, String string, r r) {
        this(context, string, r, null, null);
    }

    cp(Context object, String string, r r, b b, a a) {
        this.aqu = r;
        this.mContext = object;
        this.aoc = string;
        object = b;
        if (b == null) {
            object = new b(){

                @Override
                public ScheduledExecutorService oQ() {
                    return Executors.newSingleThreadScheduledExecutor();
                }
            };
        }
        this.aqw = object.oQ();
        if (a == null) {
            this.aqx = new a(){

                @Override
                public co a(r r) {
                    return new co(cp.this.mContext, cp.this.aoc, r);
                }
            };
            return;
        }
        this.aqx = a;
    }

    private co cK(String string) {
        co co = this.aqx.a(this.aqu);
        co.a(this.aqt);
        co.cu(this.aoy);
        co.cJ(string);
        return co;
    }

    private void oP() {
        synchronized (this) {
            if (this.mClosed) {
                throw new IllegalStateException("called method after closed");
            }
            return;
        }
    }

    @Override
    public void a(bg<c.j> bg) {
        synchronized (this) {
            this.oP();
            this.aqt = bg;
            return;
        }
    }

    @Override
    public void cu(String string) {
        synchronized (this) {
            this.oP();
            this.aoy = string;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void e(long l, String string) {
        synchronized (this) {
            bh.V("loadAfterDelay: containerId=" + this.aoc + " delay=" + l);
            this.oP();
            if (this.aqt == null) {
                throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
            }
            if (this.aqy != null) {
                this.aqy.cancel(false);
            }
            this.aqy = this.aqw.schedule(this.cK(string), l, TimeUnit.MILLISECONDS);
            return;
        }
    }

    @Override
    public void release() {
        synchronized (this) {
            this.oP();
            if (this.aqy != null) {
                this.aqy.cancel(false);
            }
            this.aqw.shutdown();
            this.mClosed = true;
            return;
        }
    }

    static interface a {
        public co a(r var1);
    }

    static interface b {
        public ScheduledExecutorService oQ();
    }

}

