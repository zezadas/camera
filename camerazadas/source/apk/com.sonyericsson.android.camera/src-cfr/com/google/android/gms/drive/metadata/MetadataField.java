/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public interface MetadataField<T> {
    public T a(DataHolder var1, int var2, int var3);

    public void a(DataHolder var1, MetadataBundle var2, int var3, int var4);

    public void a(T var1, Bundle var2);

    public T f(Bundle var1);

    public String getName();
}

