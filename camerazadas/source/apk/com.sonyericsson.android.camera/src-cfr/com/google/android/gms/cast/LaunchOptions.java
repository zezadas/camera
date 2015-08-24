/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.c;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ik;
import java.util.Locale;

public class LaunchOptions
implements SafeParcelable {
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new c();
    private final int BR;
    private boolean Fb;
    private String Fc;

    public LaunchOptions() {
        this(1, false, ik.b(Locale.getDefault()));
    }

    LaunchOptions(int n, boolean bl, String string) {
        this.BR = n;
        this.Fb = bl;
        this.Fc = string;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof LaunchOptions)) {
            return false;
        }
        object = (LaunchOptions)object;
        if (this.Fb != object.Fb) return false;
        if (ik.a(this.Fc, object.Fc)) return true;
        return false;
    }

    public String getLanguage() {
        return this.Fc;
    }

    public boolean getRelaunchIfRunning() {
        return this.Fb;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.Fb, this.Fc);
    }

    public void setLanguage(String string) {
        this.Fc = string;
    }

    public void setRelaunchIfRunning(boolean bl) {
        this.Fb = bl;
    }

    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", this.Fb, this.Fc);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }

    public static final class Builder {
        private LaunchOptions Fd = new LaunchOptions();

        public LaunchOptions build() {
            return this.Fd;
        }

        public Builder setLocale(Locale locale) {
            this.Fd.setLanguage(ik.b(locale));
            return this;
        }

        public Builder setRelaunchIfRunning(boolean bl) {
            this.Fd.setRelaunchIfRunning(bl);
            return this;
        }
    }

}

