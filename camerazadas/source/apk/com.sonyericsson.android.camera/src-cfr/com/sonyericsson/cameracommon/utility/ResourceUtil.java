/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import org.xmlpull.v1.XmlPullParser;

public class ResourceUtil {
    public static final int INVALID_RESOURCE_ID = -1;
    private static final String PACKAGE_NAME = "com.sonymobile.cameracommon";

    public static String getApplicationLabel(Context object, String string) {
        object = object.getPackageManager();
        try {
            object = (String)object.getApplicationLabel(object.getApplicationInfo(string, 0));
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static boolean getBoolean(Context context, int n) {
        return ResourceUtil.getBoolean(context, "com.sonymobile.cameracommon", n);
    }

    public static boolean getBoolean(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            boolean bl = object.getResourcesForApplication(string).getBoolean(n);
            return bl;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static ColorStateList getColorStateList(Context context, int n) {
        return ResourceUtil.getColorStateList(context, "com.sonymobile.cameracommon", n);
    }

    public static ColorStateList getColorStateList(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            object = object.getResourcesForApplication(string).getColorStateList(n);
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static float getDimension(Context context, int n) {
        return ResourceUtil.getDimension(context, "com.sonymobile.cameracommon", n);
    }

    public static float getDimension(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            float f = object.getResourcesForApplication(string).getDimension(n);
            return f;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static int getDimensionPixelOffset(Context context, int n) {
        return ResourceUtil.getDimensionPixelOffset(context, "com.sonymobile.cameracommon", n);
    }

    public static int getDimensionPixelOffset(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            n = object.getResourcesForApplication(string).getDimensionPixelOffset(n);
            return n;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static int getDimensionPixelSize(Context context, int n) {
        return ResourceUtil.getDimensionPixelSize(context, "com.sonymobile.cameracommon", n);
    }

    public static int getDimensionPixelSize(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            n = object.getResourcesForApplication(string).getDimensionPixelSize(n);
            return n;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static Drawable getDrawable(Context context, int n) {
        return ResourceUtil.getDrawable(context, "com.sonymobile.cameracommon", n);
    }

    public static Drawable getDrawable(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            object = object.getResourcesForApplication(string).getDrawable(n, null);
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static float getFloat(Context context, int n) {
        return Float.valueOf(context.getResources().getString(n)).floatValue();
    }

    public static int getInteger(Context context, int n) {
        return ResourceUtil.getInteger(context, "com.sonymobile.cameracommon", n);
    }

    public static int getInteger(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            n = object.getResourcesForApplication(string).getInteger(n);
            return n;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            throw new RuntimeException();
        }
    }

    public static View getLayout(Context context, int n, ViewGroup viewGroup, LayoutInflater.Factory factory) {
        return ResourceUtil.getLayout(context, "com.sonymobile.cameracommon", n, viewGroup, factory);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static View getLayout(Context object, String string, int n, ViewGroup viewGroup, LayoutInflater.Factory factory) {
        Object object2 = object.getPackageManager();
        try {
            object2 = object2.getResourcesForApplication(string).getLayout(n);
            object = (LayoutInflater)object.createPackageContext(string, 2).getSystemService("layout_inflater");
            if (factory == null) return object.inflate((XmlPullParser)object2, viewGroup);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            return null;
        }
        object.setFactory(factory);
        return object.inflate((XmlPullParser)object2, viewGroup);
    }

    public static int getPixelFromRate(Context context, int n, int n2) {
        return (int)((float)n2 * ResourceUtil.getFloat(context, n) / 100.0f);
    }

    public static String getString(Context context, int n) {
        return ResourceUtil.getString(context, "com.sonymobile.cameracommon", n);
    }

    public static String getString(Context object, String string, int n) {
        object = object.getPackageManager();
        try {
            object = object.getResourcesForApplication(string).getString(n);
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.e("ResourceUtil", "", var0_1);
            return null;
        }
    }
}

