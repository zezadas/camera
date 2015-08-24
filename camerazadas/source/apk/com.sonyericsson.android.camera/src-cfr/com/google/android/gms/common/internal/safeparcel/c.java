/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class c {
    public static <T extends SafeParcelable> T a(Intent intent, String string, Parcelable.Creator<T> creator) {
        if ((intent = (Intent)intent.getByteArrayExtra(string)) == null) {
            return null;
        }
        return c.a((byte[])intent, creator);
    }

    public static <T extends SafeParcelable> T a(byte[] object, Parcelable.Creator<T> creator) {
        o.i(creator);
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall((byte[])object, 0, object.length);
        parcel.setDataPosition(0);
        object = (SafeParcelable)creator.createFromParcel(parcel);
        parcel.recycle();
        return (T)object;
    }

    public static <T extends SafeParcelable> void a(T t, Intent intent, String string) {
        intent.putExtra(string, c.a(t));
    }

    public static <T extends SafeParcelable> byte[] a(T object) {
        Parcel parcel = Parcel.obtain();
        object.writeToParcel(parcel, 0);
        object = parcel.marshall();
        parcel.recycle();
        return object;
    }
}

