/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import java.io.IOException;
import java.io.OutputStream;

public class ThreadSafeOutputStream
extends OutputStream {
    private static final String TAG = "ThreadSafeOutputStream";
    boolean mClosed;
    private OutputStream mDelegateStream;

    public ThreadSafeOutputStream(OutputStream outputStream) {
        this.mDelegateStream = outputStream;
        if (this.mDelegateStream != null) {
            // empty if block
        }
    }

    @Override
    public void close() throws IOException {
        synchronized (this) {
            this.mClosed = true;
            this.mDelegateStream.close();
            return;
        }
    }

    @Override
    public void flush() throws IOException {
        synchronized (this) {
            super.flush();
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void write(int n) throws IOException {
        synchronized (this) {
            block6 : {
                boolean bl = this.mClosed;
                if (!bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            this.mDelegateStream.write(n);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void write(byte[] arrby, int n, int n2) throws IOException {
        while (n2 > 0) {
            synchronized (this) {
                if (this.mClosed) {
                    return;
                }
                int n3 = Math.min(8192, n2);
                this.mDelegateStream.write(arrby, n, n3);
                n+=n3;
                n2-=n3;
            }
        }
        return;
    }
}

