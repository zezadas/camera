/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import java.nio.ByteBuffer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NativeByteBufferHolder {
    private static final Object DEBUG_LOCK;
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private static NativeByteBufferAllocationHandler sDebugAllocationHandler;
    private static int sDebugCount;
    private static long sDebugUsedBytes;
    private final ByteBuffer mByteBuffer;
    private int mRefCount;

    static;

    private NativeByteBufferHolder(int var1);

    public static NativeByteBufferHolder allocate(int var0);

    public static int debugGetCount();

    private static void debugNotifyAllocated(NativeByteBufferHolder var0);

    private static void debugNotifyReleased(NativeByteBufferHolder var0);

    public static void debugSetAllocationHandler(NativeByteBufferAllocationHandler var0);

    private static String dump();

    public long debugGetUsedBytes();

    public void decrementRefCount();

    public ByteBuffer get();

    public boolean incrementRefCount();

    public boolean isAvairable();

    public static interface NativeByteBufferAllocationHandler {
        public void onAllocated(int var1);

        public void onReleased(int var1);
    }

}

