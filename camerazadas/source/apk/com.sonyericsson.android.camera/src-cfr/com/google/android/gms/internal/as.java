/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.gs;
import java.util.PriorityQueue;

public class as {
    static long a(int n, int n2, long l, long l2, long l3) {
        return ((l + 1073807359 - ((long)n + Integer.MAX_VALUE) % 1073807359 * l2 % 1073807359) % 1073807359 * l3 % 1073807359 + ((long)n2 + Integer.MAX_VALUE) % 1073807359) % 1073807359;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static long a(long l, int n) {
        if (n == 0) {
            return 1;
        }
        long l2 = l;
        if (n == 1) return l2;
        if (n % 2 != 0) return as.a(l * l % 1073807359, n / 2) % 1073807359 * l % 1073807359;
        return as.a(l * l % 1073807359, n / 2) % 1073807359;
    }

    static String a(String[] arrstring, int n, int n2) {
        if (arrstring.length < n + n2) {
            gs.T("Unable to construct shingle");
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = n; i < n + n2 - 1; ++i) {
            stringBuffer.append(arrstring[i]);
            stringBuffer.append(' ');
        }
        stringBuffer.append(arrstring[n + n2 - 1]);
        return stringBuffer.toString();
    }

    private static void a(int n, long l, int n2, String[] arrstring, int n3, PriorityQueue<a> priorityQueue) {
        priorityQueue.add(new a(l, as.a(arrstring, n2, n3)));
        if (priorityQueue.size() > n) {
            priorityQueue.poll();
        }
    }

    public static void a(String[] arrstring, int n, int n2, PriorityQueue<a> priorityQueue) {
        long l = as.b(arrstring, 0, n2);
        as.a(n, l, 0, arrstring, n2, priorityQueue);
        long l2 = as.a(16785407, n2 - 1);
        for (int i = 1; i < arrstring.length - n2 + 1; ++i) {
            l = as.a(aq.o(arrstring[i - 1]), aq.o(arrstring[i + n2 - 1]), l, l2, 16785407);
            as.a(n, l, i, arrstring, n2, priorityQueue);
        }
    }

    private static long b(String[] arrstring, int n, int n2) {
        long l = ((long)aq.o(arrstring[n]) + Integer.MAX_VALUE) % 1073807359;
        for (int i = n + 1; i < n + n2; ++i) {
            l = (l * 16785407 % 1073807359 + ((long)aq.o(arrstring[i]) + Integer.MAX_VALUE) % 1073807359) % 1073807359;
        }
        return l;
    }

    public static class a {
        final String nQ;
        final long value;

        a(long l, String string) {
            this.value = l;
            this.nQ = string;
        }
    }

}

