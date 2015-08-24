/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import java.util.Map;
import java.util.Set;

@ez
public final class gm {
    private final Context mContext;
    private int mState = 0;
    private final float ri;
    private String ws;
    private float wt;
    private float wu;
    private float wv;

    public gm(Context context) {
        this.mContext = context;
        this.ri = context.getResources().getDisplayMetrics().density;
    }

    public gm(Context context, String string) {
        this(context);
        this.ws = string;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, float f, float f2) {
        if (n == 0) {
            this.mState = 0;
            this.wt = f;
            this.wu = f2;
            this.wv = f2;
            return;
        } else {
            if (this.mState == -1) return;
            {
                if (n == 2) {
                    if (f2 > this.wu) {
                        this.wu = f2;
                    } else if (f2 < this.wv) {
                        this.wv = f2;
                    }
                    if (this.wu - this.wv > 30.0f * this.ri) {
                        this.mState = -1;
                        return;
                    }
                    if (this.mState == 0 || this.mState == 2) {
                        if (f - this.wt >= 50.0f * this.ri) {
                            this.wt = f;
                            ++this.mState;
                        }
                    } else if ((this.mState == 1 || this.mState == 3) && f - this.wt <= -50.0f * this.ri) {
                        this.wt = f;
                        ++this.mState;
                    }
                    if (this.mState == 1 || this.mState == 3) {
                        if (f <= this.wt) return;
                        {
                            this.wt = f;
                            return;
                        }
                    } else {
                        if (this.mState != 2 || f >= this.wt) return;
                        {
                            this.wt = f;
                            return;
                        }
                    }
                } else {
                    if (n != 1 || this.mState != 4) return;
                    {
                        this.showDialog();
                        return;
                    }
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void showDialog() {
        Object object;
        Map<String, String> map;
        if (!TextUtils.isEmpty((CharSequence)this.ws)) {
            map = new Uri.Builder().encodedQuery(this.ws).build();
            object = new StringBuilder();
            map = gj.c((Uri)map);
            for (String string : map.keySet()) {
                object.append(string).append(" = ").append(map.get(string)).append("\n\n");
            }
            if (TextUtils.isEmpty((CharSequence)(object = object.toString().trim()))) {
                object = "No debug information";
            }
        } else {
            object = "No debug information";
        }
        map = new AlertDialog.Builder(this.mContext);
        map.setMessage((CharSequence)object);
        map.setTitle((CharSequence)"Ad Information");
        map.setPositiveButton((CharSequence)"Share", new DialogInterface.OnClickListener((String)object){
            final /* synthetic */ String ww;

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                gm.this.mContext.startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", this.ww), (CharSequence)"Share via"));
            }
        });
        map.setNegativeButton((CharSequence)"Close", new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
            }
        });
        map.create().show();
    }

    public void Q(String string) {
        this.ws = string;
    }

    public void c(MotionEvent motionEvent) {
        int n = motionEvent.getHistorySize();
        for (int i = 0; i < n; ++i) {
            this.a(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        this.a(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }

}

