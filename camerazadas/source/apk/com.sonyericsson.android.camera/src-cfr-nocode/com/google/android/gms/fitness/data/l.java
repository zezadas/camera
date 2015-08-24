/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.RemoteException;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.k;
import com.google.android.gms.fitness.request.OnDataPointListener;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class l
extends k.a {
    private final OnDataPointListener Ti;

    private l(OnDataPointListener var1);

    /* synthetic */ l(OnDataPointListener var1,  var2);

    @Override
    public void c(DataPoint var1) throws RemoteException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private static final a Tj;
        private final Map<OnDataPointListener, l> Tk;

        static;

        private a();

        public static a iV();

        public l a(OnDataPointListener var1);

        public l b(OnDataPointListener var1);

        public l c(OnDataPointListener var1);
    }

}

