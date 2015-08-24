/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

import com.sonymobile.cameracommon.wifip2pcontroller.common.Constants;
import com.sonymobile.cameracommon.wifip2pcontroller.util.Log;
import com.sonymobile.cameracommon.wifip2pcontroller.util.Util;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class FragmentFrame {
    private static final String TAG = FragmentFrame.class.getSimpleName();
    public final int denominator;
    public final Constants.FrameColorFormat frameColorFormat;
    public final int frameId;
    public final int framePixelHeight;
    public final int framePixelWidth;
    public final int frameStreamId;
    private ByteBuffer mDatagram = null;
    public final int numerator;
    public final int payloadSize;
    public final int timestamp;

    private FragmentFrame(int n, int n2, int n3, int n4, int n5, Constants.FrameColorFormat frameColorFormat, int n6, int n7, byte[] arrby) {
        this.frameId = n;
        this.timestamp = n2;
        this.numerator = n3;
        this.denominator = n4;
        this.frameStreamId = n5;
        this.frameColorFormat = frameColorFormat;
        this.framePixelWidth = n6;
        this.framePixelHeight = n7;
        this.payloadSize = arrby.length;
        int n8 = FragmentFrame.getSizeWithoutPayload() + this.payloadSize;
        byte[] arrby2 = new byte[256];
        this.mDatagram = ByteBuffer.allocateDirect(n8);
        this.mDatagram.put(-1);
        this.mDatagram.put(1);
        this.mDatagram.put(Util.integer2ByteArray(2, n));
        this.mDatagram.put(Util.integer2ByteArray(4, n2));
        this.mDatagram.put(36);
        this.mDatagram.put(53);
        this.mDatagram.put(104);
        this.mDatagram.put(121);
        this.mDatagram.put(Util.integer2ByteArray(3, this.payloadSize));
        this.mDatagram.put(arrby2, 0, 1);
        this.mDatagram.put(arrby2, 0, 4);
        this.mDatagram.put(arrby2, 0, 1);
        this.mDatagram.put(Util.integer2ByteArray(4, n3));
        this.mDatagram.put(Util.integer2ByteArray(4, n4));
        this.mDatagram.put(Util.integer2ByteArray(4, n5));
        this.mDatagram.put(Util.integer2ByteArray(4, frameColorFormat.getFormatCode()));
        this.mDatagram.put(Util.integer2ByteArray(4, n6));
        this.mDatagram.put(Util.integer2ByteArray(4, n7));
        this.mDatagram.put(arrby2, 0, 91);
        this.mDatagram.put(arrby);
        this.mDatagram.position(0);
        if (this.mDatagram.capacity() != n8) {
            throw new IllegalStateException("Capacity=" + this.mDatagram.capacity() + " / Size=" + n8);
        }
    }

    public static FragmentFrame generate(int n, int n2, int n3, int n4, int n5, Constants.FrameColorFormat frameColorFormat, int n6, int n7, byte[] arrby) {
        return new FragmentFrame(n, n2, n3, n4, n5, frameColorFormat, n6, n7, arrby);
    }

    public static FragmentFrame generate(byte[] arrby) {
        if (arrby.length < FragmentFrame.getSizeWithoutPayload()) {
            Log.logError(TAG, "generate() : Packet length is less than header. LEN=" + arrby.length);
            return null;
        }
        byte[] arrby2 = new byte[256];
        ByteBuffer byteBuffer = ByteBuffer.wrap(arrby);
        byteBuffer.get(arrby2, 0, 1);
        if (arrby2[0] != -1) {
            throw new IllegalStateException("Start byte is not correct.");
        }
        byteBuffer.get(arrby2, 0, 1);
        if (arrby2[0] != 1) {
            throw new IllegalStateException("Payload type is not correct.");
        }
        byteBuffer.get(arrby2, 0, 2);
        int n = Util.byteArray2Integer(arrby2, 0, 2);
        byteBuffer.get(arrby2, 0, 4);
        int n2 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 4);
        if (arrby2[0] != 36 || arrby2[1] != 53 || arrby2[2] != 104 || arrby2[3] != 121) {
            throw new IllegalStateException("Payload start code is not correct.");
        }
        byteBuffer.get(arrby2, 0, 3);
        int n3 = Util.byteArray2Integer(arrby2, 0, 3);
        byteBuffer.get(arrby2, 0, 1);
        byteBuffer.get(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 1);
        byteBuffer.get(arrby2, 0, 4);
        int n4 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 4);
        int n5 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 4);
        int n6 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 4);
        int n7 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 4);
        int n8 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 4);
        int n9 = Util.byteArray2Integer(arrby2, 0, 4);
        byteBuffer.get(arrby2, 0, 91);
        int n10 = FragmentFrame.getSizeWithoutPayload() + n3;
        if (arrby.length < n10) {
            Log.logError(TAG, "generate() : Packet payload is too small. [Received=" + arrby.length + "] [Estimated=" + n10 + "]");
            return null;
        }
        arrby = new byte[n3];
        byteBuffer.get(arrby);
        return new FragmentFrame(n, n2, n4, n5, n6, Constants.FrameColorFormat.fromFormatCode(n7), n8, n9, arrby);
    }

    public static int getSizeWithoutPayload() {
        return CommonHeader.size() + PayloadHeader.size();
    }

    public byte[] getDatagramBuffer() {
        this.mDatagram.rewind();
        byte[] arrby = new byte[this.mDatagram.limit()];
        this.mDatagram.get(arrby);
        return arrby;
    }

    public byte[] getPayloadBuffer() {
        byte[] arrby = new byte[this.payloadSize];
        this.mDatagram.position(FragmentFrame.getSizeWithoutPayload());
        this.mDatagram.get(arrby, 0, this.payloadSize);
        return arrby;
    }

    public void release() {
        this.mDatagram = null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("FragmentFrame : HashCode=").append(this.hashCode()).append("\n");
        stringBuilder.append("    Frame ID           : ").append(this.frameId).append("\n").append("    Timestamp          : ").append(this.timestamp).append("\n").append("    Numerator          : ").append(this.numerator).append("\n").append("    Denominator        : ").append(this.denominator).append("\n").append("    Frame Stream ID    : ").append(this.frameStreamId).append("\n").append("    Frame Color Format : ").append(this.frameColorFormat.name()).append("\n").append("    Frame Pixel Width  : ").append(this.framePixelWidth).append("\n").append("    Frame Pixel Height : ").append(this.framePixelHeight).append("\n").append("    Payload            : ").append(this.payloadSize).append("\n");
        return stringBuilder.toString();
    }

    private static class CommonHeader {
        static final byte FIXED_PAYLOAD_TYPE = 1;
        static final byte FIXED_START_BYTE = -1;
        static final int SIZEOF_PAYLOAD_TYPE = 1;
        static final int SIZEOF_SEQUENCE_NUMBER = 2;
        static final int SIZEOF_START_BYTE = 1;
        static final int SIZEOF_TIMESTAMP = 4;

        private CommonHeader() {
        }

        static int size() {
            return 8;
        }
    }

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

        private PayloadHeader() {
        }

        static int size() {
            return 128;
        }
    }

}

