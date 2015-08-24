/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.os;

import android.os.Parcel;

public interface ParcelableCompatCreatorCallbacks<T> {
    public T createFromParcel(Parcel var1, ClassLoader var2);

    public T[] newArray(int var1);
}

