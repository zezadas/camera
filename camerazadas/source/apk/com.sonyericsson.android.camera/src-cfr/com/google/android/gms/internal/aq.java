/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.kb;
import java.util.ArrayList;

public class aq {
    private static boolean a(Character.UnicodeBlock unicodeBlock) {
        if (unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeBlock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeBlock == Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT || unicodeBlock == Character.UnicodeBlock.BOPOMOFO || unicodeBlock == Character.UnicodeBlock.HIRAGANA || unicodeBlock == Character.UnicodeBlock.KATAKANA || unicodeBlock == Character.UnicodeBlock.HANGUL_SYLLABLES || unicodeBlock == Character.UnicodeBlock.HANGUL_JAMO) {
            return true;
        }
        return false;
    }

    static boolean d(int n) {
        if (Character.isLetter(n) && aq.a(Character.UnicodeBlock.of(n))) {
            return true;
        }
        return false;
    }

    public static int o(String string) {
        return kb.a(string.getBytes(), 0, string.length(), 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String[] p(String string) {
        if (string == null) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<String>();
        char[] arrc = string.toCharArray();
        int n = string.length();
        int n2 = 0;
        int n3 = 0;
        int n4 = 0;
        while (n4 < n) {
            int n5 = Character.codePointAt(arrc, n4);
            int n6 = Character.charCount(n5);
            if (aq.d(n5)) {
                if (n2 != 0) {
                    arrayList.add(new String(arrc, n3, n4 - n3));
                }
                arrayList.add(new String(arrc, n4, n6));
                n5 = 0;
                n2 = n3;
                n3 = n5;
            } else if (Character.isLetterOrDigit(n5)) {
                if (n2 == 0) {
                    n3 = n4;
                }
                n2 = n3;
                n3 = 1;
            } else if (n2 != 0) {
                arrayList.add(new String(arrc, n3, n4 - n3));
                n2 = n3;
                n3 = 0;
            } else {
                n5 = n3;
                n3 = n2;
                n2 = n5;
            }
            n5 = n4 + n6;
            n4 = n2;
            n2 = n3;
            n3 = n4;
            n4 = n5;
        }
        return arrayList.toArray(new String[arrayList.size()]);
    }
}

