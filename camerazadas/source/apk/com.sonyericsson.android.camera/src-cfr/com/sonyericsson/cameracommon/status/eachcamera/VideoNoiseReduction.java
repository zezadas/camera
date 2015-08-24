/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class VideoNoiseReduction
extends EnumValue<Value>
implements EachCameraStatusValue {
    public static final Value DEFAULT_VALUE = Value.OFF;
    public static final String KEY = "video_noise_reduction";
    private static int REQUIRED_PROVIDER_VERSION = 10;

    public VideoNoiseReduction(Value value) {
        super(value);
    }

    public static VideoNoiseReduction fromCameraParameter(String string) {
        if (string != null && string.equals("on")) {
            return new VideoNoiseReduction(Value.ON);
        }
        return new VideoNoiseReduction(Value.OFF);
    }

    @Override
    public String getKey() {
        return "video_noise_reduction";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }

    public static enum Value {
        ON("on"),
        OFF("off");
        
        private final String mStringExpression;

        private Value(String string2) {
            this.mStringExpression = string2;
        }

        public String toString() {
            return this.mStringExpression;
        }
    }

}

