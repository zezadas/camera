/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;

public class r {
    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String a(String string, String string2, Context context, AttributeSet object, boolean bl, boolean bl2, String string3) {
        string = object == null ? null : object.getAttributeValue(string, string2);
        object = string;
        if (string != null) {
            object = string;
            if (string.startsWith("@string/")) {
                object = string;
                if (bl) {
                    String string4 = string.substring("@string/".length());
                    String string5 = context.getPackageName();
                    object = new TypedValue();
                    try {
                        context.getResources().getValue(string5 + ":string/" + string4, (TypedValue)object, true);
                    }
                    catch (Resources.NotFoundException var2_3) {
                        Log.w(string3, "Could not find resource for " + string2 + ": " + string);
                    }
                    if (object.string != null) {
                        object = object.string.toString();
                    } else {
                        Log.w(string3, "Resource " + string2 + " was not a string: " + object);
                        object = string;
                    }
                }
            }
        }
        if (bl2 && object == null) {
            Log.w(string3, "Required XML attribute \"" + string2 + "\" missing");
        }
        return object;
    }
}

