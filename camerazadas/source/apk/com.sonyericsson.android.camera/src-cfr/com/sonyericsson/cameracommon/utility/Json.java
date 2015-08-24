/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.gson.Gson
 *  com.google.gson.GsonBuilder
 */
package com.sonyericsson.cameracommon.utility;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class Json {
    private static final Object GSON_SYNC_LOCK;
    private static final String TAG;

    static {
        TAG = Json.class.getSimpleName();
        GSON_SYNC_LOCK = new Object();
    }

    private static Gson createGson(double d) {
        return new GsonBuilder().serializeNulls().setVersion(d).excludeFieldsWithoutExposeAnnotation().create();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static <T> T decodeFromJson(double d, String object, Class<T> class_) {
        Object object2 = GSON_SYNC_LOCK;
        synchronized (object2) {
            object = Json.createGson(d).fromJson((String)object, class_);
            return (T)object;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static <T> String encodeToJson(double d, T object, Class<T> class_) {
        Object object2 = GSON_SYNC_LOCK;
        synchronized (object2) {
            return Json.createGson(d).toJson(object, class_);
        }
    }
}

