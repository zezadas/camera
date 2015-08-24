/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.text.ICUCompat;
import java.util.Locale;

public class TextUtilsCompat {
    private static String ARAB_SCRIPT_SUBTAG;
    private static String HEBR_SCRIPT_SUBTAG;
    public static final Locale ROOT;

    static {
        ROOT = new Locale("", "");
        ARAB_SCRIPT_SUBTAG = "Arab";
        HEBR_SCRIPT_SUBTAG = "Hebr";
    }

    private static int getLayoutDirectionFromFirstChar(Locale locale) {
        switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
            default: {
                return 0;
            }
            case 1: 
            case 2: 
        }
        return 1;
    }

    public static int getLayoutDirectionFromLocale(@Nullable Locale locale) {
        if (!(locale == null || locale.equals(ROOT))) {
            String string = ICUCompat.getScript(ICUCompat.addLikelySubtags(locale.toString()));
            if (string == null) {
                return TextUtilsCompat.getLayoutDirectionFromFirstChar(locale);
            }
            if (string.equalsIgnoreCase(ARAB_SCRIPT_SUBTAG) || string.equalsIgnoreCase(HEBR_SCRIPT_SUBTAG)) {
                return 1;
            }
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    @NonNull
    public static String htmlEncode(@NonNull String string) {
        StringBuilder stringBuilder = new StringBuilder();
        block7 : for (int i = 0; i < string.length(); ++i) {
            char c = string.charAt(i);
            switch (c) {
                default: {
                    stringBuilder.append(c);
                    continue block7;
                }
                case '<': {
                    stringBuilder.append("&lt;");
                    continue block7;
                }
                case '>': {
                    stringBuilder.append("&gt;");
                    continue block7;
                }
                case '&': {
                    stringBuilder.append("&amp;");
                    continue block7;
                }
                case '\'': {
                    stringBuilder.append("&#39;");
                    continue block7;
                }
                case '\"': {
                    stringBuilder.append("&quot;");
                }
            }
        }
        return stringBuilder.toString();
    }
}

