/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;

public interface ParameterValue {
    public void apply(ParameterApplicable var1);

    public int getIconId();

    public ParameterKey getParameterKey();

    public int getParameterKeyTextId();

    public String getParameterName();

    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    public int getTextId();

    public String getValue();
}

