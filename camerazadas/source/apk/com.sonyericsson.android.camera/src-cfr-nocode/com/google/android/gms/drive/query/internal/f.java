/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.b;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.List;

public interface f<F> {
    public <T> F b(b<T> var1, T var2);

    public <T> F b(Operator var1, MetadataField<T> var2, T var3);

    public F b(Operator var1, List<F> var2);

    public F d(MetadataField<?> var1);

    public <T> F d(MetadataField<T> var1, T var2);

    public F is();

    public F j(F var1);
}

