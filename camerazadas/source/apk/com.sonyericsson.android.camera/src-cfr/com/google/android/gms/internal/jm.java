/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jl;
import com.google.android.gms.internal.jn;
import com.google.android.gms.internal.jo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class jm
implements SafeParcelable {
    public static final jn CREATOR = new jn();
    private final int BR;
    private final HashMap<String, HashMap<String, ji.a<?, ?>>> MI;
    private final ArrayList<a> MJ;
    private final String MK;

    jm(int n, ArrayList<a> arrayList, String string) {
        this.BR = n;
        this.MJ = null;
        this.MI = jm.c(arrayList);
        this.MK = o.i(string);
        this.hs();
    }

    public jm(Class<? extends ji> class_) {
        this.BR = 1;
        this.MJ = null;
        this.MI = new HashMap();
        this.MK = class_.getCanonicalName();
    }

    private static HashMap<String, HashMap<String, ji.a<?, ?>>> c(ArrayList<a> arrayList) {
        HashMap hashMap = new HashMap();
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            a a = arrayList.get(i);
            hashMap.put(a.className, a.hw());
        }
        return hashMap;
    }

    public void a(Class<? extends ji> class_, HashMap<String, ji.a<?, ?>> hashMap) {
        this.MI.put(class_.getCanonicalName(), hashMap);
    }

    public boolean b(Class<? extends ji> class_) {
        return this.MI.containsKey(class_.getCanonicalName());
    }

    public HashMap<String, ji.a<?, ?>> be(String string) {
        return this.MI.get(string);
    }

    @Override
    public int describeContents() {
        jn jn = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    public void hs() {
        Iterator<String> iterator = this.MI.keySet().iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            object = this.MI.get(object);
            Iterator iterator2 = object.keySet().iterator();
            while (iterator2.hasNext()) {
                ((ji.a)object.get((String)iterator2.next())).a(this);
            }
        }
    }

    public void ht() {
        for (String string : this.MI.keySet()) {
            HashMap hashMap = this.MI.get(string);
            HashMap hashMap2 = new HashMap();
            for (String string2 : hashMap.keySet()) {
                hashMap2.put(string2, hashMap.get(string2).hi());
            }
            this.MI.put(string, hashMap2);
        }
    }

    ArrayList<a> hu() {
        ArrayList<a> arrayList = new ArrayList<a>();
        for (String string : this.MI.keySet()) {
            arrayList.add(new a(string, this.MI.get(string)));
        }
        return arrayList;
    }

    public String hv() {
        return this.MK;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator<String> iterator = this.MI.keySet().iterator();
        while (iterator.hasNext()) {
            Object object = iterator.next();
            stringBuilder.append((String)object).append(":\n");
            object = this.MI.get(object);
            for (String string : object.keySet()) {
                stringBuilder.append("  ").append(string).append(": ");
                stringBuilder.append(object.get(string));
            }
        }
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        jn jn = CREATOR;
        jn.a(this, parcel, n);
    }

    public static class a
    implements SafeParcelable {
        public static final jo CREATOR = new jo();
        final ArrayList<b> ML;
        final String className;
        final int versionCode;

        a(int n, String string, ArrayList<b> arrayList) {
            this.versionCode = n;
            this.className = string;
            this.ML = arrayList;
        }

        a(String string, HashMap<String, ji.a<?, ?>> hashMap) {
            this.versionCode = 1;
            this.className = string;
            this.ML = a.a(hashMap);
        }

        private static ArrayList<b> a(HashMap<String, ji.a<?, ?>> hashMap) {
            if (hashMap == null) {
                return null;
            }
            ArrayList<b> arrayList = new ArrayList<b>();
            for (String string : hashMap.keySet()) {
                arrayList.add(new b(string, hashMap.get(string)));
            }
            return arrayList;
        }

        @Override
        public int describeContents() {
            jo jo = CREATOR;
            return 0;
        }

        HashMap<String, ji.a<?, ?>> hw() {
            HashMap hashMap = new HashMap();
            int n = this.ML.size();
            for (int i = 0; i < n; ++i) {
                b b = this.ML.get(i);
                hashMap.put(b.fv, b.MM);
            }
            return hashMap;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            jo jo = CREATOR;
            jo.a(this, parcel, n);
        }
    }

    public static class b
    implements SafeParcelable {
        public static final jl CREATOR = new jl();
        final ji.a<?, ?> MM;
        final String fv;
        final int versionCode;

        b(int n, String string, ji.a<?, ?> a) {
            this.versionCode = n;
            this.fv = string;
            this.MM = a;
        }

        b(String string, ji.a<?, ?> a) {
            this.versionCode = 1;
            this.fv = string;
            this.MM = a;
        }

        @Override
        public int describeContents() {
            jl jl = CREATOR;
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            jl jl = CREATOR;
            jl.a(this, parcel, n);
        }
    }

}

