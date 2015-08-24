/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

class j {
    public static byte[] cm(String string) {
        int n = string.length();
        if (n % 2 != 0) {
            throw new IllegalArgumentException("purported base16 string has odd number of characters");
        }
        byte[] arrby = new byte[n / 2];
        for (int i = 0; i < n; i+=2) {
            int n2 = Character.digit(string.charAt(i), 16);
            int n3 = Character.digit(string.charAt(i + 1), 16);
            if (n2 == -1 || n3 == -1) {
                throw new IllegalArgumentException("purported base16 string has illegal char");
            }
            arrby[i / 2] = (byte)((n2 << 4) + n3);
        }
        return arrby;
    }

    public static String d(byte[] arrby) {
        StringBuilder stringBuilder = new StringBuilder();
        for (byte by : arrby) {
            if ((by & 240) == 0) {
                stringBuilder.append("0");
            }
            stringBuilder.append(Integer.toHexString(by & 255));
        }
        return stringBuilder.toString().toUpperCase();
    }
}

