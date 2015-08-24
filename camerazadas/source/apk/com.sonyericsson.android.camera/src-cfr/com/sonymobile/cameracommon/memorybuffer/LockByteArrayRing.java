/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import com.sonymobile.cameracommon.memorybuffer.LockByteArray;

public class LockByteArrayRing {
    private final LockByteArray[] mByteArrays;
    private int mCurrentIndex = 0;

    public LockByteArrayRing(int n, int n2, LockByteArray.LockByteChangedListener lockByteChangedListener) {
        this.mByteArrays = new LockByteArray[n];
        for (int i = 0; i < n; ++i) {
            this.mByteArrays[i] = new LockByteArray(n2, lockByteChangedListener);
        }
    }

    private int getNextIndex() {
        return (this.mCurrentIndex + 1) % this.mByteArrays.length;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public LockByteArray findByByteArray(byte[] object) {
        synchronized (this) {
            for (LockByteArray lockByteArray : this.mByteArrays) {
                boolean bl = lockByteArray.isHoldingTheArray((byte[])object);
                if (!bl) continue;
                return lockByteArray;
            }
            return null;
        }
    }

    public LockByteArray getCurrent() {
        synchronized (this) {
            LockByteArray lockByteArray = this.mByteArrays[this.mCurrentIndex];
            return lockByteArray;
        }
    }

    public LockByteArray getNext() {
        synchronized (this) {
            LockByteArray lockByteArray = this.mByteArrays[this.getNextIndex()];
            return lockByteArray;
        }
    }

    public void increment() {
        synchronized (this) {
            this.mCurrentIndex = this.getNextIndex();
            return;
        }
    }
}

