/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.gr;

public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final int FULL_WIDTH = -1;
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize SMART_BANNER;
    public static final AdSize WIDE_SKYSCRAPER;
    private final int lf;
    private final int lg;
    private final String lh;

    static {
        WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
        SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    }

    /*
     * Enabled aggressive block sorting
     */
    public AdSize(int n, int n2) {
        StringBuilder stringBuilder = new StringBuilder();
        String string = n == -1 ? "FULL" : String.valueOf(n);
        stringBuilder = stringBuilder.append(string).append("x");
        string = n2 == -2 ? "AUTO" : String.valueOf(n2);
        this(n, n2, stringBuilder.append(string).append("_as").toString());
    }

    AdSize(int n, int n2, String string) {
        if (n < 0 && n != -1) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + n);
        }
        if (n2 < 0 && n2 != -2) {
            throw new IllegalArgumentException("Invalid height for AdSize: " + n2);
        }
        this.lf = n;
        this.lg = n2;
        this.lh = string;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof AdSize)) {
            return false;
        }
        object = (AdSize)object;
        if (this.lf != object.lf) return false;
        if (this.lg != object.lg) return false;
        if (this.lh.equals(object.lh)) return true;
        return false;
    }

    public int getHeight() {
        return this.lg;
    }

    public int getHeightInPixels(Context context) {
        if (this.lg == -2) {
            return ay.b(context.getResources().getDisplayMetrics());
        }
        return gr.a(context, this.lg);
    }

    public int getWidth() {
        return this.lf;
    }

    public int getWidthInPixels(Context context) {
        if (this.lf == -1) {
            return ay.a(context.getResources().getDisplayMetrics());
        }
        return gr.a(context, this.lf);
    }

    public int hashCode() {
        return this.lh.hashCode();
    }

    public boolean isAutoHeight() {
        if (this.lg == -2) {
            return true;
        }
        return false;
    }

    public boolean isFullWidth() {
        if (this.lf == -1) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.lh;
    }
}

