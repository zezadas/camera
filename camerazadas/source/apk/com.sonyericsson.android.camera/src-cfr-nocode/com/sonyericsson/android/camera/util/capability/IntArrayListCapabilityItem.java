/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.SharedPreferences;
import android.hardware.Camera;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import java.util.List;

public class IntArrayListCapabilityItem
extends CapabilityItem<List<int[]>> {
    IntArrayListCapabilityItem(String var1, SharedPreferences var2);

    IntArrayListCapabilityItem(String var1, Camera.Parameters var2);

    IntArrayListCapabilityItem(String var1, List<int[]> var2);

    @Override
    List<int[]> getDefaultValue();

    @Override
    public List<int[]> read(SharedPreferences var1, String var2);

    @Override
    public void write(SharedPreferences.Editor var1);
}

