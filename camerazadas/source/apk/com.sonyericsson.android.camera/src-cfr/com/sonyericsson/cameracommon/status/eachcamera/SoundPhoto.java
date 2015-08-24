/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class SoundPhoto
extends EnumValue<Value>
implements EachCameraStatusValue {
    public static final Value DEFAULT_VALUE = Value.OFF;
    public static final String KEY = "sound_photo";
    private static final int REQUIRED_VERSION = 10;

    public SoundPhoto(Value value) {
        super(value);
    }

    @Override
    public String getKey() {
        return "sound_photo";
    }

    @Override
    public int minRequiredVersion() {
        return 10;
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

