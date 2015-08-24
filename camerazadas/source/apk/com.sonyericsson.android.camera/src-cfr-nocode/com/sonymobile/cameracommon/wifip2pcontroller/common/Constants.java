/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

/*
 * Exception performing whole class analysis ignored.
 */
public class Constants {
    public static final int GC_NEGOTIATION_RECEIVE_PORT = 8990;
    public static final int GC_STREAMING_RECEIVE_PORT = 8991;
    public static final int GO_NEGOTIATION_RECEIVE_PORT = 8980;
    public static final int GO_STREAMING_RECEIVE_PORT = 8981;

    public Constants();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class FrameColorFormat
    extends Enum<FrameColorFormat> {
        private static final /* synthetic */ FrameColorFormat[] $VALUES;
        public static final /* enum */ FrameColorFormat JPEG;
        private final int mFormatCode;

        static;

        private FrameColorFormat(int var3);

        public static FrameColorFormat fromFormatCode(int var0);

        public static FrameColorFormat valueOf(String var0);

        public static FrameColorFormat[] values();

        public int getFormatCode();
    }

}

