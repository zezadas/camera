/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;

public class ip {
    private static boolean GX = false;
    private boolean GY;
    private boolean GZ;
    private String Ha;
    private final String mTag;

    public ip(String string) {
        this(string, ip.fS());
    }

    public ip(String string, boolean bl) {
        this.mTag = string;
        this.GY = bl;
        this.GZ = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private /* varargs */ String e(String string, Object ... object) {
        if (object.length != 0) {
            string = String.format(string, (Object[])object);
        }
        object = string;
        if (TextUtils.isEmpty((CharSequence)this.Ha)) return object;
        return this.Ha + string;
    }

    public static boolean fS() {
        return GX;
    }

    public /* varargs */ void a(String string, Object ... arrobject) {
        if (this.fR()) {
            Log.v(this.mTag, this.e(string, arrobject));
        }
    }

    public /* varargs */ void a(Throwable throwable, String string, Object ... arrobject) {
        if (this.fQ() || GX) {
            Log.d(this.mTag, this.e(string, arrobject), throwable);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void aK(String string) {
        string = TextUtils.isEmpty((CharSequence)string) ? null : String.format("[%s] ", string);
        this.Ha = string;
    }

    public /* varargs */ void b(String string, Object ... arrobject) {
        if (this.fQ() || GX) {
            Log.d(this.mTag, this.e(string, arrobject));
        }
    }

    public /* varargs */ void c(String string, Object ... arrobject) {
        Log.i(this.mTag, this.e(string, arrobject));
    }

    public /* varargs */ void d(String string, Object ... arrobject) {
        Log.w(this.mTag, this.e(string, arrobject));
    }

    public boolean fQ() {
        return this.GY;
    }

    public boolean fR() {
        return this.GZ;
    }
}

