/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class IncrementalId {
    public static final int INCREMENTAL_INVALID = -1;
    private static final int INCREMENTAL_MAX = 2147483646;
    private static final int INCREMENTAL_MIN = 0;
    private int mId;

    public IncrementalId();

    public void clear();

    public int generateNext();

    public int getNext();
}

