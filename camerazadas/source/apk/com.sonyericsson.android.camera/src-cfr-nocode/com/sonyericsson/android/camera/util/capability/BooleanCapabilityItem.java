/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class BooleanCapabilityItem
extends CapabilityItem<Boolean> {
    BooleanCapabilityItem(String var1, SharedPreferences var2);

    BooleanCapabilityItem(String var1, Camera.Parameters var2);

    BooleanCapabilityItem(String var1, Boolean var2);

    @Override
    Boolean getDefaultValue();

    @Override
    public Boolean parseExtensionValue(String var1);

    @Override
    public Boolean read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

