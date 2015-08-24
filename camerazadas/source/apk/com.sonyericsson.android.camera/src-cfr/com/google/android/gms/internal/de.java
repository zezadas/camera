/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
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
public class de {
    private final Context mContext;
    private final gv md;
    private final Map<String, String> qM;

    public de(gv gv, Map<String, String> map) {
        this.md = gv;
        this.qM = map;
        this.mContext = gv.dz();
    }

    String B(String string) {
        return Uri.parse(string).getLastPathSegment();
    }

    DownloadManager.Request b(String object, String string) {
        object = new DownloadManager.Request(Uri.parse((String)object));
        object.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, string);
        object.allowScanningByMediaScanner();
        object.setNotificationVisibility(1);
        return object;
    }

    public void execute() {
        if (!new bl(this.mContext).bl()) {
            gs.W("Store picture feature is not supported on this device.");
            return;
        }
        if (TextUtils.isEmpty((CharSequence)this.qM.get("iurl"))) {
            gs.W("Image url cannot be empty.");
            return;
        }
        final String string = this.qM.get("iurl");
        if (!URLUtil.isValidUrl(string)) {
            gs.W("Invalid image url:" + string);
            return;
        }
        final String string2 = this.B(string);
        if (!gj.N(string2)) {
            gs.W("Image type not recognized:");
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setTitle((CharSequence)gb.c(R.string.store_picture_title, "Save image"));
        builder.setMessage((CharSequence)gb.c(R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
        builder.setPositiveButton((CharSequence)gb.c(R.string.accept, "Accept"), new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface object, int n) {
                object = (DownloadManager)de.this.mContext.getSystemService("download");
                try {
                    object.enqueue(de.this.b(string, string2));
                    return;
                }
                catch (IllegalStateException var1_2) {
                    gs.U("Could not store picture.");
                    return;
                }
            }
        });
        builder.setNegativeButton((CharSequence)gb.c(R.string.decline, "Decline"), new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                de.this.md.b("onStorePictureCanceled", new JSONObject());
            }
        });
        builder.create().show();
    }

}

