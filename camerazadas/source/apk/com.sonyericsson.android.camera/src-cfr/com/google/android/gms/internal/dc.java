/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.internal.bl;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import java.util.Map;
import org.json.JSONObject;

@ez
public class dc {
    private final Context mContext;
    private final gv md;
    private final Map<String, String> qM;
    private String qN;
    private long qO;
    private long qP;
    private String qQ;
    private String qR;

    public dc(gv gv, Map<String, String> map) {
        this.md = gv;
        this.qM = map;
        this.mContext = gv.dz();
        this.bG();
    }

    private String A(String string) {
        if (TextUtils.isEmpty((CharSequence)this.qM.get(string))) {
            return "";
        }
        return this.qM.get(string);
    }

    private void bG() {
        this.qN = this.A("description");
        this.qQ = this.A("summary");
        this.qO = gj.O(this.qM.get("start"));
        this.qP = gj.O(this.qM.get("end"));
        this.qR = this.A("location");
    }

    Intent createIntent() {
        Intent intent = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        intent.putExtra("title", this.qQ);
        intent.putExtra("eventLocation", this.qR);
        intent.putExtra("description", this.qN);
        intent.putExtra("beginTime", this.qO);
        intent.putExtra("endTime", this.qP);
        intent.setFlags(268435456);
        return intent;
    }

    public void execute() {
        if (!new bl(this.mContext).bo()) {
            gs.W("This feature is not available on this version of the device.");
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setTitle((CharSequence)gb.c(R.string.create_calendar_title, "Create calendar event"));
        builder.setMessage((CharSequence)gb.c(R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
        builder.setPositiveButton((CharSequence)gb.c(R.string.accept, "Accept"), new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface object, int n) {
                object = dc.this.createIntent();
                dc.this.mContext.startActivity((Intent)object);
            }
        });
        builder.setNegativeButton((CharSequence)gb.c(R.string.decline, "Decline"), new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                dc.this.md.b("onCalendarEventCanceled", new JSONObject());
            }
        });
        builder.create().show();
    }

}

