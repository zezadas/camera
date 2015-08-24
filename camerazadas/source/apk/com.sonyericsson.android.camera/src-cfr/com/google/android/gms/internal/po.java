/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pn;

public final class po {
    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private static void a(String string, Object object, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException, InvocationTargetException {
        Class class_;
        Class class_2;
        String string2;
        Field[] arrfield;
        int n;
        int n2;
        int n3;
        int n4;
        if (object == null) {
            return;
        }
        if (object instanceof pn) {
            n = stringBuffer.length();
            if (string != null) {
                stringBuffer2.append(stringBuffer).append(po.dj(string)).append(" <\n");
                stringBuffer.append("  ");
            }
            class_ = object.getClass();
            arrfield = class_.getFields();
            n3 = arrfield.length;
        } else {
            string = po.dj(string);
            stringBuffer2.append(stringBuffer).append(string).append(": ");
            if (object instanceof String) {
                string = po.dk((String)object);
                stringBuffer2.append("\"").append(string).append("\"");
            } else if (object instanceof byte[]) {
                po.a((byte[])object, stringBuffer2);
            } else {
                stringBuffer2.append(object);
            }
            stringBuffer2.append("\n");
            return;
        }
        for (n4 = 0; n4 < n3; ++n4) {
            Field field = arrfield[n4];
            n2 = field.getModifiers();
            string2 = field.getName();
            if ((n2 & 1) != 1 || (n2 & 8) == 8 || string2.startsWith("_") || string2.endsWith("_")) continue;
            class_2 = field.getType();
            Object object2 = field.get(object);
            if (class_2.isArray()) {
                if (class_2.getComponentType() == Byte.TYPE) {
                    po.a(string2, object2, stringBuffer, stringBuffer2);
                    continue;
                }
                n2 = object2 == null ? 0 : Array.getLength(object2);
                for (int i = 0; i < n2; ++i) {
                    po.a(string2, Array.get(object2, i), stringBuffer, stringBuffer2);
                }
                continue;
            }
            po.a(string2, object2, stringBuffer, stringBuffer2);
        }
        arrfield = class_.getMethods();
        n2 = arrfield.length;
        n4 = 0;
        do {
            block19 : {
                if (n4 >= n2) {
                    if (string == null) return;
                    stringBuffer.setLength(n);
                    stringBuffer2.append(stringBuffer).append(">\n");
                    return;
                }
                string2 = arrfield[n4].getName();
                if (string2.startsWith("set")) {
                    string2 = string2.substring(3);
                    try {
                        class_2 = class_.getMethod("has" + string2, new Class[0]);
                        if (!((Boolean)class_2.invoke(object, new Object[0])).booleanValue()) break block19;
                    }
                    catch (NoSuchMethodException var11_13) {}
                    try {
                        class_2 = class_.getMethod("get" + string2, new Class[0]);
                    }
                    catch (NoSuchMethodException var11_12) {
                        break block19;
                    }
                    po.a(string2, class_2.invoke(object, new Object[0]), stringBuffer, stringBuffer2);
                }
            }
            ++n4;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void a(byte[] arrby, StringBuffer stringBuffer) {
        if (arrby == null) {
            stringBuffer.append("\"\"");
            return;
        }
        stringBuffer.append('\"');
        int n = 0;
        do {
            if (n >= arrby.length) {
                stringBuffer.append('\"');
                return;
            }
            int n2 = arrby[n] & 255;
            if (n2 == 92 || n2 == 34) {
                stringBuffer.append('\\').append((char)n2);
            } else if (n2 >= 32 && n2 < 127) {
                stringBuffer.append((char)n2);
            } else {
                stringBuffer.append(String.format("\\%03o", n2));
            }
            ++n;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String bf(String string) {
        int n = string.length();
        StringBuilder stringBuilder = new StringBuilder(n);
        for (int i = 0; i < n; ++i) {
            char c = string.charAt(i);
            if (c >= ' ' && c <= '~' && c != '\"' && c != '\'') {
                stringBuilder.append(c);
                continue;
            }
            stringBuilder.append(String.format("\\u%04x", c));
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String dj(String string) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < string.length(); ++i) {
            char c = string.charAt(i);
            if (i == 0) {
                stringBuffer.append(Character.toLowerCase(c));
                continue;
            }
            if (Character.isUpperCase(c)) {
                stringBuffer.append('_').append(Character.toLowerCase(c));
                continue;
            }
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }

    private static String dk(String string) {
        String string2 = string;
        if (!string.startsWith("http")) {
            string2 = string;
            if (string.length() > 200) {
                string2 = string.substring(0, 200) + "[...]";
            }
        }
        return po.bf(string2);
    }

    public static <T extends pn> String g(T t) {
        if (t == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            po.a(null, t, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        }
        catch (IllegalAccessException var0_1) {
            return "Error printing proto: " + var0_1.getMessage();
        }
        catch (InvocationTargetException var0_2) {
            return "Error printing proto: " + var0_2.getMessage();
        }
    }
}

