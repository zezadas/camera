/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.a;

public class f
extends a<Integer> {
    public f(String string, int n) {
        super(string, n);
    }

    @Override
    protected void a(Bundle bundle, Integer n) {
        bundle.putInt(this.getName(), n);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.g(dataHolder, n, n2);
    }

    protected Integer g(DataHolder dataHolder, int n, int n2) {
        return dataHolder.b(this.getName(), n, n2);
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.j(bundle);
    }

    protected Integer j(Bundle bundle) {
        return bundle.getInt(this.getName());
    }
}

