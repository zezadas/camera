/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.text;

import android.util.Log;

class ICUCompatIcs {
    private static final String TAG = "ICUCompatIcs";
    private static Method sAddLikelySubtagsMethod;
    private static Method sGetScriptMethod;

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static {
        Class class_;
        try {
            class_ = Class.forName("libcore.icu.ICU");
            if (class_ == null) return;
        }
        catch (Exception var0_1) {
            Log.w("ICUCompatIcs", var0_1);
            return;
        }
        sGetScriptMethod = class_.getMethod("getScript", String.class);
        sAddLikelySubtagsMethod = class_.getMethod("addLikelySubtags", String.class);
    }

    ICUCompatIcs() {
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static String addLikelySubtags(String string) {
        try {
            if (sAddLikelySubtagsMethod == null) return string;
            return (String)sAddLikelySubtagsMethod.invoke(null, string);
        }
        catch (IllegalAccessException var1_2) {
            Log.w("ICUCompatIcs", var1_2);
        }
        return string;
        catch (InvocationTargetException invocationTargetException) {
            Log.w("ICUCompatIcs", invocationTargetException);
            return string;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static String getScript(String string) {
        try {
            if (sGetScriptMethod == null) return null;
            return (String)sGetScriptMethod.invoke(null, string);
        }
        catch (IllegalAccessException var0_1) {
            Log.w("ICUCompatIcs", var0_1);
        }
        return null;
        catch (InvocationTargetException invocationTargetException) {
            Log.w("ICUCompatIcs", invocationTargetException);
            return null;
        }
    }
}

