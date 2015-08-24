/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import java.io.IOException;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 */
public class ThreadSafeOutputStream
extends OutputStream {
    boolean mClosed;
    private OutputStream mDelegateStream;

    public ThreadSafeOutputStream(OutputStream var1);

    @Override
    public void close() throws IOException;

    @Override
    public void flush() throws IOException;

    @Override
    public void write(int var1) throws IOException;

    @Override
    public void write(byte[] var1, int var2, int var3) throws IOException;
}

