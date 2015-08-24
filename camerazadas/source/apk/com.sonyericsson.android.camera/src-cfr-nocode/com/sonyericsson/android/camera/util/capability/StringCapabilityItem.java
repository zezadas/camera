/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;

public class StringCapabilityItem
extends CapabilityItem<String> {
    StringCapabilityItem(String var1, SharedPreferences var2);

    StringCapabilityItem(String var1, Camera.Parameters var2);

    StringCapabilityItem(String var1, String var2);

    @Override
    String getDefaultValue();

    @Override
    public String parseExtensionValue(String var1);

    @Override
    public String read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

