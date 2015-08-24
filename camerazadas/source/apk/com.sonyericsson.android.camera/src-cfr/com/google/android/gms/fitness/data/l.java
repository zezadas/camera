/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.request.OnDataPointListener;
import java.util.HashMap;
import java.util.Map;

public class l
extends k.a {
    private final OnDataPointListener Ti;

    private l(OnDataPointListener onDataPointListener) {
        this.Ti = o.i(onDataPointListener);
    }

    @Override
    public void c(DataPoint dataPoint) throws RemoteException {
        this.Ti.onDataPoint(dataPoint);
    }

    public static class a {
        private static final a Tj = new a();
        private final Map<OnDataPointListener, l> Tk = new HashMap<OnDataPointListener, l>();

        private a() {
        }

        public static a iV() {
            return Tj;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public l a(OnDataPointListener onDataPointListener) {
            Map<OnDataPointListener, l> map = this.Tk;
            synchronized (map) {
                l l;
                l l2 = l = this.Tk.get(onDataPointListener);
                if (l == null) {
                    l2 = new l(onDataPointListener);
                    this.Tk.put(onDataPointListener, l2);
                }
                return l2;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public l b(OnDataPointListener object) {
            Map<OnDataPointListener, l> map = this.Tk;
            synchronized (map) {
                return this.Tk.get(object);
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public l c(OnDataPointListener object) {
            Map<OnDataPointListener, l> map = this.Tk;
            synchronized (map) {
                l l = this.Tk.remove(object);
                if (l == null) return new l((OnDataPointListener)object);
                return l;
            }
        }
    }

}

