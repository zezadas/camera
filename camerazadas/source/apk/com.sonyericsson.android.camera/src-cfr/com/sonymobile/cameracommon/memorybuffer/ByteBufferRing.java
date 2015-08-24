/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ByteBufferRing {
    private List<ByteBuffer> mBufferList = new ArrayList<ByteBuffer>();
    private int mCurrentBufferIndex = 0;

    /*
     * Enabled aggressive block sorting
     */
    public ByteBufferRing(int n, int n2, boolean bl) {
        for (int i = 0; i < n; ++i) {
            ByteBuffer byteBuffer = bl ? ByteBuffer.allocateDirect(n2) : ByteBuffer.allocate(n2);
            this.mBufferList.add(byteBuffer);
        }
    }

    private int getNextIndex() {
        if (this.mBufferList.size() - 1 <= this.mCurrentBufferIndex) {
            return 0;
        }
        return this.mCurrentBufferIndex + 1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public ByteBuffer findByByteArray(byte[] object) {
        synchronized (this) {
            byte[] arrby;
            ByteBuffer byteBuffer;
            Iterator<ByteBuffer> iterator = this.mBufferList.iterator();
            do {
                if (!iterator.hasNext()) return null;
            } while ((arrby = (byteBuffer = iterator.next()).array()) != object);
            return byteBuffer;
        }
    }

    public ByteBuffer getCurrent() {
        synchronized (this) {
            ByteBuffer byteBuffer = this.mBufferList.get(this.mCurrentBufferIndex);
            return byteBuffer;
        }
    }

    public ByteBuffer getNext() {
        synchronized (this) {
            ByteBuffer byteBuffer = this.mBufferList.get(this.getNextIndex());
            return byteBuffer;
        }
    }

    public void increment() {
        synchronized (this) {
            this.mCurrentBufferIndex = this.getNextIndex();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        synchronized (this) {
            Iterator<ByteBuffer> iterator = this.mBufferList.iterator();
            do {
                if (!iterator.hasNext()) {
                    this.mBufferList.clear();
                    return;
                }
                iterator.next().clear();
            } while (true);
        }
    }
}

