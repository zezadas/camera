/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.n;
import java.io.IOException;

public class j
extends i {
    protected j(Context var1, m var2, n var3);

    public static j a(String var0, Context var1);

    @Override
    protected void b(Context var1);

    a h(Context var1) throws IOException, GooglePlayServicesNotAvailableException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class a {
        private String kO;
        private boolean kP;
        final /* synthetic */ j kQ;

        public a(j var1, String var2, boolean var3);

        public String getId();

        public boolean isLimitAdTrackingEnabled();
    }

}

