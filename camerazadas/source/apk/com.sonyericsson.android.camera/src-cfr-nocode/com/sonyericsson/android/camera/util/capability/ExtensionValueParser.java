/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.graphics.Rect;
import java.util.List;

/*
 * Exception performing whole class analysis ignored.
 */
public class ExtensionValueParser {
    public static final String CONNECTOR = "x";
    public static final String DELIMITER = ",";
    private static final String TAG = "ExtensionValueParser";

    public ExtensionValueParser();

    public static final boolean getBoolean(String var0);

    public static final int getInt(String var0);

    public static final Rect getRect(String var0);

    public static final List<String> getStringList(String var0);
}

