/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.apihelper;

public class ApiHelper {
    public static int getIntFieldIfExists(Class<?> class_, String string, Class<?> class_2, int n) {
        try {
            int n2 = class_.getDeclaredField(string).getInt(class_2);
            return n2;
        }
        catch (Exception var0_1) {
            return n;
        }
    }

    private static boolean hasClass(String string) {
        try {
            Class.forName(string);
            return true;
        }
        catch (Throwable var0_1) {
            return false;
        }
    }

    private static boolean hasField(Class<?> class_, String string) {
        try {
            class_.getDeclaredField(string);
            return true;
        }
        catch (NoSuchFieldException var0_1) {
            return false;
        }
    }

    private static boolean hasField(String string, String string2) {
        try {
            boolean bl = ApiHelper.hasField(Class.forName(string), string2);
            return bl;
        }
        catch (Throwable var0_1) {
            return false;
        }
    }

    private static boolean hasMethod(String string, String string2) {
        try {
            Class.forName(string).getDeclaredMethod(string2, new Class[0]);
            return true;
        }
        catch (Throwable var0_1) {
            return false;
        }
    }

    private static /* varargs */ boolean hasMethod(String string, String string2, Class<?> ... arrclass) {
        try {
            Class.forName(string).getDeclaredMethod(string2, arrclass);
            return true;
        }
        catch (Throwable var0_1) {
            return false;
        }
    }

    private static /* varargs */ boolean hasMethod(String object, String string, String ... arrstring) {
        object = Class.forName((String)object);
        Class[] arrclass = new Class[arrstring.length];
        int n = 0;
        do {
            if (n >= arrstring.length) break;
            arrclass[n] = Class.forName(arrstring[n]);
            ++n;
        } while (true);
        try {
            object.getDeclaredMethod(string, arrclass);
            return true;
        }
        catch (Throwable var0_1) {
            return false;
        }
    }

    public static boolean hasSpacialApis() {
        if (ApiHelper.hasClass("android.os.storage.StorageManager") && ApiHelper.hasClass("android.os.storage.StorageVolume") && ApiHelper.hasClass("android.os.storage.StorageManager$StorageType") && ApiHelper.hasMethod("android.os.storage.StorageManager", "getVolumeList") && ApiHelper.hasMethod("android.os.storage.StorageManager", "getVolumePath", "android.os.storage.StorageManager$StorageType") && ApiHelper.hasMethod("android.os.storage.StorageManager", "getVolumeType", new Class[]{String.class}) && ApiHelper.hasMethod("android.os.storage.StorageManager", "getVolumeState", new Class[]{String.class}) && ApiHelper.hasField("com.android.internal.R$id", "message") && ApiHelper.hasClass("com.sonyericsson.provider.SemcMediaStore") && ApiHelper.hasClass("com.sonyericsson.provider.SemcMediaStore$ExtendedFiles$ExtendedFileColumns")) {
            return true;
        }
        return false;
    }
}

