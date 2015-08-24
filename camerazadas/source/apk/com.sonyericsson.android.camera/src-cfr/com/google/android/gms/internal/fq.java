/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fo;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class fq
implements fo.a<bp> {
    @Override
    public /* synthetic */ bq.a a(fo fo, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return this.c(fo, jSONObject);
    }

    public bp c(fo object, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        Future<Drawable> future = object.a(jSONObject, "image", true);
        object = object.a(jSONObject, "secondary_image", false);
        return new bp(jSONObject.getString("headline"), future.get(), jSONObject.getString("body"), (Drawable)object.get(), jSONObject.getString("call_to_action"), jSONObject.getString("attribution"));
    }
}

