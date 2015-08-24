/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.i;
import com.google.android.gms.internal.kw;

public final class Device
implements SafeParcelable {
    public static final Parcelable.Creator<Device> CREATOR = new i();
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

    Device(int n, String string, String string2, String string3, String string4, int n2, int n3) {
        this.BR = n;
        this.SZ = o.i(string);
        this.Ta = o.i(string2);
        this.Sx = "";
        this.Tb = o.i(string4);
        this.FD = n2;
        this.Tc = n3;
    }

    public Device(String string, String string2, String string3, int n) {
        this(string, string2, "", string3, n, 0);
    }

    public Device(String string, String string2, String string3, String string4, int n) {
        this(string, string2, string4, n);
    }

    public Device(String string, String string2, String string3, String string4, int n, int n2) {
        this(1, string, string2, "", string4, n, n2);
    }

    private static String M(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int N(Context context) {
        int n;
        int n2 = n = 0;
        switch (Device.P(context)) {
            default: {
                if (!Device.R(context)) return 2;
                n2 = 1;
            }
            case 8: 
            case 9: {
                return n2;
            }
            case 10: 
        }
        n2 = n;
        if (!Device.O(context)) return n2;
        return 3;
    }

    public static boolean O(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 15) == 6) {
            return true;
        }
        return false;
    }

    private static int P(Context context) {
        return Device.Q(context) % 1000 / 100 + 5;
    }

    private static int Q(Context context) {
        try {
            int n = context.getPackageManager().getPackageInfo((String)"com.google.android.gms", (int)0).versionCode;
            return n;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            Log.w("Fitness", "Could not find package info for Google Play Services");
            return -1;
        }
    }

    private static boolean R(Context context) {
        if (((TelephonyManager)context.getSystemService("phone")).getPhoneType() != 0) {
            return true;
        }
        return false;
    }

    private boolean a(Device device) {
        if (n.equal(this.SZ, device.SZ) && n.equal(this.Ta, device.Ta) && n.equal(this.Sx, device.Sx) && n.equal(this.Tb, device.Tb) && this.FD == device.FD && this.Tc == device.Tc) {
            return true;
        }
        return false;
    }

    public static Device getLocalDevice(Context object) {
        int n = Device.N((Context)object);
        object = Device.M((Context)object);
        return new Device(Build.MANUFACTURER, Build.MODEL, Build.VERSION.RELEASE, (String)object, n, 2);
    }

    private boolean iS() {
        if (this.iR() == 1) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof Device && this.a((Device)object)) {
            return true;
        }
        return false;
    }

    public String getManufacturer() {
        return this.SZ;
    }

    public String getModel() {
        return this.Ta;
    }

    String getStreamIdentifier() {
        return String.format("%s:%s:%s", this.SZ, this.Ta, this.Tb);
    }

    public int getType() {
        return this.FD;
    }

    public String getUid() {
        return this.Tb;
    }

    public String getVersion() {
        return this.Sx;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.SZ, this.Ta, this.Sx, this.Tb, this.FD);
    }

    public int iR() {
        return this.Tc;
    }

    Device iT() {
        return new Device(kw.bt(this.SZ), kw.bt(this.Ta), kw.bt(this.Sx), this.Tb, this.FD);
    }

    public String iU() {
        if (kw.jc() || this.iS()) {
            return this.Tb;
        }
        return kw.bt(this.Tb);
    }

    public String toString() {
        return String.format("Device{%s:%s:%s:%s}", this.getStreamIdentifier(), this.Sx, this.FD, this.Tc);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        i.a(this, parcel, n);
    }
}

