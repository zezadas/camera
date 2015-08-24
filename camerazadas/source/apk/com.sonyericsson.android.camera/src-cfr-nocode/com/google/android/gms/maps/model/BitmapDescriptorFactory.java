/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.internal.a;

public final class BitmapDescriptorFactory {
    public static final float HUE_AZURE = 210.0f;
    public static final float HUE_BLUE = 240.0f;
    public static final float HUE_CYAN = 180.0f;
    public static final float HUE_GREEN = 120.0f;
    public static final float HUE_MAGENTA = 300.0f;
    public static final float HUE_ORANGE = 30.0f;
    public static final float HUE_RED = 0.0f;
    public static final float HUE_ROSE = 330.0f;
    public static final float HUE_VIOLET = 270.0f;
    public static final float HUE_YELLOW = 60.0f;
    private static a ajA;

    private BitmapDescriptorFactory();

    public static void a(a var0);

    public static BitmapDescriptor defaultMarker();

    public static BitmapDescriptor defaultMarker(float var0);

    public static BitmapDescriptor fromAsset(String var0);

    public static BitmapDescriptor fromBitmap(Bitmap var0);

    public static BitmapDescriptor fromFile(String var0);

    public static BitmapDescriptor fromPath(String var0);

    public static BitmapDescriptor fromResource(int var0);

    private static a mN();
}

