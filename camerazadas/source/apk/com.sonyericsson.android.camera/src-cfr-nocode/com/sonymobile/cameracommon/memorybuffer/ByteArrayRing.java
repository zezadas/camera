/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class ByteArrayRing {
    private final List<byte[]> mByteList;
    private int mCurrentByteIndex;

    public ByteArrayRing(int var1, int var2);

    private int getNextIndex();

    public byte[] getCurrent();

    public byte[] getNext();

    public void increment();
}

