/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

public class Constants {
    public static final int GC_NEGOTIATION_RECEIVE_PORT = 8990;
    public static final int GC_STREAMING_RECEIVE_PORT = 8991;
    public static final int GO_NEGOTIATION_RECEIVE_PORT = 8980;
    public static final int GO_STREAMING_RECEIVE_PORT = 8981;

    public static enum FrameColorFormat {
        JPEG(100);
        
        private final int mFormatCode;

        private FrameColorFormat(int n2) {
            this.mFormatCode = n2;
        }

        public static FrameColorFormat fromFormatCode(int n) {
            for (FrameColorFormat frameColorFormat : FrameColorFormat.values()) {
                if (frameColorFormat.getFormatCode() != n) continue;
                return frameColorFormat;
            }
            throw new IllegalArgumentException("Unsupported FrameColorFormat.");
        }

        public int getFormatCode() {
            return this.mFormatCode;
        }
    }

}

