/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.tagmanager.bh;

class df {
    private GoogleAnalytics arQ;
    private Context mContext;
    private Tracker xY;

    df(Context context) {
        this.mContext = context;
    }

    private void cV(String string) {
        synchronized (this) {
            if (this.arQ == null) {
                this.arQ = GoogleAnalytics.getInstance(this.mContext);
                this.arQ.setLogger(new a());
                this.xY = this.arQ.newTracker(string);
            }
            return;
        }
    }

    public Tracker cU(String string) {
        this.cV(string);
        return this.xY;
    }

    static class a
    implements Logger {
        a() {
        }

        private static int fn(int n) {
            switch (n) {
                default: {
                    return 3;
                }
                case 5: {
                    return 2;
                }
                case 3: 
                case 4: {
                    return 1;
                }
                case 2: 
            }
            return 0;
        }

        @Override
        public void error(Exception exception) {
            bh.b("", exception);
        }

        @Override
        public void error(String string) {
            bh.T(string);
        }

        @Override
        public int getLogLevel() {
            return a.fn(bh.getLogLevel());
        }

        @Override
        public void info(String string) {
            bh.U(string);
        }

        @Override
        public void setLogLevel(int n) {
            bh.W("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
        }

        @Override
        public void verbose(String string) {
            bh.V(string);
        }

        @Override
        public void warn(String string) {
            bh.W(string);
        }
    }

}

