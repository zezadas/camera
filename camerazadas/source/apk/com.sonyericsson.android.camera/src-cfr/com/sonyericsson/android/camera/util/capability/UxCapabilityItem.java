/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.UxOptions;

public class UxCapabilityItem
extends CapabilityItem<UxOptions> {
    UxCapabilityItem(UxOptions uxOptions) {
        super("", uxOptions);
    }

    @Override
    UxOptions getDefaultValue() {
        return new UxOptions();
    }
}

