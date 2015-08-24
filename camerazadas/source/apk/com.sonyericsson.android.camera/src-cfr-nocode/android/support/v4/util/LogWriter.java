/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import java.io.Writer;

/*
 * Exception performing whole class analysis.
 */
public class LogWriter
extends Writer {
    private StringBuilder mBuilder;
    private final String mTag;

    public LogWriter(String var1);

    private void flushBuilder();

    @Override
    public void close();

    @Override
    public void flush();

    @Override
    public void write(char[] var1, int var2, int var3);
}

