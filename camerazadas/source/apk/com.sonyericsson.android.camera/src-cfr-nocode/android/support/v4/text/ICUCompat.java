/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ICUCompat {
    private static final ICUCompatImpl IMPL;

    static;

    public ICUCompat();

    public static String addLikelySubtags(String var0);

    public static String getScript(String var0);

    static interface ICUCompatImpl {
        public String addLikelySubtags(String var1);

        public String getScript(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ICUCompatImplBase
    implements ICUCompatImpl {
        ICUCompatImplBase();

        @Override
        public String addLikelySubtags(String var1);

        @Override
        public String getScript(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ICUCompatImplIcs
    implements ICUCompatImpl {
        ICUCompatImplIcs();

        @Override
        public String addLikelySubtags(String var1);

        @Override
        public String getScript(String var1);
    }

}

