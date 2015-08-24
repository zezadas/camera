/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

public class ArtFilter
extends EnumValue<Value>
implements EachCameraStatusValue {
    public static final Value DEFAULT_VALUE = Value.OFF;
    public static final String KEY = "art_filter";
    private static final int REQUIRED_VERSION = 1;

    public ArtFilter(Value value) {
        super(value);
    }

    @Override
    public String getKey() {
        return "art_filter";
    }

    @Override
    public int minRequiredVersion() {
        return 1;
    }

    public static enum Value {
        SINGLE("single"),
        MULTI("multi"),
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
