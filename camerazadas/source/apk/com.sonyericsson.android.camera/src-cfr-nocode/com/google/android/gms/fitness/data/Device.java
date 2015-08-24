/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Device
implements SafeParcelable {
    public static final Parcelable.Creator<Device> CREATOR;
    public static final int TYPE_CHEST_STRAP = 4;
    public static final int TYPE_PHONE = 1;
    public static final int TYPE_SCALE = 5;
    public static final int TYPE_TABLET = 2;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_WATCH = 3;
    private final int BR;
    private final int FD;
    private final String SZ;
    private final String Sx;
    private final String Ta;
    private final String Tb;
    private final int Tc;

    static;

    Device(int var1, String var2, String var3, String var4, String var5, int var6, int var7);

    public Device(String var1, String var2, String var3, int var4);

    public Device(String var1, String var2, String var3, String var4, int var5);

    public Device(String var1, String var2, String var3, String var4, int var5, int var6);

    private static String M(Context var0);

    private static int N(Context var0);

    public static boolean O(Context var0);

    private static int P(Context var0);

    private static int Q(Context var0);

    private static boolean R(Context var0);

    private boolean a(Device var1);

    public static Device getLocalDevice(Context var0);

    private boolean iS();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getManufacturer();

    public String getModel();

    String getStreamIdentifier();

    public int getType();

    public String getUid();

    public String getVersion();

    int getVersionCode();

    public int hashCode();

    public int iR();

    Device iT();

    public String iU();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

