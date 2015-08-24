/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nn;

public class nm
implements SafeParcelable {
    public static final nn CREATOR = new nn();
    public final int akR;
    public final int akS;
    public final String akT;
    public final String akU;
    public final boolean akV;
    public final String packageName;
    public final int versionCode;

    public nm(int n, String string, int n2, int n3, String string2, String string3, boolean bl) {
        this.versionCode = n;
        this.packageName = string;
        this.akR = n2;
        this.akS = n3;
        this.akT = string2;
        this.akU = string3;
        this.akV = bl;
    }

    public nm(String string, int n, int n2, String string2, String string3, boolean bl) {
        this.versionCode = 1;
        this.packageName = o.i(string);
        this.akR = n;
        this.akS = n2;
        this.akT = string2;
        this.akU = string3;
        this.akV = bl;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof nm)) return false;
        object = (nm)object;
        if (!this.packageName.equals(object.packageName)) return false;
        if (this.akR != object.akR) return false;
        if (this.akS != object.akS) return false;
        if (!n.equal(this.akT, object.akT)) return false;
        if (!n.equal(this.akU, object.akU)) return false;
        if (this.akV == object.akV) return true;
        return false;
    }

    public int hashCode() {
        return n.hashCode(this.packageName, this.akR, this.akS, this.akT, this.akU, this.akV);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("PlayLoggerContext[");
        stringBuilder.append("package=").append(this.packageName).append(',');
        stringBuilder.append("versionCode=").append(this.versionCode).append(',');
        stringBuilder.append("logSource=").append(this.akS).append(',');
        stringBuilder.append("uploadAccount=").append(this.akT).append(',');
        stringBuilder.append("loggingId=").append(this.akU).append(',');
        stringBuilder.append("logAndroidId=").append(this.akV);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        nn.a(this, parcel, n);
    }
}

