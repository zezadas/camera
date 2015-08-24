/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.ResolutionOptions;

public class ResolutionCapabilityItem
extends CapabilityItem<ResolutionOptions> {
    ResolutionCapabilityItem(ResolutionOptions resolutionOptions) {
        super("", resolutionOptions);
    }

    @Override
    ResolutionOptions getDefaultValue() {
        return new ResolutionOptions();
    }
}

