/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.content.Context;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

public class i {
    private String Dd;
    private String[] alF;
    private String alG;
    private String alH;
    private String alI;
    private PlusCommonExtras alK;
    private final ArrayList<String> alL = new ArrayList();
    private String[] alM;

    public i(Context context) {
        this.alH = context.getPackageName();
        this.alG = context.getPackageName();
        this.alK = new PlusCommonExtras();
        this.alL.add("https://www.googleapis.com/auth/plus.login");
    }

    public i ch(String string) {
        this.Dd = string;
        return this;
    }

    public /* varargs */ i g(String ... arrstring) {
        this.alL.clear();
        this.alL.addAll(Arrays.asList(arrstring));
        return this;
    }

    public /* varargs */ i h(String ... arrstring) {
        this.alM = arrstring;
        return this;
    }

    public i np() {
        this.alL.clear();
        return this;
    }

    public h nq() {
        if (this.Dd == null) {
            this.Dd = "<<default account>>";
        }
        String[] arrstring = this.alL.toArray(new String[this.alL.size()]);
        return new h(this.Dd, arrstring, this.alM, this.alF, this.alG, this.alH, this.alI, this.alK);
    }
}

