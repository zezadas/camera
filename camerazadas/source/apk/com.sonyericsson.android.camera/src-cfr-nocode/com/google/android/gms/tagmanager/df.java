/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;

/*
 * Exception performing whole class analysis.
 */
class df {
    private GoogleAnalytics arQ;
    private Context mContext;
    private Tracker xY;

    df(Context var1);

    private void cV(String var1);

    public Tracker cU(String var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class a
    implements Logger {
        a();

        private static int fn(int var0);

        @Override
        public void error(Exception var1);

        @Override
        public void error(String var1);

        @Override
        public int getLogLevel();

        @Override
        public void info(String var1);

        @Override
        public void setLogLevel(int var1);

        @Override
        public void verbose(String var1);

        @Override
        public void warn(String var1);
    }

}

