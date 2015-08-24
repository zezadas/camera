/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.wearable.DataItem;

public interface DataEvent
extends Freezable<DataEvent> {
    public static final int TYPE_CHANGED = 1;
    public static final int TYPE_DELETED = 2;

    public DataItem getDataItem();

    public int getType();
}

