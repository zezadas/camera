/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class a {
    public static String[] A(Parcel var0, int var1);

    public static int B(Parcel var0);

    public static ArrayList<Integer> B(Parcel var0, int var1);

    public static int C(Parcel var0);

    public static ArrayList<String> C(Parcel var0, int var1);

    public static Parcel D(Parcel var0, int var1);

    public static Parcel[] E(Parcel var0, int var1);

    public static int a(Parcel var0, int var1);

    public static <T extends Parcelable> T a(Parcel var0, int var1, Parcelable.Creator<T> var2);

    private static void a(Parcel var0, int var1, int var2);

    private static void a(Parcel var0, int var1, int var2, int var3);

    public static void a(Parcel var0, int var1, List var2, ClassLoader var3);

    public static int aD(int var0);

    public static void b(Parcel var0, int var1);

    public static <T> T[] b(Parcel var0, int var1, Parcelable.Creator<T> var2);

    public static <T> ArrayList<T> c(Parcel var0, int var1, Parcelable.Creator<T> var2);

    public static boolean c(Parcel var0, int var1);

    public static Boolean d(Parcel var0, int var1);

    public static byte e(Parcel var0, int var1);

    public static short f(Parcel var0, int var1);

    public static int g(Parcel var0, int var1);

    public static Integer h(Parcel var0, int var1);

    public static long i(Parcel var0, int var1);

    public static Long j(Parcel var0, int var1);

    public static BigInteger k(Parcel var0, int var1);

    public static float l(Parcel var0, int var1);

    public static double m(Parcel var0, int var1);

    public static BigDecimal n(Parcel var0, int var1);

    public static String o(Parcel var0, int var1);

    public static IBinder p(Parcel var0, int var1);

    public static Bundle q(Parcel var0, int var1);

    public static byte[] r(Parcel var0, int var1);

    public static byte[][] s(Parcel var0, int var1);

    public static boolean[] t(Parcel var0, int var1);

    public static int[] u(Parcel var0, int var1);

    public static long[] v(Parcel var0, int var1);

    public static BigInteger[] w(Parcel var0, int var1);

    public static float[] x(Parcel var0, int var1);

    public static double[] y(Parcel var0, int var1);

    public static BigDecimal[] z(Parcel var0, int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class a
    extends RuntimeException {
        public a(String var1, Parcel var2);
    }

}

