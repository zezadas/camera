/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jg;
import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.ji;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class jf
implements SafeParcelable,
ji.b<String, Integer> {
    public static final jg CREATOR = new jg();
    private final int BR;
    private final HashMap<String, Integer> Mt;
    private final HashMap<Integer, String> Mu;
    private final ArrayList<a> Mv;

    public jf() {
        this.BR = 1;
        this.Mt = new HashMap();
        this.Mu = new HashMap();
        this.Mv = null;
    }

    jf(int n, ArrayList<a> arrayList) {
        this.BR = n;
        this.Mt = new HashMap();
        this.Mu = new HashMap();
        this.Mv = null;
        this.b(arrayList);
    }

    private void b(ArrayList<a> object) {
        for (a a : object) {
            this.h(a.Mw, a.Mx);
        }
    }

    public String a(Integer object) {
        String string;
        object = string = this.Mu.get(object);
        if (string == null) {
            object = string;
            if (this.Mt.containsKey("gms_unknown")) {
                object = "gms_unknown";
            }
        }
        return object;
    }

    @Override
    public /* synthetic */ Object convertBack(Object object) {
        return this.a((Integer)object);
    }

    @Override
    public int describeContents() {
        jg jg = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    public jf h(String string, int n) {
        this.Mt.put(string, n);
        this.Mu.put(n, string);
        return this;
    }

    ArrayList<a> hc() {
        ArrayList<a> arrayList = new ArrayList<a>();
        for (String string : this.Mt.keySet()) {
            arrayList.add(new a(string, this.Mt.get(string)));
        }
        return arrayList;
    }

    @Override
    public int hd() {
        return 7;
    }

    @Override
    public int he() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        jg jg = CREATOR;
        jg.a(this, parcel, n);
    }

    public static final class a
    implements SafeParcelable {
        public static final jh CREATOR = new jh();
        final String Mw;
        final int Mx;
        final int versionCode;

        a(int n, String string, int n2) {
            this.versionCode = n;
            this.Mw = string;
            this.Mx = n2;
        }

        a(String string, int n) {
            this.versionCode = 1;
            this.Mw = string;
            this.Mx = n;
        }

        @Override
        public int describeContents() {
            jh jh = CREATOR;
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            jh jh = CREATOR;
            jh.a(this, parcel, n);
        }
    }

}

