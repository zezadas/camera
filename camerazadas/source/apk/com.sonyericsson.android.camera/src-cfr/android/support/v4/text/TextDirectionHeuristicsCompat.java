/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

import android.support.v4.text.TextDirectionHeuristicCompat;
import android.support.v4.text.TextUtilsCompat;
import java.nio.CharBuffer;
import java.util.Locale;

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

    static {
        LTR = new TextDirectionHeuristicInternal(null, false);
        RTL = new TextDirectionHeuristicInternal(null, true);
        FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, false);
        FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, true);
        ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, false);
        LOCALE = TextDirectionHeuristicLocale.INSTANCE;
    }

    private static int isRtlText(int n) {
        switch (n) {
            default: {
                return 2;
            }
            case 0: {
                return 1;
            }
            case 1: 
            case 2: 
        }
        return 0;
    }

    private static int isRtlTextOrFormat(int n) {
        switch (n) {
            default: {
                return 2;
            }
            case 0: 
            case 14: 
            case 15: {
                return 1;
            }
            case 1: 
            case 2: 
            case 16: 
            case 17: 
        }
        return 0;
    }

    private static class AnyStrong
    implements TextDirectionAlgorithm {
        public static final AnyStrong INSTANCE_LTR;
        public static final AnyStrong INSTANCE_RTL;
        private final boolean mLookForRtl;

        static {
            INSTANCE_RTL = new AnyStrong(true);
            INSTANCE_LTR = new AnyStrong(false);
        }

        private AnyStrong(boolean bl) {
            this.mLookForRtl = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public int checkRtl(CharSequence charSequence, int n, int n2) {
            int n3 = 1;
            int n4 = 0;
            block4 : for (int i = n; i < n + n2; ++i) {
                switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i)))) {
                    case 0: {
                        if (this.mLookForRtl) {
                            return 0;
                        }
                        n4 = 1;
                    }
                    default: {
                        continue block4;
                    }
                    case 1: {
                        n4 = n3;
                        if (!this.mLookForRtl) return n4;
                        n4 = 1;
                    }
                }
            }
            if (n4 == 0) {
                return 2;
            }
            n4 = n3;
            if (this.mLookForRtl) return n4;
            return 0;
        }
    }

    private static class FirstStrong
    implements TextDirectionAlgorithm {
        public static final FirstStrong INSTANCE = new FirstStrong();

        private FirstStrong() {
        }

        @Override
        public int checkRtl(CharSequence charSequence, int n, int n2) {
            int n3 = 2;
            for (int i = n; i < n + n2 && n3 == 2; ++i) {
                n3 = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i)));
            }
            return n3;
        }
    }

    private static interface TextDirectionAlgorithm {
        public int checkRtl(CharSequence var1, int var2, int var3);
    }

    private static abstract class TextDirectionHeuristicImpl
    implements TextDirectionHeuristicCompat {
        private final TextDirectionAlgorithm mAlgorithm;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }

        private boolean doCheck(CharSequence charSequence, int n, int n2) {
            switch (this.mAlgorithm.checkRtl(charSequence, n, n2)) {
                default: {
                    return this.defaultIsRtl();
                }
                case 0: {
                    return true;
                }
                case 1: 
            }
            return false;
        }

        protected abstract boolean defaultIsRtl();

        @Override
        public boolean isRtl(CharSequence charSequence, int n, int n2) {
            if (charSequence == null || n < 0 || n2 < 0 || charSequence.length() - n2 < n) {
                throw new IllegalArgumentException();
            }
            if (this.mAlgorithm == null) {
                return this.defaultIsRtl();
            }
            return this.doCheck(charSequence, n, n2);
        }

        @Override
        public boolean isRtl(char[] arrc, int n, int n2) {
            return this.isRtl(CharBuffer.wrap(arrc), n, n2);
        }
    }

    private static class TextDirectionHeuristicInternal
    extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        private TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean bl) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = bl;
        }

        @Override
        protected boolean defaultIsRtl() {
            return this.mDefaultIsRtl;
        }
    }

    private static class TextDirectionHeuristicLocale
    extends TextDirectionHeuristicImpl {
        public static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();

        public TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override
        protected boolean defaultIsRtl() {
            if (TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                return true;
            }
            return false;
        }
    }

}

