/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import com.sonymobile.cameracommon.memorybuffer.LockByteArray;

/*
 * Exception performing whole class analysis.
 */
public class LockByteArrayRing {
    private final LockByteArray[] mByteArrays;
    private int mCurrentIndex;

    public LockByteArrayRing(int var1, int var2, LockByteArray.LockByteChangedListener var3);

    private int getNextIndex();

    public LockByteArray findByByteArray(byte[] var1);

    public LockByteArray getCurrent();

    public LockByteArray getNext();

    public void increment();
}

