/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER;
    public static final AdSize FULL_BANNER;
    public static final int FULL_WIDTH = -1;
    public static final AdSize LARGE_BANNER;
    public static final AdSize LEADERBOARD;
    public static final AdSize MEDIUM_RECTANGLE;
    public static final AdSize SMART_BANNER;
    public static final AdSize WIDE_SKYSCRAPER;
    private final int lf;
    private final int lg;
    private final String lh;

    static;

    public AdSize(int var1, int var2);

    AdSize(int var1, int var2, String var3);

    public boolean equals(Object var1);

    public int getHeight();

    public int getHeightInPixels(Context var1);

    public int getWidth();

    public int getWidthInPixels(Context var1);

    public int hashCode();

    public boolean isAutoHeight();

    public boolean isFullWidth();

    public String toString();
}

