/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import android.os.Debug;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferAllocator;
import java.nio.ByteBuffer;

public class NativeByteBufferHolder {
    private static final Object DEBUG_LOCK;
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private static NativeByteBufferAllocationHandler sDebugAllocationHandler;
    private static int sDebugCount;
    private static long sDebugUsedBytes;
    private final ByteBuffer mByteBuffer;
    private int mRefCount;

    static {
        TAG = NativeByteBufferHolder.class.getSimpleName();
        DEBUG_LOCK = new Object();
        sDebugCount = 0;
        sDebugUsedBytes = 0;
        sDebugAllocationHandler = null;
    }

    private NativeByteBufferHolder(int n) {
        if (n <= 0) {
            this.mByteBuffer = ByteBuffer.allocateDirect(0);
            this.mRefCount = 0;
            return;
        }
        this.mByteBuffer = NativeByteBufferAllocator.allocate(n);
        this.mRefCount = 1;
        NativeByteBufferHolder.debugNotifyAllocated(this);
    }

    public static NativeByteBufferHolder allocate(int n) {
        return new NativeByteBufferHolder(n);
    }

    public static int debugGetCount() {
        return sDebugCount;
    }

    private static void debugNotifyAllocated(NativeByteBufferHolder nativeByteBufferHolder) {
    }

    private static void debugNotifyReleased(NativeByteBufferHolder nativeByteBufferHolder) {
    }

    public static void debugSetAllocationHandler(NativeByteBufferAllocationHandler nativeByteBufferAllocationHandler) {
    }

    private static String dump() {
        return "count:" + sDebugCount + " total[kb]:" + sDebugUsedBytes / 1024 + " used[kb:" + Debug.getNativeHeapAllocatedSize() / 1024 + " free[kb]:" + Debug.getNativeHeapFreeSize() / 1024;
    }

    public long debugGetUsedBytes() {
        return sDebugUsedBytes;
    }

    public void decrementRefCount() {
        synchronized (this) {
            if (this.isAvairable()) {
                --this.mRefCount;
                if (this.mRefCount == 0) {
                    NativeByteBufferAllocator.release(this.mByteBuffer);
                    NativeByteBufferHolder.debugNotifyReleased(this);
                }
            }
            return;
        }
    }

    public ByteBuffer get() {
        return this.mByteBuffer;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean incrementRefCount() {
        synchronized (this) {
            if (!this.isAvairable()) return false;
            ++this.mRefCount;
            return true;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isAvairable() {
        synchronized (this) {
            int n = this.mRefCount;
            if (n <= 0) return false;
            return true;
        }
    }

    public static interface NativeByteBufferAllocationHandler {
        public void onAllocated(int var1);

        public void onReleased(int var1);
    }

}

