/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.a;

public class g
extends a<Long> {
    public g(String string, int n) {
        super(string, n);
    }

    @Override
    protected void a(Bundle bundle, Long l) {
        bundle.putLong(this.getName(), l);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.h(dataHolder, n, n2);
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.k(bundle);
    }

    protected Long h(DataHolder dataHolder, int n, int n2) {
        return dataHolder.a(this.getName(), n, n2);
    }

    protected Long k(Bundle bundle) {
        return bundle.getLong(this.getName());
    }
}

