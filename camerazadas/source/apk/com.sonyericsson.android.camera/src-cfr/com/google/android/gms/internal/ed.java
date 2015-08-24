/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public final class ed {
    public static String D(String string) {
        if (string == null) {
            return null;
        }
        try {
            string = new JSONObject(string).getString("developerPayload");
            return string;
        }
        catch (JSONException var0_1) {
            gs.W("Fail to parse purchase data");
            return null;
        }
    }

    public static String E(String string) {
        if (string == null) {
            return null;
        }
        try {
            string = new JSONObject(string).getString("purchaseToken");
            return string;
        }
        catch (JSONException var0_1) {
            gs.W("Fail to parse purchase data");
            return null;
        }
    }

    public static int b(Bundle object) {
        if ((object = object.get("RESPONSE_CODE")) == null) {
            gs.W("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (object instanceof Integer) {
            return (Integer)object;
        }
        if (object instanceof Long) {
            return (int)((Long)object).longValue();
        }
        gs.W("Unexpected type for intent response code. " + object.getClass().getName());
        return 5;
    }

    public static int d(Intent object) {
        if ((object = object.getExtras().get("RESPONSE_CODE")) == null) {
            gs.W("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (object instanceof Integer) {
            return (Integer)object;
        }
        if (object instanceof Long) {
            return (int)((Long)object).longValue();
        }
        gs.W("Unexpected type for intent response code. " + object.getClass().getName());
        return 5;
    }

    public static String e(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.getStringExtra("INAPP_PURCHASE_DATA");
    }

    public static String f(Intent intent) {
        if (intent == null) {
            return null;
        }
        return intent.getStringExtra("INAPP_DATA_SIGNATURE");
    }
}

