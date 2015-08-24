/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ControllerEventSource
extends Enum<ControllerEventSource> {
    private static final /* synthetic */ ControllerEventSource[] $VALUES;
    public static final /* enum */ ControllerEventSource AUTO_STATE_TRANSITION;
    public static final /* enum */ ControllerEventSource DEVICE;
    public static final /* enum */ ControllerEventSource KEY;
    public static final /* enum */ ControllerEventSource OTHER;
    public static final /* enum */ ControllerEventSource PAUSE_RESUME_BUTTON;
    public static final /* enum */ ControllerEventSource PHOTO_BUTTON;
    public static final /* enum */ ControllerEventSource TOUCH;
    public static final /* enum */ ControllerEventSource TOUCH_FACE;
    public static final /* enum */ ControllerEventSource UNKNOWN;
    public static final /* enum */ ControllerEventSource VIDEO_BUTTON;
    public final int mType;

    static;

    private ControllerEventSource(int var3);

    public static ControllerEventSource getButtonEvent(int var0);

    public static ControllerEventSource valueOf(String var0);

    public static ControllerEventSource[] values();
}

