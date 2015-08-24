/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import java.io.PrintWriter;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static char[] sFormatStr;
    private static final Object sFormatSync;

    static;

    public TimeUtils();

    private static int accumField(int var0, int var1, boolean var2, int var3);

    public static void formatDuration(long var0, long var2, PrintWriter var4);

    public static void formatDuration(long var0, PrintWriter var2);

    public static void formatDuration(long var0, PrintWriter var2, int var3);

    public static void formatDuration(long var0, StringBuilder var2);

    private static int formatDurationLocked(long var0, int var2);

    private static int printField(char[] var0, int var1, char var2, int var3, boolean var4, int var5);
}

