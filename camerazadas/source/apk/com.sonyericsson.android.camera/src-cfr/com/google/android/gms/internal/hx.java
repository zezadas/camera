/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.hm;
import com.google.android.gms.internal.hw;

public abstract class hx<T>
extends hw.a {
    protected BaseImplementation.b<T> CH;

    public hx(BaseImplementation.b<T> b) {
        this.CH = b;
    }

    @Override
    public void a(Status status) {
    }

    @Override
    public void a(Status status, ParcelFileDescriptor parcelFileDescriptor) {
    }

    @Override
    public void a(Status status, boolean bl) {
    }

    @Override
    public void a(hm.b b) {
    }
}

