/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.CustomProperty;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class AppVisibleCustomProperties
implements SafeParcelable,
Iterable<CustomProperty> {
    public static final Parcelable.Creator<AppVisibleCustomProperties> CREATOR = new com.google.android.gms.drive.metadata.internal.a();
    public static final AppVisibleCustomProperties PG = new a().im();
    final int BR;
    final List<CustomProperty> PH;

    AppVisibleCustomProperties(int n, Collection<CustomProperty> collection) {
        this.BR = n;
        o.i(collection);
        this.PH = new ArrayList<CustomProperty>(collection);
    }

    private AppVisibleCustomProperties(Collection<CustomProperty> collection) {
        this(1, collection);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public Iterator<CustomProperty> iterator() {
        return this.PH.iterator();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        com.google.android.gms.drive.metadata.internal.a.a(this, parcel, n);
    }

    public static class a {
        private final Map<CustomPropertyKey, CustomProperty> PI = new HashMap<CustomPropertyKey, CustomProperty>();

        public AppVisibleCustomProperties im() {
            return new AppVisibleCustomProperties(this.PI.values());
        }
    }

}

