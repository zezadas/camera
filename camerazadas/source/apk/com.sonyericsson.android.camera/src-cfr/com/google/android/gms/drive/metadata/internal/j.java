/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.a;
import java.util.Collection;

public abstract class j<T extends Parcelable>
extends a<T> {
    public j(String string, Collection<String> collection, Collection<String> collection2, int n) {
        super(string, collection, collection2, n);
    }

    @Override
    protected void a(Bundle bundle, T t) {
        bundle.putParcelable(this.getName(), (Parcelable)t);
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.m(bundle);
    }

    protected T m(Bundle bundle) {
        return bundle.getParcelable(this.getName());
    }
}

