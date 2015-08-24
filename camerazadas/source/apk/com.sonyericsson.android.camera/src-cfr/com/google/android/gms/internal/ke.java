/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.j;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class ke
extends j<AppVisibleCustomProperties> {
    public ke(int n) {
        super("customProperties", Collections.singleton("customProperties"), Arrays.asList("customPropertiesExtra"), n);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.l(dataHolder, n, n2);
    }

    protected AppVisibleCustomProperties l(DataHolder dataHolder, int n, int n2) {
        return dataHolder.gy().getSparseParcelableArray("customPropertiesExtra").get(n, (AppVisibleCustomProperties)AppVisibleCustomProperties.PG);
    }
}

