/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.search;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.bg;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final bg ld;
    private final int xl;
    private final int xm;
    private final int xn;
    private final int xo;
    private final int xp;
    private final int xq;
    private final int xr;
    private final int xs;
    private final String xt;
    private final int xu;
    private final String xv;
    private final int xw;
    private final int xx;
    private final String xy;

    static;

    private SearchAdRequest(Builder var1);

    /* synthetic */ SearchAdRequest(Builder var1,  var2);

    bg V();

    public int getAnchorTextColor();

    public int getBackgroundColor();

    public int getBackgroundGradientBottom();

    public int getBackgroundGradientTop();

    public int getBorderColor();

    public int getBorderThickness();

    public int getBorderType();

    public int getCallButtonColor();

    public String getCustomChannels();

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> var1);

    public int getDescriptionTextColor();

    public String getFontFace();

    public int getHeaderTextColor();

    public int getHeaderTextSize();

    public Location getLocation();

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> var1);

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> var1);

    public String getQuery();

    public boolean isTestDevice(Context var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private final bg.a le;
        private int xl;
        private int xm;
        private int xn;
        private int xo;
        private int xp;
        private int xq;
        private int xr;
        private int xs;
        private String xt;
        private int xu;
        private String xv;
        private int xw;
        private int xx;
        private String xy;

        public Builder();

        static /* synthetic */ int a(Builder var0);

        static /* synthetic */ int b(Builder var0);

        static /* synthetic */ int c(Builder var0);

        static /* synthetic */ int d(Builder var0);

        static /* synthetic */ int e(Builder var0);

        static /* synthetic */ int f(Builder var0);

        static /* synthetic */ int g(Builder var0);

        static /* synthetic */ int h(Builder var0);

        static /* synthetic */ String i(Builder var0);

        static /* synthetic */ int j(Builder var0);

        static /* synthetic */ String k(Builder var0);

        static /* synthetic */ int l(Builder var0);

        static /* synthetic */ int m(Builder var0);

        static /* synthetic */ String n(Builder var0);

        static /* synthetic */ bg.a o(Builder var0);

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> var1, Bundle var2);

        public Builder addNetworkExtras(NetworkExtras var1);

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> var1, Bundle var2);

        public Builder addTestDevice(String var1);

        public SearchAdRequest build();

        public Builder setAnchorTextColor(int var1);

        public Builder setBackgroundColor(int var1);

        public Builder setBackgroundGradient(int var1, int var2);

        public Builder setBorderColor(int var1);

        public Builder setBorderThickness(int var1);

        public Builder setBorderType(int var1);

        public Builder setCallButtonColor(int var1);

        public Builder setCustomChannels(String var1);

        public Builder setDescriptionTextColor(int var1);

        public Builder setFontFace(String var1);

        public Builder setHeaderTextColor(int var1);

        public Builder setHeaderTextSize(int var1);

        public Builder setLocation(Location var1);

        public Builder setQuery(String var1);

        public Builder tagForChildDirectedTreatment(boolean var1);
    }

}

