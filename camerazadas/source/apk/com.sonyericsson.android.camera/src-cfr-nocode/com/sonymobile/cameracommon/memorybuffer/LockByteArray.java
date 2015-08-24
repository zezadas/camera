/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

/*
 * Exception performing whole class analysis.
 */
public class LockByteArray {
    private final byte[] mByteArray;
    private boolean mIsLocked;
    private final LockByteChangedListener mListener;

    public LockByteArray(int var1, LockByteChangedListener var2);

    public byte[] getByteArray();

    public byte[] getByteArrayAndLock();

    public boolean isHoldingTheArray(byte[] var1);

    public boolean isLocked();

    public void unlock();

    public static interface LockByteChangedListener {
        public void unlocked();
    }

}

