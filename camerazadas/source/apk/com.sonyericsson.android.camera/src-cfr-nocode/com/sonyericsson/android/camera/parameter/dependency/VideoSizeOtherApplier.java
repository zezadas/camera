/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

/*
 * Exception performing whole class analysis.
 */
public class VideoSizeOtherApplier
extends DependencyApplier {
    private final boolean mIsOneShotVideo;

    public VideoSizeOtherApplier(boolean var1);

    @Override
    public void apply(CapturingModeParams var1);

    @Override
    public void reset(CapturingModeParams var1);
}

