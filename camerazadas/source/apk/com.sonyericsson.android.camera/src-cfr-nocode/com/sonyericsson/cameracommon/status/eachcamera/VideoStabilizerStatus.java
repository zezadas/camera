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
public class VideoStabilizerStatus
extends EnumValue<Value>
implements EachCameraStatusValue {
    public static final Value DEFAULT_VALUE;
    public static final String KEY = "video_stabilizer";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public VideoStabilizerStatus(Value var1);

    public static VideoStabilizerStatus fromCameraParameter(String var0);

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
        public static final /* enum */ Value INTELLIGENT_ACTIVE;
        public static final /* enum */ Value OFF;
        public static final /* enum */ Value ON;
        private final String mStringExpression;

        static;

        private Value(String var3);

        public static Value valueOf(String var0);

        public static Value[] values();

        public String toString();
    }

}

