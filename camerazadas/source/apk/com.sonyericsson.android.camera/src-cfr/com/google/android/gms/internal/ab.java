/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.u;

@ez
public class ab {
    private final a mj;
    private final Runnable mk;
    private av ml;
    private boolean mm = false;
    private boolean mn = false;
    private long mo = 0;

    public ab(u u) {
        this(u, new a(gr.wC));
    }

    ab(final u u, a a) {
        this.mj = a;
        this.mk = new Runnable(){
            private final WeakReference<u> mp;

            @Override
            public void run() {
                ab.this.mm = false;
                u u2 = this.mp.get();
                if (u2 != null) {
                    u2.b(ab.this.ml);
                }
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     */
    public void a(av av, long l) {
        if (this.mm) {
            gs.W("An ad refresh is already scheduled.");
            return;
        } else {
            this.ml = av;
            this.mm = true;
            this.mo = l;
            if (this.mn) return;
            {
                gs.U("Scheduling ad refresh " + l + " milliseconds from now.");
                this.mj.postDelayed(this.mk, l);
                return;
            }
        }
    }

    public boolean ay() {
        return this.mm;
    }

    public void c(av av) {
        this.a(av, 60000);
    }

    public void cancel() {
        this.mm = false;
        this.mj.removeCallbacks(this.mk);
    }

    public void pause() {
        this.mn = true;
        if (this.mm) {
            this.mj.removeCallbacks(this.mk);
        }
    }

    public void resume() {
        this.mn = false;
        if (this.mm) {
            this.mm = false;
            this.a(this.ml, this.mo);
        }
    }

    public static class a {
        private final Handler mHandler;

        public a(Handler handler) {
            this.mHandler = handler;
        }

        public boolean postDelayed(Runnable runnable, long l) {
            return this.mHandler.postDelayed(runnable, l);
        }

        public void removeCallbacks(Runnable runnable) {
            this.mHandler.removeCallbacks(runnable);
        }
    }

}

