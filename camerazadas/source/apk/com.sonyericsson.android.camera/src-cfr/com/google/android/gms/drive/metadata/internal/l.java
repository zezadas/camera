/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.a;

public class l
extends a<String> {
    public l(String string, int n) {
        super(string, n);
    }

    @Override
    protected void a(Bundle bundle, String string) {
        bundle.putString(this.getName(), string);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.i(dataHolder, n, n2);
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.n(bundle);
    }

    protected String i(DataHolder dataHolder, int n, int n2) {
        return dataHolder.c(this.getName(), n, n2);
    }

    protected String n(Bundle bundle) {
        return bundle.getString(this.getName());
    }
}

