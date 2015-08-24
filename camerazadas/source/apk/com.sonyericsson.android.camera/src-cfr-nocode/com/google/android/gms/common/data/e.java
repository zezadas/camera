/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.os.Parcelable;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class e<T extends SafeParcelable>
extends DataBuffer<T> {
    private static final String[] JZ;
    private final Parcelable.Creator<T> Ka;

    static;

    public e(DataHolder var1, Parcelable.Creator<T> var2);

    public T aq(int var1);

    @Override
    public /* synthetic */ Object get(int var1);
}

