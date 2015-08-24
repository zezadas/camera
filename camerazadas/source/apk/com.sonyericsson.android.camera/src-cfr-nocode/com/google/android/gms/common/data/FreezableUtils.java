/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.Freezable;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis ignored.
 */
public final class FreezableUtils {
    public FreezableUtils();

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> var0);

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] var0);

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> var0);
}

