/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import java.io.PrintWriter;

public class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static char[] sFormatStr;
    private static final Object sFormatSync;

    static {
        sFormatSync = new Object();
        sFormatStr = new char[24];
    }

    private static int accumField(int n, int n2, boolean bl, int n3) {
        if (n > 99 || bl && n3 >= 3) {
            return n2 + 3;
        }
        if (n > 9 || bl && n3 >= 2) {
            return n2 + 2;
        }
        if (bl || n > 0) {
            return n2 + 1;
        }
        return 0;
    }

    public static void formatDuration(long l, long l2, PrintWriter printWriter) {
        if (l == 0) {
            printWriter.print("--");
            return;
        }
        TimeUtils.formatDuration(l - l2, printWriter, 0);
    }

    public static void formatDuration(long l, PrintWriter printWriter) {
        TimeUtils.formatDuration(l, printWriter, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void formatDuration(long l, PrintWriter printWriter, int n) {
        Object object = sFormatSync;
        synchronized (object) {
            n = TimeUtils.formatDurationLocked(l, n);
            printWriter.print(new String(sFormatStr, 0, n));
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void formatDuration(long l, StringBuilder stringBuilder) {
        Object object = sFormatSync;
        synchronized (object) {
            int n = TimeUtils.formatDurationLocked(l, 0);
            stringBuilder.append(sFormatStr, 0, n);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int formatDurationLocked(long l, int n) {
        boolean bl;
        int n2;
        if (sFormatStr.length < n) {
            sFormatStr = new char[n];
        }
        char[] arrc = sFormatStr;
        if (l == 0) {
            do {
                if (n - 1 >= 0) {
                    arrc[0] = 48;
                    return 1;
                }
                arrc[0] = 32;
            } while (true);
        }
        if (l > 0) {
            n2 = 43;
        } else {
            n2 = 45;
            l = - l;
        }
        int n3 = (int)(l % 1000);
        int n4 = (int)Math.floor(l / 1000);
        int n5 = 0;
        int n6 = 0;
        int n7 = 0;
        int n8 = n4;
        if (n4 > 86400) {
            n5 = n4 / 86400;
            n8 = n4 - 86400 * n5;
        }
        n4 = n8;
        if (n8 > 3600) {
            n6 = n8 / 3600;
            n4 = n8 - n6 * 3600;
        }
        int n9 = n4;
        if (n4 > 60) {
            n7 = n4 / 60;
            n9 = n4 - n7 * 60;
        }
        int n10 = 0;
        int n11 = 0;
        if (n != 0) {
            n8 = TimeUtils.accumField(n5, 1, false, 0);
            bl = n8 > 0;
            bl = (n8+=TimeUtils.accumField(n6, 1, bl, 2)) > 0;
            bl = (n8+=TimeUtils.accumField(n7, 1, bl, 2)) > 0;
            n4 = n8 + TimeUtils.accumField(n9, 1, bl, 2);
            n8 = n4 > 0 ? 3 : 0;
            n4+=TimeUtils.accumField(n3, 2, true, n8) + 1;
            n8 = n11;
            do {
                n10 = n8++;
                if (n4 >= n) break;
                arrc[n8] = 32;
                ++n4;
            } while (true);
        }
        arrc[n10] = n2;
        n4 = n10 + 1;
        n = n != 0 ? 1 : 0;
        bl = (n5 = TimeUtils.printField(arrc, n5, 'd', n4, false, 0)) != n4;
        n8 = n != 0 ? 2 : 0;
        bl = (n5 = TimeUtils.printField(arrc, n6, 'h', n5, bl, n8)) != n4;
        n8 = n != 0 ? 2 : 0;
        bl = (n5 = TimeUtils.printField(arrc, n7, 'm', n5, bl, n8)) != n4;
        n8 = n != 0 ? 2 : 0;
        n8 = TimeUtils.printField(arrc, n9, 's', n5, bl, n8);
        n = n != 0 && n8 != n4 ? 3 : 0;
        n = TimeUtils.printField(arrc, n3, 'm', n8, true, n);
        arrc[n] = 115;
        return n + 1;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int printField(char[] var0, int var1_1, char var2_2, int var3_3, boolean var4_4, int var5_5) {
        if (!var4_4) {
            var6_6 = var3_3;
            if (var1_1 <= 0) return var6_6;
        }
        if (var4_4 && var5_5 >= 3) ** GOTO lbl-1000
        var6_6 = var1_1;
        var7_7 = var3_3;
        if (var1_1 > 99) lbl-1000: // 2 sources:
        {
            var6_6 = var1_1 / 100;
            var0[var3_3] = (char)(var6_6 + 48);
            var7_7 = var3_3 + 1;
            var6_6 = var1_1 - var6_6 * 100;
        }
        if (var4_4 && var5_5 >= 2 || var6_6 > 9) ** GOTO lbl-1000
        var5_5 = var6_6;
        var1_1 = var7_7;
        if (var3_3 != var7_7) lbl-1000: // 2 sources:
        {
            var3_3 = var6_6 / 10;
            var0[var7_7] = (char)(var3_3 + 48);
            var1_1 = var7_7 + 1;
            var5_5 = var6_6 - var3_3 * 10;
        }
        var0[var1_1] = (char)(var5_5 + 48);
        var0[++var1_1] = var2_2;
        return var1_1 + 1;
    }
}

