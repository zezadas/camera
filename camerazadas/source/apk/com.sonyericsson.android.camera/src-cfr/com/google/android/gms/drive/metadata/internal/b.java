/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.a;

public class b
extends a<Boolean> {
    public b(String string, int n) {
        super(string, n);
    }

    @Override
    protected void a(Bundle bundle, Boolean bl) {
        bundle.putBoolean(this.getName(), bl);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.e(dataHolder, n, n2);
    }

    protected Boolean e(DataHolder dataHolder, int n, int n2) {
        return dataHolder.d(this.getName(), n, n2);
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.h(bundle);
    }

    protected Boolean h(Bundle bundle) {
        return bundle.getBoolean(this.getName());
    }
}

