/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gt;

/*
 * Exception performing whole class analysis.
 */
@ez
public class ey
implements Thread.UncaughtExceptionHandler {
    private Context mContext;
    private Thread.UncaughtExceptionHandler sR;
    private Thread.UncaughtExceptionHandler sS;
    private gt sT;

    public ey(Context var1, gt var2, Thread.UncaughtExceptionHandler var3, Thread.UncaughtExceptionHandler var4);

    public static ey a(Context var0, Thread var1, gt var2);

    private String cw();

    private Throwable d(Throwable var1);

    private static boolean k(Context var0);

    protected boolean G(String var1);

    protected boolean H(String var1);

    protected boolean a(Throwable var1);

    public void b(Throwable var1);

    protected String c(Throwable var1);

    @Override
    public void uncaughtException(Thread var1, Throwable var2);
}

