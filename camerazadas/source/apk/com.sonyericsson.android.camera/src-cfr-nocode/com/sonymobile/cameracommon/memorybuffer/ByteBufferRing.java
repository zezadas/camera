/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import java.nio.ByteBuffer;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class ByteBufferRing {
    private List<ByteBuffer> mBufferList;
    private int mCurrentBufferIndex;

    public ByteBufferRing(int var1, int var2, boolean var3);

    private int getNextIndex();

    public ByteBuffer findByByteArray(byte[] var1);

    public ByteBuffer getCurrent();

    public ByteBuffer getNext();

    public void increment();

    public void release();
}

