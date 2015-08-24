/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.cn;
import com.google.android.gms.internal.cq;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.ez;

@ez
public final class co
extends cv.a {
    private final Object mw = new Object();
    private cq.a qm;
    private cn qn;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(cn cn) {
        Object object = this.mw;
        synchronized (object) {
            this.qn = cn;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(cq.a a) {
        Object object = this.mw;
        synchronized (object) {
            this.qm = a;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onAdClicked() {
        Object object = this.mw;
        synchronized (object) {
            if (this.qn != null) {
                this.qn.ae();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onAdClosed() {
        Object object = this.mw;
        synchronized (object) {
            if (this.qn != null) {
                this.qn.af();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onAdFailedToLoad(int n) {
        Object object = this.mw;
        synchronized (object) {
            if (this.qm != null) {
                n = n == 3 ? 1 : 2;
                this.qm.j(n);
                this.qm = null;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onAdLeftApplication() {
        Object object = this.mw;
        synchronized (object) {
            if (this.qn != null) {
                this.qn.ag();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onAdLoaded() {
        Object object = this.mw;
        synchronized (object) {
            if (this.qm != null) {
                this.qm.j(0);
                this.qm = null;
                return;
            }
            if (this.qn != null) {
                this.qn.ai();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onAdOpened() {
        Object object = this.mw;
        synchronized (object) {
            if (this.qn != null) {
                this.qn.ah();
            }
            return;
        }
    }
}

