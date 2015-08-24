/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.ip;
import com.google.android.gms.internal.ir;
import java.io.IOException;

public abstract class ii {
    protected final ip Go;
    private final String Gp;
    private ir Gq;

    protected ii(String string, String string2, String string3) {
        ik.aF(string);
        this.Gp = string;
        this.Go = new ip(string2);
        if (!TextUtils.isEmpty((CharSequence)string3)) {
            this.Go.aK(string3);
        }
    }

    public final void a(ir ir) {
        this.Gq = ir;
        if (this.Gq == null) {
            this.fA();
        }
    }

    protected final void a(String string, long l, String string2) throws IOException {
        this.Go.a("Sending text message: %s to: %s", string, string2);
        this.Gq.a(this.Gp, string, l, string2);
    }

    public void aD(String string) {
    }

    public void b(long l, int n) {
    }

    public void fA() {
    }

    protected final long fz() {
        return this.Gq.fx();
    }

    public final String getNamespace() {
        return this.Gp;
    }
}

