/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mk;
import com.google.android.gms.internal.mp;
import com.google.android.gms.internal.mt;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class mj
implements SafeParcelable {
    public static final mk CREATOR = new mk();
    final int BR;
    final List<mp> afr;
    private final String afs;
    private final boolean aft;
    final List<mt> afu;
    final List<String> afv;
    private final Set<mp> afw;
    private final Set<mt> afx;
    private final Set<String> afy;

    /*
     * Enabled aggressive block sorting
     */
    mj(int n, List<mp> list, String string, boolean bl, List<mt> list2, List<String> list3) {
        void var2_11;
        void var3_15;
        void var6_18;
        void var2_4;
        void var2_9;
        void var2_7;
        void var5_17;
        void var4_16;
        this.BR = n;
        if (list == null) {
            List list4 = Collections.emptyList();
        } else {
            List list5 = Collections.unmodifiableList(list);
        }
        this.afr = var2_4;
        void var2_5 = var3_15;
        if (var3_15 == null) {
            String string2 = "";
        }
        this.afs = var2_7;
        this.aft = var4_16;
        if (var5_17 == null) {
            List list6 = Collections.emptyList();
        } else {
            List list7 = Collections.unmodifiableList(var5_17);
        }
        this.afu = var2_9;
        if (var6_18 == null) {
            List list8 = Collections.emptyList();
        } else {
            List list9 = Collections.unmodifiableList(var6_18);
        }
        this.afv = var2_11;
        this.afw = mj.f(this.afr);
        this.afx = mj.f(this.afu);
        this.afy = mj.f(this.afv);
    }

    private static <E> Set<E> f(List<E> list) {
        if (list.isEmpty()) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet(new HashSet<E>(list));
    }

    @Override
    public int describeContents() {
        mk mk = CREATOR;
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
        if (!(object instanceof mj)) {
            return false;
        }
        object = (mj)object;
        if (!this.afw.equals(object.afw)) return false;
        if (this.aft != object.aft) return false;
        if (!this.afx.equals(object.afx)) return false;
        if (this.afy.equals(object.afy)) return true;
        return false;
    }

    public int hashCode() {
        return n.hashCode(this.afw, this.aft, this.afx, this.afy);
    }

    @Deprecated
    public String mi() {
        return this.afs;
    }

    public boolean mj() {
        return this.aft;
    }

    public String toString() {
        return n.h(this).a("types", this.afw).a("placeIds", this.afy).a("requireOpenNow", this.aft).a("requestedUserDataTypes", this.afx).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mk mk = CREATOR;
        mk.a(this, parcel, n);
    }
}

