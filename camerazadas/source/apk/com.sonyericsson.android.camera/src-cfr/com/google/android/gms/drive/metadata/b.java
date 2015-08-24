/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.a;
import java.util.Collection;

public abstract class b<T>
extends a<Collection<T>> {
    protected b(String string, Collection<String> collection, Collection<String> collection2, int n) {
        super(string, collection, collection2, n);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.d(dataHolder, n, n2);
    }

    protected Collection<T> d(DataHolder dataHolder, int n, int n2) {
        throw new UnsupportedOperationException("Cannot read collections from a dataHolder.");
    }
}

