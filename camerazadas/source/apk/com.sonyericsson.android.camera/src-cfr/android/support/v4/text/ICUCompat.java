/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

import android.os.Build;
import android.support.v4.text.ICUCompatIcs;

public class ICUCompat {
    private static final ICUCompatImpl IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new ICUCompatImplIcs();
            return;
        }
        IMPL = new ICUCompatImplBase();
    }

    public static String addLikelySubtags(String string) {
        return IMPL.addLikelySubtags(string);
    }

    public static String getScript(String string) {
        return IMPL.getScript(string);
    }

    static interface ICUCompatImpl {
        public String addLikelySubtags(String var1);

        public String getScript(String var1);
    }

    static class ICUCompatImplBase
    implements ICUCompatImpl {
        ICUCompatImplBase() {
        }

        @Override
        public String addLikelySubtags(String string) {
            return string;
        }

        @Override
        public String getScript(String string) {
            return null;
        }
    }

    static class ICUCompatImplIcs
    implements ICUCompatImpl {
        ICUCompatImplIcs() {
        }

        @Override
        public String addLikelySubtags(String string) {
            return ICUCompatIcs.addLikelySubtags(string);
        }

        @Override
        public String getScript(String string) {
            return ICUCompatIcs.getScript(string);
        }
    }

}

