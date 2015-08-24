/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.settingpreference;

import com.sonymobile.cameracommon.settingpreference.ParameterApplyerInterface;
import com.sonymobile.cameracommon.settingpreference.ParameterHolder;
import com.sonymobile.cameracommon.settingpreference.ParameterKey;
import com.sonymobile.cameracommon.settingpreference.ParameterValue;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class ParameterSet<T extends ParameterApplyerInterface> {
    private final Map<ParameterKey, ParameterHolder<?>> mHolders;

    public ParameterSet();

    public abstract void apply(T var1);

    public ParameterHolder<?> get(ParameterKey var1);

    public Set<ParameterKey> keys();

    protected <V extends ParameterValue> ParameterHolder<V> makeHolder(V var1);
}

