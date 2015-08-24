/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MetadataBundle
implements SafeParcelable {
    public static final Parcelable.Creator<MetadataBundle> CREATOR;
    final int BR;
    final Bundle PL;

    static;

    MetadataBundle(int var1, Bundle var2);

    private MetadataBundle(Bundle var1);

    public static <T> MetadataBundle a(MetadataField<T> var0, T var1);

    public static MetadataBundle a(MetadataBundle var0);

    public static MetadataBundle io();

    public <T> T a(MetadataField<T> var1);

    public <T> void b(MetadataField<T> var1, T var2);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int hashCode();

    public Set<MetadataField<?>> ip();

    public void setContext(Context var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

