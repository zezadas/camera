/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class c {
    public static <T extends SafeParcelable> T a(Intent var0, String var1, Parcelable.Creator<T> var2);

    public static <T extends SafeParcelable> T a(byte[] var0, Parcelable.Creator<T> var1);

    public static <T extends SafeParcelable> void a(T var0, Intent var1, String var2);

    public static <T extends SafeParcelable> byte[] a(T var0);
}

