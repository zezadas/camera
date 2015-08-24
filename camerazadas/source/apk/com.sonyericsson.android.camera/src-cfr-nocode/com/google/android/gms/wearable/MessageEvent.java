/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

public interface MessageEvent {
    public byte[] getData();

    public String getPath();

    public int getRequestId();

    public String getSourceNodeId();
}

