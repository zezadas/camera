/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.settingpreference;

import com.sonymobile.cameracommon.settingpreference.ParameterApplyerInterface;
import com.sonymobile.cameracommon.settingpreference.ParameterHolder;
import com.sonymobile.cameracommon.settingpreference.ParameterKey;
import com.sonymobile.cameracommon.settingpreference.ParameterValue;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public abstract class ParameterSet<T extends ParameterApplyerInterface> {
    private final Map<ParameterKey, ParameterHolder<?>> mHolders = new HashMap();

    public abstract void apply(T var1);

    public ParameterHolder<?> get(ParameterKey parameterKey) {
        return this.mHolders.get(parameterKey);
    }

    public Set<ParameterKey> keys() {
        return this.mHolders.keySet();
    }

    protected <V extends ParameterValue> ParameterHolder<V> makeHolder(V object) {
        object = new ParameterHolder<V>(object);
        this.mHolders.put(object.getKey(), (Object)object);
        return object;
    }
}

