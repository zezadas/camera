/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fl;
import java.util.Collections;
import java.util.List;

@ez
public final class fk
implements SafeParcelable {
    public static final fl CREATOR = new fl();
    public final int errorCode;
    public final int orientation;
    public final List<String> qf;
    public final List<String> qg;
    public final long qj;
    public final String rP;
    public final boolean tF;
    public final String tG;
    public final long tH;
    public final boolean tI;
    public final long tJ;
    public final List<String> tK;
    public final String tL;
    public final long tM;
    public final String tN;
    public final boolean tO;
    public final String tP;
    public final String tQ;
    public final boolean tR;
    public final boolean tS;
    public final boolean tT;
    public final int versionCode;

    public fk(int n) {
        this(10, null, null, null, n, null, -1, false, -1, null, -1, -1, null, -1, null, false, null, null, false, false, false, false);
    }

    public fk(int n, long l) {
        this(10, null, null, null, n, null, -1, false, -1, null, l, -1, null, -1, null, false, null, null, false, false, false, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    fk(int n, String list, String string, List<String> list2, int n2, List<String> list3, long l, boolean bl, long l2, List<String> list4, long l3, int n3, String string2, long l4, String string3, boolean bl2, String string4, String string5, boolean bl3, boolean bl4, boolean bl5, boolean bl6) {
        this.versionCode = n;
        this.rP = list;
        this.tG = string;
        list = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.qf = list;
        this.errorCode = n2;
        list = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.qg = list;
        this.tH = l;
        this.tI = bl;
        this.tJ = l2;
        list = list4 != null ? Collections.unmodifiableList(list4) : null;
        this.tK = list;
        this.qj = l3;
        this.orientation = n3;
        this.tL = string2;
        this.tM = l4;
        this.tN = string3;
        this.tO = bl2;
        this.tP = string4;
        this.tQ = string5;
        this.tR = bl3;
        this.tS = bl4;
        this.tF = bl5;
        this.tT = bl6;
    }

    public fk(String string, String string2, List<String> list, List<String> list2, long l, boolean bl, long l2, List<String> list3, long l3, int n, String string3, long l4, String string4, String string5, boolean bl2, boolean bl3, boolean bl4, boolean bl5) {
        this(10, string, string2, list, -2, list2, l, bl, l2, list3, l3, n, string3, l4, string4, false, null, string5, bl2, bl3, bl4, bl5);
    }

    public fk(String string, String string2, List<String> list, List<String> list2, long l, boolean bl, long l2, List<String> list3, long l3, int n, String string3, long l4, String string4, boolean bl2, String string5, String string6, boolean bl3, boolean bl4, boolean bl5, boolean bl6) {
        this(10, string, string2, list, -2, list2, l, bl, l2, list3, l3, n, string3, l4, string4, bl2, string5, string6, bl3, bl4, bl5, bl6);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        fl.a(this, parcel, n);
    }
}

