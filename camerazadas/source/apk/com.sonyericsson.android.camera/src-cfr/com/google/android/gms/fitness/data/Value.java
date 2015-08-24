/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.u;

public final class Value
implements SafeParcelable {
    public static final Parcelable.Creator<Value> CREATOR = new u();
    private final int BR;
    private final int Th;
    private boolean Tv;
    private float Tw;

    Value(int n) {
        this(1, n, false, 0.0f);
    }

    Value(int n, int n2, boolean bl, float f) {
        this.BR = n;
        this.Th = n2;
        this.Tv = bl;
        this.Tw = f;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a(Value value) {
        if (this.Th != value.Th || this.Tv != value.Tv) return false;
        switch (this.Th) {
            default: {
                if (this.Tw != value.Tw) return false;
                return true;
            }
            case 1: {
                if (this.asInt() == value.asInt()) return true;
                return false;
            }
            case 2: {
                if (this.asFloat() != value.asFloat()) return false;
            }
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public float asFloat() {
        boolean bl = this.Th == 2;
        o.a(bl, "Value is not in float format");
        return this.Tw;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int asInt() {
        boolean bl = true;
        if (this.Th != 1) {
            bl = false;
        }
        o.a(bl, "Value is not in int format");
        return Float.floatToRawIntBits(this.Tw);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof Value && this.a((Value)object)) {
            return true;
        }
        return false;
    }

    public int getFormat() {
        return this.Th;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(Float.valueOf(this.Tw), this.Th, this.Tv);
    }

    public boolean isSet() {
        return this.Tv;
    }

    float ja() {
        return this.Tw;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setFloat(float f) {
        boolean bl = this.Th == 2;
        o.a(bl, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format.");
        this.Tv = true;
        this.Tw = f;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setInt(int n) {
        boolean bl = this.Th == 1;
        o.a(bl, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format.");
        this.Tv = true;
        this.Tw = Float.intBitsToFloat(n);
    }

    public String toString() {
        if (!this.Tv) {
            return "unset";
        }
        switch (this.Th) {
            default: {
                return "unknown";
            }
            case 1: {
                return Integer.toString(this.asInt());
            }
            case 2: 
        }
        return Float.toString(this.asFloat());
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        u.a(this, parcel, n);
    }
}

