/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;

public class z {
    private static GoogleAnalytics AT;

    public static void T(String string) {
        Logger logger = z.getLogger();
        if (logger != null) {
            logger.error(string);
        }
    }

    public static void U(String string) {
        Logger logger = z.getLogger();
        if (logger != null) {
            logger.info(string);
        }
    }

    public static void V(String string) {
        Logger logger = z.getLogger();
        if (logger != null) {
            logger.verbose(string);
        }
    }

    public static void W(String string) {
        Logger logger = z.getLogger();
        if (logger != null) {
            logger.warn(string);
        }
    }

    public static boolean eK() {
        boolean bl;
        boolean bl2 = bl = false;
        if (z.getLogger() != null) {
            bl2 = bl;
            if (z.getLogger().getLogLevel() == 0) {
                bl2 = true;
            }
        }
        return bl2;
    }

    private static Logger getLogger() {
        if (AT == null) {
            AT = GoogleAnalytics.eD();
        }
        if (AT != null) {
            return AT.getLogger();
        }
        return null;
    }
}

