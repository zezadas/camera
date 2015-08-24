/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import android.util.Log;
import java.io.Writer;

public class LogWriter
extends Writer {
    private StringBuilder mBuilder = new StringBuilder(128);
    private final String mTag;

    public LogWriter(String string) {
        this.mTag = string;
    }

    private void flushBuilder() {
        if (this.mBuilder.length() > 0) {
            Log.d(this.mTag, this.mBuilder.toString());
            this.mBuilder.delete(0, this.mBuilder.length());
        }
    }

    @Override
    public void close() {
        this.flushBuilder();
    }

    @Override
    public void flush() {
        this.flushBuilder();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void write(char[] arrc, int n, int n2) {
        for (int i = 0; i < n2; ++i) {
            char c = arrc[n + i];
            if (c == '\n') {
                this.flushBuilder();
                continue;
            }
            this.mBuilder.append(c);
        }
    }
}

