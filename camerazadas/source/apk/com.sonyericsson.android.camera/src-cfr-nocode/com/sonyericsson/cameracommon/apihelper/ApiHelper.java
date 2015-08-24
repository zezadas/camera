/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.apihelper;

/*
 * Exception performing whole class analysis ignored.
 */
public class ApiHelper {
    public ApiHelper();

    public static int getIntFieldIfExists(Class<?> var0, String var1, Class<?> var2, int var3);

    private static boolean hasClass(String var0);

    private static boolean hasField(Class<?> var0, String var1);

    private static boolean hasField(String var0, String var1);

    private static boolean hasMethod(String var0, String var1);

    private static /* varargs */ boolean hasMethod(String var0, String var1, Class<?> ... var2);

    private static /* varargs */ boolean hasMethod(String var0, String var1, String ... var2);

    public static boolean hasSpacialApis();
}

