/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import java.nio.Buffer;
import java.nio.ByteBuffer;

public class ByteBufferUtil {
    private static final String TAG = ByteBufferUtil.class.getSimpleName();

    public static byte[] array(ByteBuffer byteBuffer) {
        byteBuffer = byteBuffer.duplicate();
        byte[] arrby = new byte[byteBuffer.limit()];
        byteBuffer.rewind();
        byteBuffer.get(arrby);
        return arrby;
    }
}

