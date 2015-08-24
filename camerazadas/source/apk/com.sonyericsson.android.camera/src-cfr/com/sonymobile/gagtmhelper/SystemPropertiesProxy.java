/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.Context;

final class SystemPropertiesProxy {
    private SystemPropertiesProxy() {
    }

    public static String get(Context object, String string) throws IllegalArgumentException {
        try {
            object = object.getClassLoader().loadClass("android.os.SystemProperties");
            object = (String)object.getMethod("get", String.class).invoke(object, string);
            return object;
        }
        catch (ClassNotFoundException var0_1) {
            return "";
        }
        catch (InvocationTargetException var0_2) {
            return "";
        }
        catch (IllegalAccessException var0_3) {
            return "";
        }
        catch (NoSuchMethodException var0_4) {
            return "";
        }
    }
}

