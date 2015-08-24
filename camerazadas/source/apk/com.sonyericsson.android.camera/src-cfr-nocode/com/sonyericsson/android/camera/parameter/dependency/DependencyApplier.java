/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class DependencyApplier {
    public DependencyApplier();

    public static DependencyApplier create(CaptureFrameShape var0);

    public static DependencyApplier create(Ev var0);

    public static DependencyApplier create(FaceIdentify var0);

    public static DependencyApplier create(FocusMode var0);

    public static DependencyApplier create(Hdr var0);

    public static DependencyApplier create(Iso var0);

    public static DependencyApplier create(Resolution var0);

    public static DependencyApplier create(Scene var0);

    public static DependencyApplier create(SelfTimer var0);

    public static DependencyApplier create(SmileCapture var0);

    public static DependencyApplier create(Stabilizer var0);

    public static DependencyApplier create(VideoHdr var0);

    public static DependencyApplier create(VideoSize var0, boolean var1);

    public static DependencyApplier create(VideoSmileCapture var0);

    public abstract void apply(CapturingModeParams var1);

    public abstract void reset(CapturingModeParams var1);

}

