/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.net.Inet4Address;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CastDevice
implements SafeParcelable {
    public static final Parcelable.Creator<CastDevice> CREATOR;
    private final int BR;
    private String ER;
    String ES;
    private Inet4Address ET;
    private String EU;
    private String EV;
    private String EW;
    private int EX;
    private List<WebImage> EY;
    private int EZ;
    private int Fa;

    static;

    private CastDevice();

    CastDevice(int var1, String var2, String var3, String var4, String var5, String var6, int var7, List<WebImage> var8, int var9, int var10);

    public static CastDevice getFromBundle(Bundle var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getCapabilities();

    public String getDeviceId();

    public String getDeviceVersion();

    public String getFriendlyName();

    public WebImage getIcon(int var1, int var2);

    public List<WebImage> getIcons();

    public Inet4Address getIpAddress();

    public String getModelName();

    public int getServicePort();

    public int getStatus();

    int getVersionCode();

    public boolean hasIcons();

    public int hashCode();

    public boolean isSameDevice(CastDevice var1);

    public void putInBundle(Bundle var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

