/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.bg;
import java.util.Date;
import java.util.Set;

public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = bg.DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    private final bg ld;

    private AdRequest(Builder builder) {
        this.ld = new bg(builder.le);
    }

    bg V() {
        return this.ld;
    }

    public Date getBirthday() {
        return this.ld.getBirthday();
    }

    public String getContentUrl() {
        return this.ld.getContentUrl();
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> class_) {
        return this.ld.getCustomEventExtrasBundle(class_);
    }

    public int getGender() {
        return this.ld.getGender();
    }

    public Set<String> getKeywords() {
        return this.ld.getKeywords();
    }

    public Location getLocation() {
        return this.ld.getLocation();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> class_) {
        return this.ld.getNetworkExtras(class_);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> class_) {
        return this.ld.getNetworkExtrasBundle(class_);
    }

    public boolean isTestDevice(Context context) {
        return this.ld.isTestDevice(context);
    }

    public static final class Builder {
        private final bg.a le = new bg.a();

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> class_, Bundle bundle) {
            this.le.b(class_, bundle);
            return this;
        }

        public Builder addKeyword(String string) {
            this.le.r(string);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.le.a(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> class_, Bundle bundle) {
            this.le.a(class_, bundle);
            return this;
        }

        public Builder addTestDevice(String string) {
            this.le.s(string);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        public Builder setBirthday(Date date) {
            this.le.a(date);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setContentUrl(String string) {
            o.b(string, (Object)"Content URL must be non-null.");
            o.b(string, (Object)"Content URL must be non-empty.");
            boolean bl = string.length() <= 512;
            o.b(bl, "Content URL must not exceed %d in length.  Provided length was %d.", 512, string.length());
            this.le.t(string);
            return this;
        }

        public Builder setGender(int n) {
            this.le.g(n);
            return this;
        }

        public Builder setLocation(Location location) {
            this.le.a(location);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean bl) {
            this.le.h(bl);
            return this;
        }
    }

}

