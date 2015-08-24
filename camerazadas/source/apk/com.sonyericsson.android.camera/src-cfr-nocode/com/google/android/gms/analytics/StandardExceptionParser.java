/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.ExceptionParser;
import java.util.Collection;
import java.util.TreeSet;

/*
 * Exception performing whole class analysis.
 */
public class StandardExceptionParser
implements ExceptionParser {
    private final TreeSet<String> Bl;

    public StandardExceptionParser(Context var1, Collection<String> var2);

    protected StackTraceElement getBestStackTraceElement(Throwable var1);

    protected Throwable getCause(Throwable var1);

    @Override
    public String getDescription(String var1, Throwable var2);

    protected String getDescription(Throwable var1, StackTraceElement var2, String var3);

    public void setIncludedPackages(Context var1, Collection<String> var2);
}

