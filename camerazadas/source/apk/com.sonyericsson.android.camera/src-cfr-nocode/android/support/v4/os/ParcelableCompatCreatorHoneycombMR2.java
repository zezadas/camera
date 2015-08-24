/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

/*
 * Exception performing whole class analysis.
 */
class ParcelableCompatCreatorHoneycombMR2<T>
implements Parcelable.ClassLoaderCreator<T> {
    private final ParcelableCompatCreatorCallbacks<T> mCallbacks;

    public ParcelableCompatCreatorHoneycombMR2(ParcelableCompatCreatorCallbacks<T> var1);

    @Override
    public T createFromParcel(Parcel var1);

    @Override
    public T createFromParcel(Parcel var1, ClassLoader var2);

    @Override
    public T[] newArray(int var1);
}

