/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.EnumValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DeviceStatus
extends EnumValue<Value>
implements EachCameraStatusValue {
    public static final Value DEFAULT_VALUE;
    public static final String KEY = "device_status";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public DeviceStatus(Value var1);

    @Override
    public String getKey();

    @Override
    public int minRequiredVersion();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Value
    extends Enum<Value> {
        private static final /* synthetic */ Value[] $VALUES;
        public static final /* enum */ Value PICTURE_TAKING;
        public static final /* enum */ Value PICTURE_TAKING_DURING_VIDEO_RECORDING;
        public static final /* enum */ Value POWER_OFF;
        public static final /* enum */ Value POWER_ON;
        public static final /* enum */ Value STILL_PREVIEW;
        public static final /* enum */ Value VIDEO_PREVIEW;
        public static final /* enum */ Value VIDEO_RECORDING;
        private final String mStringExpression;

        static;

        private Value(String var3);

        public static Value valueOf(String var0);

        public static Value[] values();

        public String toString();
    }

}

