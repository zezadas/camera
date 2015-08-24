/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.events;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class EventIncrementCache {
    final Object aaq = new Object();
    private Handler aar;
    private boolean aas;
    private HashMap<String, AtomicInteger> aat;
    private int aau;

    public EventIncrementCache(Looper looper, int n) {
        this.aar = new Handler(looper);
        this.aat = new HashMap();
        this.aau = n;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void kQ() {
        Object object = this.aaq;
        synchronized (object) {
            this.aas = false;
            this.flush();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void flush() {
        Object object = this.aaq;
        synchronized (object) {
            Iterator<Map.Entry<String, AtomicInteger>> iterator = this.aat.entrySet().iterator();
            do {
                if (!iterator.hasNext()) {
                    this.aat.clear();
                    return;
                }
                Map.Entry<String, AtomicInteger> entry = iterator.next();
                this.q(entry.getKey(), entry.getValue().get());
            } while (true);
        }
    }

    protected abstract void q(String var1, int var2);

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void w(String string, int n) {
        Object object = this.aaq;
        synchronized (object) {
            AtomicInteger atomicInteger;
            if (!this.aas) {
                this.aas = true;
                this.aar.postDelayed(new Runnable(){

                    @Override
                    public void run() {
                        EventIncrementCache.this.kQ();
                    }
                }, this.aau);
            }
            AtomicInteger atomicInteger2 = atomicInteger = this.aat.get(string);
            if (atomicInteger == null) {
                atomicInteger2 = new AtomicInteger();
                this.aat.put(string, atomicInteger2);
            }
            atomicInteger2.addAndGet(n);
            return;
        }
    }

}

