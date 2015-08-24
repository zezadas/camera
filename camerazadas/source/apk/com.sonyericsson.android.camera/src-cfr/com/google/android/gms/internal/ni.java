/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nk;
import java.util.Set;

public class ni
implements SafeParcelable {
    public static final nk CREATOR = new nk();
    public final long akH;
    public final byte[] akI;
    public final Bundle akJ;
    public final String tag;
    public final int versionCode;

    ni(int n, long l, String string, byte[] arrby, Bundle bundle) {
        this.versionCode = n;
        this.akH = l;
        this.tag = string;
        this.akI = arrby;
        this.akJ = bundle;
    }

    public /* varargs */ ni(long l, String string, byte[] arrby, String ... arrstring) {
        this.versionCode = 1;
        this.akH = l;
        this.tag = string;
        this.akI = arrby;
        this.akJ = ni.f(arrstring);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static /* varargs */ Bundle f(String ... arrstring) {
        Bundle bundle = null;
        if (arrstring != null) {
            if (arrstring.length % 2 != 0) {
                throw new IllegalArgumentException("extras must have an even number of elements");
            }
            int n = arrstring.length / 2;
            if (n != 0) {
                Bundle bundle2 = new Bundle(n);
                int n2 = 0;
                do {
                    bundle = bundle2;
                    if (n2 >= n) break;
                    bundle2.putString(arrstring[n2 * 2], arrstring[n2 * 2 + 1]);
                    ++n2;
                } while (true);
            }
        }
        return bundle;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("tag=").append(this.tag).append(",");
        stringBuilder.append("eventTime=").append(this.akH).append(",");
        if (!(this.akJ == null || this.akJ.isEmpty())) {
            stringBuilder.append("keyValues=");
            for (String string : this.akJ.keySet()) {
                stringBuilder.append("(").append(string).append(",");
                stringBuilder.append(this.akJ.getString(string)).append(")");
                stringBuilder.append(" ");
            }
        }
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        nk.a(this, parcel, n);
    }
}

