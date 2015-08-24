/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gi;

@ez
public abstract class gg {
    private final Runnable mk;
    private volatile Thread wf;

    public gg() {
        this.mk = new Runnable(){

            @Override
            public final void run() {
                gg.this.wf = Thread.currentThread();
                gg.this.co();
            }
        };
    }

    public final void cancel() {
        this.onStop();
        if (this.wf != null) {
            this.wf.interrupt();
        }
    }

    public abstract void co();

    public abstract void onStop();

    public final void start() {
        gi.a(this.mk);
    }

}

