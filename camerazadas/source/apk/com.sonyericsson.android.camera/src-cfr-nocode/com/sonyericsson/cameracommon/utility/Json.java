/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.gson.Gson
 */
package com.sonyericsson.cameracommon.utility;

import com.google.gson.Gson;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Json {
    private static final Object GSON_SYNC_LOCK;
    private static final String TAG;

    static;

    public Json();

    private static Gson createGson(double var0);

    public static <T> T decodeFromJson(double var0, String var2, Class<T> var3);

    public static <T> String encodeToJson(double var0, T var2, Class<T> var3);
}

