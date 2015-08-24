/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Value
implements SafeParcelable {
    public static final Parcelable.Creator<Value> CREATOR;
    private final int BR;
    private final int Th;
    private boolean Tv;
    private float Tw;

    static;

    Value(int var1);

    Value(int var1, int var2, boolean var3, float var4);

    private boolean a(Value var1);

    public float asFloat();

    public int asInt();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getFormat();

    int getVersionCode();

    public int hashCode();

    public boolean isSet();

    float ja();

    public void setFloat(float var1);

    public void setInt(int var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

