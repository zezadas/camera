/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.CustomProperty;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AppVisibleCustomProperties
implements SafeParcelable,
Iterable<CustomProperty> {
    public static final Parcelable.Creator<AppVisibleCustomProperties> CREATOR;
    public static final AppVisibleCustomProperties PG;
    final int BR;
    final List<CustomProperty> PH;

    static;

    AppVisibleCustomProperties(int var1, Collection<CustomProperty> var2);

    private AppVisibleCustomProperties(Collection<CustomProperty> var1);

    /* synthetic */ AppVisibleCustomProperties(Collection var1,  var2);

    @Override
    public int describeContents();

    @Override
    public Iterator<CustomProperty> iterator();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private final Map<CustomPropertyKey, CustomProperty> PI;

        public a();

        public AppVisibleCustomProperties im();
    }

}

