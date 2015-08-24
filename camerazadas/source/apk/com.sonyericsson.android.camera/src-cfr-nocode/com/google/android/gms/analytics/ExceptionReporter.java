/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.ExceptionParser;
import com.google.android.gms.analytics.Tracker;

/*
 * Exception performing whole class analysis.
 */
public class ExceptionReporter
implements Thread.UncaughtExceptionHandler {
    private final Context mContext;
    private final Thread.UncaughtExceptionHandler xX;
    private final Tracker xY;
    private ExceptionParser xZ;

    public ExceptionReporter(Tracker var1, Thread.UncaughtExceptionHandler var2, Context var3);

    Thread.UncaughtExceptionHandler dY();

    public ExceptionParser getExceptionParser();

    public void setExceptionParser(ExceptionParser var1);

    @Override
    public void uncaughtException(Thread var1, Throwable var2);
}

