/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public abstract class a<T>
implements MetadataField<T> {
    private final String PB;
    private final Set<String> PC;
    private final Set<String> PD;
    private final int PE;

    protected a(String var1, int var2);

    protected a(String var1, Collection<String> var2, Collection<String> var3, int var4);

    @Override
    public final T a(DataHolder var1, int var2, int var3);

    protected abstract void a(Bundle var1, T var2);

    @Override
    public final void a(DataHolder var1, MetadataBundle var2, int var3, int var4);

    @Override
    public final void a(T var1, Bundle var2);

    protected boolean b(DataHolder var1, int var2, int var3);

    protected abstract T c(DataHolder var1, int var2, int var3);

    @Override
    public final T f(Bundle var1);

    protected abstract T g(Bundle var1);

    @Override
    public final String getName();

    public String toString();
}

