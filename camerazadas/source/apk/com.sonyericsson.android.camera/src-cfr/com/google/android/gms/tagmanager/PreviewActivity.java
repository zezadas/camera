/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.tagmanager.TagManager;
import com.google.android.gms.tagmanager.bh;

public class PreviewActivity
extends Activity {
    private void d(String string, String string2, String string3) {
        AlertDialog alertDialog = new AlertDialog.Builder(this).create();
        alertDialog.setTitle((CharSequence)string);
        alertDialog.setMessage((CharSequence)string2);
        alertDialog.setButton(-1, (CharSequence)string3, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
            }
        });
        alertDialog.show();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onCreate(Bundle object) {
        try {
            super.onCreate((Bundle)object);
            bh.U("Preview activity");
            object = this.getIntent().getData();
            if (!TagManager.getInstance(this).i((Uri)object)) {
                object = "Cannot preview the app with the uri: " + object + ". Launching current version instead.";
                bh.W((String)object);
                this.d("Preview failure", (String)object, "Continue");
            }
            if ((object = this.getPackageManager().getLaunchIntentForPackage(this.getPackageName())) != null) {
                bh.U("Invoke the launch activity for package name: " + this.getPackageName());
                this.startActivity((Intent)object);
                return;
            }
            bh.U("No launch activity found for package name: " + this.getPackageName());
            return;
        }
        catch (Exception var1_2) {
            bh.T("Calling preview threw an exception: " + var1_2.getMessage());
            return;
        }
    }

}

