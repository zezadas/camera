/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads;

import android.content.Context;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@Deprecated
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER;
    public static final int FULL_WIDTH = -1;
    public static final AdSize IAB_BANNER;
    public static final AdSize IAB_LEADERBOARD;
    public static final AdSize IAB_MRECT;
    public static final AdSize IAB_WIDE_SKYSCRAPER;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    public static final AdSize SMART_BANNER;
    private final com.google.android.gms.ads.AdSize c;

    static;

    public AdSize(int var1, int var2);

    private AdSize(int var1, int var2, String var3);

    public AdSize(com.google.android.gms.ads.AdSize var1);

    public boolean equals(Object var1);

    public /* varargs */ AdSize findBestSize(AdSize ... var1);

    public int getHeight();

    public int getHeightInPixels(Context var1);

    public int getWidth();

    public int getWidthInPixels(Context var1);

    public int hashCode();

    public boolean isAutoHeight();

    public boolean isCustomAdSize();

    public boolean isFullWidth();

    public boolean isSizeAppropriate(int var1, int var2);

    public String toString();
}

