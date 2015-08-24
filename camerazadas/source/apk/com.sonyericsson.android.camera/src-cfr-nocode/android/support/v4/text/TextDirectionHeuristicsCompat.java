/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

import android.support.v4.text.TextDirectionHeuristicCompat;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR;
    public static final TextDirectionHeuristicCompat RTL;
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;

    static;

    public TextDirectionHeuristicsCompat();

    static /* synthetic */ int access$100(int var0);

    static /* synthetic */ int access$200(int var0);

    private static int isRtlText(int var0);

    private static int isRtlTextOrFormat(int var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class AnyStrong
    implements TextDirectionAlgorithm {
        public static final AnyStrong INSTANCE_LTR;
        public static final AnyStrong INSTANCE_RTL;
        private final boolean mLookForRtl;

        static;

        private AnyStrong(boolean var1);

        @Override
        public int checkRtl(CharSequence var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class FirstStrong
    implements TextDirectionAlgorithm {
        public static final FirstStrong INSTANCE;

        static;

        private FirstStrong();

        @Override
        public int checkRtl(CharSequence var1, int var2, int var3);
    }

    private static interface TextDirectionAlgorithm {
        public int checkRtl(CharSequence var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class TextDirectionHeuristicImpl
    implements TextDirectionHeuristicCompat {
        private final TextDirectionAlgorithm mAlgorithm;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm var1);

        private boolean doCheck(CharSequence var1, int var2, int var3);

        protected abstract boolean defaultIsRtl();

        @Override
        public boolean isRtl(CharSequence var1, int var2, int var3);

        @Override
        public boolean isRtl(char[] var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class TextDirectionHeuristicInternal
    extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        private TextDirectionHeuristicInternal(TextDirectionAlgorithm var1, boolean var2);

        /* synthetic */ TextDirectionHeuristicInternal(TextDirectionAlgorithm var1, boolean var2,  var3);

        @Override
        protected boolean defaultIsRtl();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class TextDirectionHeuristicLocale
    extends TextDirectionHeuristicImpl {
        public static final TextDirectionHeuristicLocale INSTANCE;

        static;

        public TextDirectionHeuristicLocale();

        @Override
        protected boolean defaultIsRtl();
    }

}

