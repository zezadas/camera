/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/*
 * Exception performing whole class analysis ignored.
 */
public class ResourceUtil {
    public static final int INVALID_RESOURCE_ID = -1;
    private static final String PACKAGE_NAME = "com.sonymobile.cameracommon";

    public ResourceUtil();

    public static String getApplicationLabel(Context var0, String var1);

    public static boolean getBoolean(Context var0, int var1);

    public static boolean getBoolean(Context var0, String var1, int var2);

    public static ColorStateList getColorStateList(Context var0, int var1);

    public static ColorStateList getColorStateList(Context var0, String var1, int var2);

    public static float getDimension(Context var0, int var1);

    public static float getDimension(Context var0, String var1, int var2);

    public static int getDimensionPixelOffset(Context var0, int var1);

    public static int getDimensionPixelOffset(Context var0, String var1, int var2);

    public static int getDimensionPixelSize(Context var0, int var1);

    public static int getDimensionPixelSize(Context var0, String var1, int var2);

    public static Drawable getDrawable(Context var0, int var1);

    public static Drawable getDrawable(Context var0, String var1, int var2);

    public static float getFloat(Context var0, int var1);

    public static int getInteger(Context var0, int var1);

    public static int getInteger(Context var0, String var1, int var2);

    public static View getLayout(Context var0, int var1, ViewGroup var2, LayoutInflater.Factory var3);

    private static View getLayout(Context var0, String var1, int var2, ViewGroup var3, LayoutInflater.Factory var4);

    public static int getPixelFromRate(Context var0, int var1, int var2);

    public static String getString(Context var0, int var1);

    public static String getString(Context var0, String var1, int var2);
}

