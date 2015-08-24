/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import java.util.List;

public class RectListCapabilityItem
extends CapabilityItem<List<Rect>> {
    RectListCapabilityItem(String var1, SharedPreferences var2);

    RectListCapabilityItem(String var1, Camera.Parameters var2);

    RectListCapabilityItem(String var1, List<Rect> var2);

    @Override
    List<Rect> getDefaultValue();

    @Override
    public List<Rect> read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

