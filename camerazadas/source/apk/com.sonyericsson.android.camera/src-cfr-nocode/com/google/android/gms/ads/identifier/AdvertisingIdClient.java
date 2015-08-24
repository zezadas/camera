/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.identifier;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.a;
import com.google.android.gms.internal.s;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 */
public final class AdvertisingIdClient {
    a lk;
    s ll;
    boolean lm;
    final Context mContext;

    public AdvertisingIdClient(Context var1);

    static s a(Context var0, a var1) throws IOException;

    public static Info getAdvertisingIdInfo(Context var0) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException;

    static a i(Context var0) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException;

    public Info W() throws IOException;

    public void finish();

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Info {
        private final String ln;
        private final boolean lo;

        public Info(String var1, boolean var2);

        public String getId();

        public boolean isLimitAdTrackingEnabled();

        public String toString();
    }

}

