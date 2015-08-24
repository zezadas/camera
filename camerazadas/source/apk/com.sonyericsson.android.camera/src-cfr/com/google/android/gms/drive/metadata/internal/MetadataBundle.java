/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.v;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.e;
import com.google.android.gms.drive.metadata.internal.h;
import com.google.android.gms.internal.kd;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class MetadataBundle
implements SafeParcelable {
    public static final Parcelable.Creator<MetadataBundle> CREATOR = new h();
    final int BR;
    final Bundle PL;

    MetadataBundle(int n, Bundle object) {
        this.BR = n;
        this.PL = o.i(object);
        this.PL.setClassLoader(this.getClass().getClassLoader());
        object = new ArrayList();
        for (String string : this.PL.keySet()) {
            if (e.bj(string) != null) continue;
            object.add(string);
            v.p("MetadataBundle", "Ignored unknown metadata field in bundle: " + string);
        }
        for (Object object2 : object) {
            this.PL.remove((String)object2);
        }
    }

    private MetadataBundle(Bundle bundle) {
        this(1, bundle);
    }

    public static <T> MetadataBundle a(MetadataField<T> metadataField, T t) {
        MetadataBundle metadataBundle = MetadataBundle.io();
        metadataBundle.b(metadataField, t);
        return metadataBundle;
    }

    public static MetadataBundle a(MetadataBundle metadataBundle) {
        return new MetadataBundle(new Bundle(metadataBundle.PL));
    }

    public static MetadataBundle io() {
        return new MetadataBundle(new Bundle());
    }

    public <T> T a(MetadataField<T> metadataField) {
        return metadataField.f(this.PL);
    }

    public <T> void b(MetadataField<T> metadataField, T t) {
        if (e.bj(metadataField.getName()) == null) {
            throw new IllegalArgumentException("Unregistered field: " + metadataField.getName());
        }
        metadataField.a(t, this.PL);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof MetadataBundle)) {
            return false;
        }
        object = (MetadataBundle)object;
        Set<String> set = this.PL.keySet();
        if (!set.equals(object.PL.keySet())) {
            return false;
        }
        for (String string : set) {
            if (n.equal(this.PL.get(string), object.PL.get(string))) continue;
            return false;
        }
        return true;
    }

    public int hashCode() {
        Iterator<String> iterator = this.PL.keySet().iterator();
        int n = 1;
        while (iterator.hasNext()) {
            String string = iterator.next();
            n = this.PL.get(string).hashCode() + n * 31;
        }
        return n;
    }

    public Set<MetadataField<?>> ip() {
        HashSet hashSet = new HashSet();
        Iterator<String> iterator = this.PL.keySet().iterator();
        while (iterator.hasNext()) {
            hashSet.add(e.bj(iterator.next()));
        }
        return hashSet;
    }

    public void setContext(Context context) {
        a a = this.a(kd.Ql);
        if (a != null) {
            a.a(context.getCacheDir());
        }
    }

    public String toString() {
        return "MetadataBundle [values=" + this.PL + "]";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        h.a(this, parcel, n);
    }
}

