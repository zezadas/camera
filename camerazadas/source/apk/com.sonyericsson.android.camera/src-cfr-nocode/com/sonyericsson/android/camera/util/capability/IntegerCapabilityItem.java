/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class IntegerCapabilityItem
extends CapabilityItem<Integer> {
    IntegerCapabilityItem(String var1, SharedPreferences var2);

    IntegerCapabilityItem(String var1, Camera.Parameters var2);

    IntegerCapabilityItem(String var1, Integer var2);

    @Override
    Integer getDefaultValue();

    @Override
    public Integer parseExtensionValue(String var1);

    @Override
    public Integer read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

