/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ls;
import com.google.android.gms.internal.mb;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ma
implements SafeParcelable {
    public static final mb CREATOR;
    static final List<ls> afh;
    private final int BR;
    LocationRequest UI;
    boolean afi;
    boolean afj;
    boolean afk;
    List<ls> afl;
    final String mTag;

    static;

    ma(int var1, LocationRequest var2, boolean var3, boolean var4, boolean var5, List<ls> var6, String var7);

    private ma(String var1, LocationRequest var2);

    public static ma a(String var0, LocationRequest var1);

    public static ma b(LocationRequest var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

