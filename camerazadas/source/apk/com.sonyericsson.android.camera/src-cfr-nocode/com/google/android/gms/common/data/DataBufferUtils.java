/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.Freezable;
import java.util.ArrayList;

public final class DataBufferUtils {
    private DataBufferUtils();

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> var0);

    public static boolean hasData(DataBuffer<?> var0);

    public static boolean hasNextPage(DataBuffer<?> var0);

    public static boolean hasPrevPage(DataBuffer<?> var0);
}

