/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class e<T extends SafeParcelable>
extends DataBuffer<T> {
    private static final String[] JZ = new String[]{"data"};
    private final Parcelable.Creator<T> Ka;

    public e(DataHolder dataHolder, Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.Ka = creator;
    }

    public T aq(int n) {
        Object object = this.II.f("data", n, 0);
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall((byte[])object, 0, object.length);
        parcel.setDataPosition(0);
        object = (SafeParcelable)this.Ka.createFromParcel(parcel);
        parcel.recycle();
        return (T)object;
    }

    @Override
    public /* synthetic */ Object get(int n) {
        return this.aq(n);
    }
}

