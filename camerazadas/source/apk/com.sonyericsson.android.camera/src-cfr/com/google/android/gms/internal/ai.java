/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gt;
import java.util.concurrent.Future;

@ez
public class ai {
    protected ah a(Context object, gt gt, final gk<ah> gk) {
        object = new aj((Context)object, gt);
        object.a(new ah.a((ah)object){
            final /* synthetic */ ah na;

            @Override
            public void aM() {
                gk.a(this.na);
            }
        });
        return object;
    }

    public Future<ah> a(final Context context, final gt gt, final String string) {
        final gk<ah> gk = new gk<ah>();
        gr.wC.post(new Runnable(){

            @Override
            public void run() {
                ai.this.a(context, gt, gk).f(string);
            }
        });
        return gk;
    }

}

