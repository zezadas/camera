/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

/*
 * Exception performing whole class analysis ignored.
 */
public class ParcelableCompat {
    public ParcelableCompat();

    public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class CompatCreator<T>
    implements Parcelable.Creator<T> {
        final ParcelableCompatCreatorCallbacks<T> mCallbacks;

        public CompatCreator(ParcelableCompatCreatorCallbacks<T> var1);

        @Override
        public T createFromParcel(Parcel var1);

        @Override
        public T[] newArray(int var1);
    }

}

