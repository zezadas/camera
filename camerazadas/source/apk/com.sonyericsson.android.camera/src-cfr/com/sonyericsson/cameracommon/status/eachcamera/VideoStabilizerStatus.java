/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class VideoStabilizerStatus
extends EnumValue<Value>
implements EachCameraStatusValue {
    public static final Value DEFAULT_VALUE = Value.OFF;
    public static final String KEY = "video_stabilizer";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    public VideoStabilizerStatus(Value value) {
        super(value);
    }

    public static VideoStabilizerStatus fromCameraParameter(String string) {
        if ("on".equals(string)) {
            return new VideoStabilizerStatus(Value.ON);
        }
        if ("on-steady-shot".equals(string)) {
            return new VideoStabilizerStatus(Value.ON);
        }
        if ("on-intelligent-active".equals(string)) {
            return new VideoStabilizerStatus(Value.INTELLIGENT_ACTIVE);
        }
        return new VideoStabilizerStatus(Value.OFF);
    }

    @Override
    public String getKey() {
        return "video_stabilizer";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }

    public static enum Value {
        ON("on"),
        OFF("off"),
        INTELLIGENT_ACTIVE("intelligent_active");
        
        private final String mStringExpression;

        private Value(String string2) {
            this.mStringExpression = string2;
        }

        public String toString() {
            return this.mStringExpression;
        }
    }

}

