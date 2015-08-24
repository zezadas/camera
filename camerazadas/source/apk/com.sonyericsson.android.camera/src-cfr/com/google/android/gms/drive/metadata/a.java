/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class a<T>
implements MetadataField<T> {
    private final String PB;
    private final Set<String> PC;
    private final Set<String> PD;
    private final int PE;

    protected a(String string, int n) {
        this.PB = o.b(string, (Object)"fieldName");
        this.PC = Collections.singleton(string);
        this.PD = Collections.emptySet();
        this.PE = n;
    }

    protected a(String string, Collection<String> collection, Collection<String> collection2, int n) {
        this.PB = o.b(string, (Object)"fieldName");
        this.PC = Collections.unmodifiableSet(new HashSet<String>(collection));
        this.PD = Collections.unmodifiableSet(new HashSet<String>(collection2));
        this.PE = n;
    }

    @Override
    public final T a(DataHolder dataHolder, int n, int n2) {
        if (this.b(dataHolder, n, n2)) {
            return this.c(dataHolder, n, n2);
        }
        return null;
    }

    protected abstract void a(Bundle var1, T var2);

    @Override
    public final void a(DataHolder dataHolder, MetadataBundle metadataBundle, int n, int n2) {
        o.b(dataHolder, (Object)"dataHolder");
        o.b(metadataBundle, (Object)"bundle");
        metadataBundle.b(this, this.a(dataHolder, n, n2));
    }

    @Override
    public final void a(T t, Bundle bundle) {
        o.b(bundle, (Object)"bundle");
        if (t == null) {
            bundle.putString(this.getName(), null);
            return;
        }
        this.a(bundle, t);
    }

    protected boolean b(DataHolder dataHolder, int n, int n2) {
        Iterator<String> iterator = this.PC.iterator();
        while (iterator.hasNext()) {
            if (!dataHolder.h(iterator.next(), n, n2)) continue;
            return false;
        }
        return true;
    }

    protected abstract T c(DataHolder var1, int var2, int var3);

    @Override
    public final T f(Bundle bundle) {
        o.b(bundle, (Object)"bundle");
        if (bundle.get(this.getName()) != null) {
            return this.g(bundle);
        }
        return null;
    }

    protected abstract T g(Bundle var1);

    @Override
    public final String getName() {
        return this.PB;
    }

    public String toString() {
        return this.PB;
    }
}

