/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

import android.support.v4.text.TextDirectionHeuristicCompat;
import java.util.Locale;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class BidiFormatter {
    private static final int DEFAULT_FLAGS = 2;
    private static final BidiFormatter DEFAULT_LTR_INSTANCE;
    private static final BidiFormatter DEFAULT_RTL_INSTANCE;
    private static TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = '\u202a';
    private static final char LRM = '\u200e';
    private static final String LRM_STRING;
    private static final char PDF = '\u202c';
    private static final char RLE = '\u202b';
    private static final char RLM = '\u200f';
    private static final String RLM_STRING;
    private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    private final int mFlags;
    private final boolean mIsRtlContext;

    static;

    private BidiFormatter(boolean var1, int var2, TextDirectionHeuristicCompat var3);

    /* synthetic */ BidiFormatter(boolean var1, int var2, TextDirectionHeuristicCompat var3,  var4);

    static /* synthetic */ boolean access$000(Locale var0);

    static /* synthetic */ TextDirectionHeuristicCompat access$100();

    static /* synthetic */ BidiFormatter access$200();

    static /* synthetic */ BidiFormatter access$300();

    private static int getEntryDir(String var0);

    private static int getExitDir(String var0);

    public static BidiFormatter getInstance();

    public static BidiFormatter getInstance(Locale var0);

    public static BidiFormatter getInstance(boolean var0);

    private static boolean isRtlLocale(Locale var0);

    private String markAfter(String var1, TextDirectionHeuristicCompat var2);

    private String markBefore(String var1, TextDirectionHeuristicCompat var2);

    public boolean getStereoReset();

    public boolean isRtl(String var1);

    public boolean isRtlContext();

    public String unicodeWrap(String var1);

    public String unicodeWrap(String var1, TextDirectionHeuristicCompat var2);

    public String unicodeWrap(String var1, TextDirectionHeuristicCompat var2, boolean var3);

    public String unicodeWrap(String var1, boolean var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

        public Builder();

        public Builder(Locale var1);

        public Builder(boolean var1);

        private static BidiFormatter getDefaultInstanceFromContext(boolean var0);

        private void initialize(boolean var1);

        public BidiFormatter build();

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat var1);

        public Builder stereoReset(boolean var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DirectionalityEstimator {
        private static final byte[] DIR_TYPE_CACHE;
        private static final int DIR_TYPE_CACHE_SIZE = 1792;
        private int charIndex;
        private final boolean isHtml;
        private char lastChar;
        private final int length;
        private final String text;

        static;

        DirectionalityEstimator(String var1, boolean var2);

        private static byte getCachedDirectionality(char var0);

        private byte skipEntityBackward();

        private byte skipEntityForward();

        private byte skipTagBackward();

        private byte skipTagForward();

        byte dirTypeBackward();

        byte dirTypeForward();

        int getEntryDir();

        int getExitDir();
    }

}

