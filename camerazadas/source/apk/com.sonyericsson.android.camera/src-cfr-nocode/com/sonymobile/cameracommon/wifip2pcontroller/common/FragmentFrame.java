/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

import com.sonymobile.cameracommon.wifip2pcontroller.common.Constants;
import java.nio.ByteBuffer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FragmentFrame {
    private static final String TAG;
    public final int denominator;
    public final Constants.FrameColorFormat frameColorFormat;
    public final int frameId;
    public final int framePixelHeight;
    public final int framePixelWidth;
    public final int frameStreamId;
    private ByteBuffer mDatagram;
    public final int numerator;
    public final int payloadSize;
    public final int timestamp;

    static;

    private FragmentFrame(int var1, int var2, int var3, int var4, int var5, Constants.FrameColorFormat var6, int var7, int var8, byte[] var9);

    public static FragmentFrame generate(int var0, int var1, int var2, int var3, int var4, Constants.FrameColorFormat var5, int var6, int var7, byte[] var8);

    public static FragmentFrame generate(byte[] var0);

    public static int getSizeWithoutPayload();

    public byte[] getDatagramBuffer();

    public byte[] getPayloadBuffer();

    public void release();

    public String toString();

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class CommonHeader {
        static final byte FIXED_PAYLOAD_TYPE = 1;
        static final byte FIXED_START_BYTE = -1;
        static final int SIZEOF_PAYLOAD_TYPE = 1;
        static final int SIZEOF_SEQUENCE_NUMBER = 2;
        static final int SIZEOF_START_BYTE = 1;
        static final int SIZEOF_TIMESTAMP = 4;

        private CommonHeader();

        static int size();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class PayloadHeader {
        static final byte FIXED_START_CODE_0 = 36;
        static final byte FIXED_START_CODE_1 = 53;
        static final byte FIXED_START_CODE_2 = 104;
        static final byte FIXED_START_CODE_3 = 121;
        static final int SIZEOF_BACK_RESERVED = 91;
        static final int SIZEOF_DENOMINATOR = 4;
        static final int SIZEOF_EXTENSION = 115;
        static final int SIZEOF_FLAG = 1;
        static final int SIZEOF_FORE_RESERVED = 4;
        static final int SIZEOF_FRAME_COLOR_FORMAT = 4;
        static final int SIZEOF_FRAME_PIXEL_HEIGHT = 4;
        static final int SIZEOF_FRAME_PIXEL_WIDTH = 4;
        static final int SIZEOF_FRAME_STREAM_ID = 4;
        static final int SIZEOF_NUMERATOR = 4;
        static final int SIZEOF_PADDING = 1;
        static final int SIZEOF_PAYLOAD_SIZE = 3;
        static final int SIZEOF_START_CODE = 4;

        private PayloadHeader();

        static int size();
    }

}

