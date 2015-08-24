/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.je;
import com.google.android.gms.internal.jf;
import com.google.android.gms.internal.ji;

public class jd
implements SafeParcelable {
    public static final je CREATOR = new je();
    private final int BR;
    private final jf Ms;

    jd(int n, jf jf) {
        this.BR = n;
        this.Ms = jf;
    }

    private jd(jf jf) {
        this.BR = 1;
        this.Ms = jf;
    }

    public static jd a(ji.b<?, ?> b) {
        if (b instanceof jf) {
            return new jd((jf)b);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    @Override
    public int describeContents() {
        je je = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    jf ha() {
        return this.Ms;
    }

    public ji.b<?, ?> hb() {
        if (this.Ms != null) {
            return this.Ms;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        je je = CREATOR;
        je.a(this, parcel, n);
    }
}

