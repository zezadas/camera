/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.b;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ik;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class CastDevice
implements SafeParcelable {
    public static final Parcelable.Creator<CastDevice> CREATOR = new b();
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

    private CastDevice() {
        this(3, null, null, null, null, null, -1, new ArrayList<WebImage>(), 0, -1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    CastDevice(int n, String object, String string, String string2, String string3, String string4, int n2, List<WebImage> list, int n3, int n4) {
        this.BR = n;
        this.ER = object;
        this.ES = string;
        if (this.ES != null) {
            try {
                object = InetAddress.getByName(this.ES);
                if (object instanceof Inet4Address) {
                    this.ET = (Inet4Address)object;
                }
            }
            catch (UnknownHostException var2_3) {
                this.ET = null;
            }
        }
        this.EU = string2;
        this.EV = string3;
        this.EW = string4;
        this.EX = n2;
        this.EY = list;
        this.EZ = n3;
        this.Fa = n4;
    }

    public static CastDevice getFromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(CastDevice.class.getClassLoader());
        return (CastDevice)bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (object == this) return true;
        if (!(object instanceof CastDevice)) {
            return false;
        }
        object = (CastDevice)object;
        if (this.getDeviceId() == null) {
            if (object.getDeviceId() == null) return true;
            return false;
        }
        if (!ik.a(this.ER, object.ER) || !ik.a(this.ET, object.ET) || !ik.a(this.EV, object.EV) || !ik.a(this.EU, object.EU) || !ik.a(this.EW, object.EW) || this.EX != object.EX || !ik.a(this.EY, object.EY) || this.EZ != object.EZ || this.Fa != object.Fa) return false;
        return true;
    }

    public int getCapabilities() {
        return this.EZ;
    }

    public String getDeviceId() {
        return this.ER;
    }

    public String getDeviceVersion() {
        return this.EW;
    }

    public String getFriendlyName() {
        return this.EU;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public WebImage getIcon(int n, int n2) {
        WebImage webImage = null;
        if (this.EY.isEmpty()) {
            return null;
        }
        if (n <= 0) return this.EY.get(0);
        if (n2 <= 0) {
            return this.EY.get(0);
        }
        Iterator<WebImage> iterator = this.EY.iterator();
        WebImage webImage2 = null;
        while (iterator.hasNext()) {
            WebImage webImage3 = iterator.next();
            int n3 = webImage3.getWidth();
            int n4 = webImage3.getHeight();
            if (n3 >= n && n4 >= n2) {
                if (webImage2 != null && (webImage2.getWidth() <= n3 || webImage2.getHeight() <= n4)) continue;
                webImage2 = webImage3;
                continue;
            }
            if (n3 >= n || n4 >= n2 || webImage != null && (webImage.getWidth() >= n3 || webImage.getHeight() >= n4)) continue;
            webImage = webImage3;
        }
        if (webImage == null) return this.EY.get(0);
        return webImage;
    }

    public List<WebImage> getIcons() {
        return Collections.unmodifiableList(this.EY);
    }

    public Inet4Address getIpAddress() {
        return this.ET;
    }

    public String getModelName() {
        return this.EV;
    }

    public int getServicePort() {
        return this.EX;
    }

    public int getStatus() {
        return this.Fa;
    }

    int getVersionCode() {
        return this.BR;
    }

    public boolean hasIcons() {
        if (!this.EY.isEmpty()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.ER == null) {
            return 0;
        }
        return this.ER.hashCode();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean isSameDevice(CastDevice castDevice) {
        if (castDevice == null) {
            return false;
        }
        if (this.getDeviceId() != null) return ik.a(this.getDeviceId(), castDevice.getDeviceId());
        if (castDevice.getDeviceId() != null) return false;
        return true;
    }

    public void putInBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
    }

    public String toString() {
        return String.format("\"%s\" (%s)", this.EU, this.ER);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

