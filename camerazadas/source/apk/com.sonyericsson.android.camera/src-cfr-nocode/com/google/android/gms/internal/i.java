/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.n;
import com.google.android.gms.internal.o;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class i
extends h {
    private static Method kA;
    private static Method kB;
    private static Method kC;
    private static Method kD;
    private static Method kE;
    private static Method kF;
    private static Method kG;
    private static Method kH;
    private static Method kI;
    private static String kJ;
    private static String kK;
    private static String kL;
    private static o kM;
    static boolean kN;
    private static long startTime;

    static;

    protected i(Context var1, m var2, n var3);

    static String a(Context var0, m var1) throws a;

    static ArrayList<Long> a(MotionEvent var0, DisplayMetrics var1) throws a;

    protected static void a(String var0, Context var1, m var2);

    static String b(Context var0, m var1) throws a;

    private static String b(byte[] var0, String var1) throws a;

    static String d(Context var0) throws a;

    static ArrayList<Long> e(Context var0) throws a;

    static int[] f(Context var0) throws a;

    private static void g(Context var0) throws a;

    static String v() throws a;

    static Long w() throws a;

    static String x() throws a;

    static Long y() throws a;

    @Override
    protected void b(Context var1);

    @Override
    protected void c(Context var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class a
    extends Exception {
        public a();

        public a(Throwable var1);
    }

}

