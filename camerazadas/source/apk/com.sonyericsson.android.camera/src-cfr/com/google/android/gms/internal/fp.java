/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fo;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class fp
implements fo.a<bo> {
    @Override
    public /* synthetic */ bq.a a(fo fo, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return this.b(fo, jSONObject);
    }

    public bo b(fo object, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        Future<Drawable> future = object.a(jSONObject, "image", true);
        object = object.a(jSONObject, "app_icon", true);
        return new bo(jSONObject.getString("headline"), future.get(), jSONObject.getString("body"), (Drawable)object.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0), jSONObject.optString("store"), jSONObject.optString("price"));
    }
}

