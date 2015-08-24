/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import java.util.List;

public class StringListCapabilityItem
extends CapabilityItem<List<String>> {
    StringListCapabilityItem(String var1, SharedPreferences var2);

    StringListCapabilityItem(String var1, Camera.Parameters var2);

    StringListCapabilityItem(String var1, List<String> var2);

    @Override
    List<String> getDefaultValue();

    @Override
    public List<String> parseExtensionValue(String var1);

    @Override
    public List<String> read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

