/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.az;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;

@ez
public final class ay
implements SafeParcelable {
    public static final az CREATOR = new az();
    public final int height;
    public final int heightPixels;
    public final String of;
    public final boolean og;
    public final ay[] oh;
    public final int versionCode;
    public final int width;
    public final int widthPixels;

    public ay() {
        this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
    }

    ay(int n, String string, int n2, int n3, boolean bl, int n4, int n5, ay[] array) {
        this.versionCode = n;
        this.of = string;
        this.height = n2;
        this.heightPixels = n3;
        this.og = bl;
        this.width = n4;
        this.widthPixels = n5;
        this.oh = array;
    }

    public ay(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    /*
     * Enabled aggressive block sorting
     */
    public ay(Context context, AdSize[] arradSize) {
        int n;
        int n2 = 0;
        AdSize adSize = arradSize[0];
        this.versionCode = 2;
        this.og = false;
        this.width = adSize.getWidth();
        this.height = adSize.getHeight();
        int n3 = this.width == -1 ? 1 : 0;
        boolean bl = this.height == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (n3 != 0) {
            this.widthPixels = ay.a(displayMetrics);
            n = (int)((float)this.widthPixels / displayMetrics.density);
        } else {
            n = this.width;
            this.widthPixels = gr.a(displayMetrics, this.width);
        }
        int n4 = bl ? ay.c(displayMetrics) : this.height;
        this.heightPixels = gr.a(displayMetrics, n4);
        this.of = n3 != 0 || bl ? "" + n + "x" + n4 + "_as" : adSize.toString();
        if (arradSize.length > 1) {
            this.oh = new ay[arradSize.length];
            for (n3 = n2; n3 < arradSize.length; ++n3) {
                this.oh[n3] = new ay(context, arradSize[n3]);
            }
            return;
        } else {
            this.oh = null;
        }
    }

    public ay(ay ay, ay[] array) {
        this(2, ay.of, ay.height, ay.heightPixels, ay.og, ay.width, ay.widthPixels, array);
    }

    public static int a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int b(DisplayMetrics displayMetrics) {
        return (int)((float)ay.c(displayMetrics) * displayMetrics.density);
    }

    private static int c(DisplayMetrics displayMetrics) {
        int n = (int)((float)displayMetrics.heightPixels / displayMetrics.density);
        if (n <= 400) {
            return 32;
        }
        if (n <= 720) {
            return 50;
        }
        return 90;
    }

    public AdSize bc() {
        return a.a(this.width, this.height, this.of);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        az.a(this, parcel, n);
    }
}

