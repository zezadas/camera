/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class FloatCapabilityItem
extends CapabilityItem<Float> {
    FloatCapabilityItem(String var1, SharedPreferences var2);

    FloatCapabilityItem(String var1, Camera.Parameters var2);

    FloatCapabilityItem(String var1, Float var2);

    @Override
    Float getDefaultValue();

    @Override
    public Float read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

