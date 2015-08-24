/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class RectCapabilityItem
extends CapabilityItem<Rect> {
    RectCapabilityItem(String var1, SharedPreferences var2);

    RectCapabilityItem(String var1, Rect var2);

    RectCapabilityItem(String var1, Camera.Parameters var2);

    @Override
    Rect getDefaultValue();

    @Override
    public Rect parseExtensionValue(String var1);

    @Override
    public Rect read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

