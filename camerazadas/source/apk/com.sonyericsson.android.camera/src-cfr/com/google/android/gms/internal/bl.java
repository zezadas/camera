/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ez;
import java.util.List;

@ez
public class bl {
    private final Context mContext;

    public bl(Context context) {
        o.b(context, (Object)"Context can not be null");
        this.mContext = context;
    }

    public static boolean bn() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public boolean a(Intent intent) {
        boolean bl = false;
        o.b(intent, (Object)"Intent can not be null");
        if (!this.mContext.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            bl = true;
        }
        return bl;
    }

    public boolean bj() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return this.a(intent);
    }

    public boolean bk() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return this.a(intent);
    }

    public boolean bl() {
        if (bl.bn() && this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        return false;
    }

    public boolean bm() {
        return false;
    }

    public boolean bo() {
        Intent intent = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event");
        if (Build.VERSION.SDK_INT >= 14 && this.a(intent)) {
            return true;
        }
        return false;
    }
}

