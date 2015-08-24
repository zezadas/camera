/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class kj {
    private static final List<TimeUnit> Sv = Arrays.asList(new TimeUnit[]{TimeUnit.NANOSECONDS, TimeUnit.MICROSECONDS, TimeUnit.MILLISECONDS, TimeUnit.SECONDS, TimeUnit.MINUTES, TimeUnit.HOURS, TimeUnit.DAYS});

    public static long a(long l, TimeUnit timeUnit, TimeUnit timeUnit2) {
        return timeUnit.convert(timeUnit2.convert(l, timeUnit), timeUnit2);
    }

    public static boolean a(TimeUnit timeUnit) {
        return kj.a(timeUnit, TimeUnit.MILLISECONDS);
    }

    private static boolean a(TimeUnit timeUnit, TimeUnit timeUnit2) {
        if (Sv.indexOf((Object)timeUnit) < Sv.indexOf((Object)timeUnit2)) {
            return true;
        }
        return false;
    }
}

