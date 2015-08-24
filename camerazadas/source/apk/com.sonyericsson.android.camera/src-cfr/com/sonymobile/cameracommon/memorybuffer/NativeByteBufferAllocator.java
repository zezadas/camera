/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.memorybuffer;

import java.nio.ByteBuffer;

class NativeByteBufferAllocator {
    static {
        System.loadLibrary("nativebytebuffer");
    }

    NativeByteBufferAllocator() {
    }

    static native ByteBuffer allocate(int var0);

    static native void release(ByteBuffer var0);
}

