/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Date;

public class d
extends com.google.android.gms.drive.metadata.d<Date> {
    public d(String string, int n) {
        super(string, n);
    }

    @Override
    protected void a(Bundle bundle, Date date) {
        bundle.putLong(this.getName(), date.getTime());
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.f(dataHolder, n, n2);
    }

    protected Date f(DataHolder dataHolder, int n, int n2) {
        return new Date(dataHolder.a(this.getName(), n, n2));
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.i(bundle);
    }

    protected Date i(Bundle bundle) {
        return new Date(bundle.getLong(this.getName()));
    }
}

