/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

public enum ControllerEventSource {
    UNKNOWN(0),
    KEY(0),
    TOUCH(0),
    TOUCH_FACE(0),
    PHOTO_BUTTON(1),
    VIDEO_BUTTON(2),
    PAUSE_RESUME_BUTTON(2),
    AUTO_STATE_TRANSITION(0),
    DEVICE(0),
    OTHER(0);
    
    public final int mType;

    private ControllerEventSource(int n2) {
        this.mType = n2;
    }

    public static ControllerEventSource getButtonEvent(int n) {
        switch (n) {
            default: {
                return OTHER;
            }
            case 0: {
                return PHOTO_BUTTON;
            }
            case 1: {
                return VIDEO_BUTTON;
            }
            case 2: 
        }
        return PAUSE_RESUME_BUTTON;
    }
}

