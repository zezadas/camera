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
import com.google.android.gms.internal.bg;
import java.util.Date;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    private final bg ld;

    static;

    private AdRequest(Builder var1);

    /* synthetic */ AdRequest(Builder var1,  var2);

    bg V();

    public Date getBirthday();

    public String getContentUrl();

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> var1);

    public int getGender();

    public Set<String> getKeywords();

    public Location getLocation();

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> var1);

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> var1);

    public boolean isTestDevice(Context var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private final bg.a le;

        public Builder();

        static /* synthetic */ bg.a a(Builder var0);

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> var1, Bundle var2);

        public Builder addKeyword(String var1);

        public Builder addNetworkExtras(NetworkExtras var1);

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> var1, Bundle var2);

        public Builder addTestDevice(String var1);

        public AdRequest build();

        public Builder setBirthday(Date var1);

        public Builder setContentUrl(String var1);

        public Builder setGender(int var1);

        public Builder setLocation(Location var1);

        public Builder tagForChildDirectedTreatment(boolean var1);
    }

}

