/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

public class LockByteArray {
    private final byte[] mByteArray = new byte[n];
    private boolean mIsLocked = false;
    private final LockByteChangedListener mListener;

    public LockByteArray(int n, LockByteChangedListener lockByteChangedListener) {
        this.mListener = lockByteChangedListener;
    }

    public byte[] getByteArray() {
        return this.mByteArray;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public byte[] getByteArrayAndLock() {
        synchronized (this) {
            if (this.mIsLocked) return null;
            this.mIsLocked = true;
            return this.mByteArray;
        }
    }

    public boolean isHoldingTheArray(byte[] arrby) {
        if (this.mByteArray == arrby) {
            return true;
        }
        return false;
    }

    public boolean isLocked() {
        synchronized (this) {
            boolean bl = this.mIsLocked;
            return bl;
        }
    }

    public void unlock() {
        synchronized (this) {
            if (this.mIsLocked) {
                this.mIsLocked = false;
                this.mListener.unlocked();
            }
            return;
        }
    }

    public static interface LockByteChangedListener {
        public void unlocked();
    }

}

