/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import java.util.ArrayList;
import java.util.List;

public class ByteArrayRing {
    private final List<byte[]> mByteList;
    private int mCurrentByteIndex = 0;

    public ByteArrayRing(int n, int n2) {
        this.mByteList = new ArrayList<byte[]>(n);
        for (int i = 0; i < n; ++i) {
            byte[] arrby = new byte[n2];
            this.mByteList.add(arrby);
        }
    }

    private int getNextIndex() {
        if (this.mByteList.size() - 1 <= this.mCurrentByteIndex) {
            return 0;
        }
        return this.mCurrentByteIndex + 1;
    }

    public byte[] getCurrent() {
        synchronized (this) {
            byte[] arrby = this.mByteList.get(this.mCurrentByteIndex);
            return arrby;
        }
    }

    public byte[] getNext() {
        synchronized (this) {
            byte[] arrby = this.mByteList.get(this.getNextIndex());
            return arrby;
        }
    }

    public void increment() {
        synchronized (this) {
            this.mCurrentByteIndex = this.getNextIndex();
            return;
        }
    }
}

