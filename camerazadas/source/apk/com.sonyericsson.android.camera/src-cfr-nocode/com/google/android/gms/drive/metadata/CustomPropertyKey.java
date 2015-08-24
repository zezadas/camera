/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.regex.Pattern;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CustomPropertyKey
implements SafeParcelable {
    public static final Parcelable.Creator<CustomPropertyKey> CREATOR;
    private static final Pattern PF;
    final int BR;
    final String JO;
    final int mVisibility;

    static;

    CustomPropertyKey(int var1, String var2, int var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getKey();

    public int getVisibility();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

