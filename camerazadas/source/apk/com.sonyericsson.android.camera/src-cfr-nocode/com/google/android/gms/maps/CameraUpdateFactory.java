/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.graphics.Point;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public final class CameraUpdateFactory {
    private static ICameraUpdateFactoryDelegate aim;

    private CameraUpdateFactory();

    static void a(ICameraUpdateFactoryDelegate var0);

    private static ICameraUpdateFactoryDelegate mp();

    public static CameraUpdate newCameraPosition(CameraPosition var0);

    public static CameraUpdate newLatLng(LatLng var0);

    public static CameraUpdate newLatLngBounds(LatLngBounds var0, int var1);

    public static CameraUpdate newLatLngBounds(LatLngBounds var0, int var1, int var2, int var3);

    public static CameraUpdate newLatLngZoom(LatLng var0, float var1);

    public static CameraUpdate scrollBy(float var0, float var1);

    public static CameraUpdate zoomBy(float var0);

    public static CameraUpdate zoomBy(float var0, Point var1);

    public static CameraUpdate zoomIn();

    public static CameraUpdate zoomOut();

    public static CameraUpdate zoomTo(float var0);
}

