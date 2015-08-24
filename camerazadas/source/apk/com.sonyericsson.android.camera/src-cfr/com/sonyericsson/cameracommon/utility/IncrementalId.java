/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

public final class IncrementalId {
    public static final int INCREMENTAL_INVALID = -1;
    private static final int INCREMENTAL_MAX = 2147483646;
    private static final int INCREMENTAL_MIN = 0;
    private int mId = 0;

    public void clear() {
        synchronized (this) {
            this.mId = 0;
            return;
        }
    }

    public int generateNext() {
        synchronized (this) {
            if (this.mId >= 2147483646) {
                this.mId = 0;
            }
            ++this.mId;
            int n = this.mId;
            return n;
        }
    }

    public int getNext() {
        return this.generateNext();
    }
}

