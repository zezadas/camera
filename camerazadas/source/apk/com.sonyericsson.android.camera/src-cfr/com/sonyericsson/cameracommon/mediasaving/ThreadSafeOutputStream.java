/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import java.io.IOException;
import java.io.OutputStream;

public class ThreadSafeOutputStream
extends OutputStream {
    boolean mClosed;
    private OutputStream mDelegateStream;

    public ThreadSafeOutputStream(OutputStream outputStream) {
        this.mDelegateStream = outputStream;
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
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void write(byte[] arrby, int n, int n2) throws IOException {
        synchronized (this) {
            block7 : {
                if (n2 > 0) {
                    boolean bl = this.mClosed;
                    if (!bl) break block7;
                }
                do {
                    return;
                    break;
                } while (true);
            }
            try {
                this.mDelegateStream.write(arrby, n, n2);
                return;
            }
            catch (Throwable var1_2) {
                throw var1_2;
            }
            finally {
            }
        }
    }
}

