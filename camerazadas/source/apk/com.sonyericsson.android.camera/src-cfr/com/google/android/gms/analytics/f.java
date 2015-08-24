/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

interface f {
    public void dH();

    public void dN();

    public LinkedBlockingQueue<Runnable> dO();

    public void dispatch();

    public Thread getThread();

    public void u(Map<String, String> var1);
}

