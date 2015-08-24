/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.l;

public class k {
    private String kR = "googleads.g.doubleclick.net";
    private String kS = "/pagead/ads";
    private String kT = "ad.doubleclick.net";
    private String[] kU = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private g kV;

    public k(g g) {
        this.kV = g;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private Uri a(Uri uri, Context object, String string, boolean bl) throws l {
        boolean bl2;
        try {
            bl2 = this.a(uri);
            if (bl2) {
                if (uri.toString().contains((CharSequence)"dc_ms=")) {
                    throw new l("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new l("Query parameter already exists: ms");
            }
        }
        catch (UnsupportedOperationException var1_2) {
            throw new l("Provided Uri is not in a valid state");
        }
        object = bl ? this.kV.a((Context)object, string) : this.kV.a((Context)object);
        if (!bl2) return this.a(uri, "ms", (String)object);
        return this.b(uri, "dc_ms", (String)object);
    }

    private Uri a(Uri uri, String string, String string2) throws UnsupportedOperationException {
        int n;
        String string3 = uri.toString();
        int n2 = n = string3.indexOf("&adurl");
        if (n == -1) {
            n2 = string3.indexOf("?adurl");
        }
        if (n2 != -1) {
            return Uri.parse(string3.substring(0, n2 + 1) + string + "=" + string2 + "&" + string3.substring(n2 + 1));
        }
        return uri.buildUpon().appendQueryParameter(string, string2).build();
    }

    private Uri b(Uri object, String string, String string2) {
        String string3 = object.toString();
        int n = string3.indexOf(";adurl");
        if (n != -1) {
            return Uri.parse(string3.substring(0, n + 1) + string + "=" + string2 + ";" + string3.substring(n + 1));
        }
        object = object.getEncodedPath();
        n = string3.indexOf((String)object);
        return Uri.parse(string3.substring(0, object.length() + n) + ";" + string + "=" + string2 + ";" + string3.substring(object.length() + n));
    }

    public Uri a(Uri uri, Context context) throws l {
        try {
            uri = this.a(uri, context, uri.getQueryParameter("ai"), true);
            return uri;
        }
        catch (UnsupportedOperationException var1_2) {
            throw new l("Provided Uri is not in a valid state");
        }
    }

    public void a(MotionEvent motionEvent) {
        this.kV.a(motionEvent);
    }

    public boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            boolean bl = uri.getHost().equals(this.kT);
            return bl;
        }
        catch (NullPointerException var1_2) {
            return false;
        }
    }

    public boolean b(Uri object) {
        int n;
        String[] arrstring;
        int n2;
        boolean bl = false;
        if (object == null) {
            throw new NullPointerException();
        }
        try {
            object = object.getHost();
            arrstring = this.kU;
            n2 = arrstring.length;
            n = 0;
        }
        catch (NullPointerException var1_2) {
            return false;
        }
        do {
            boolean bl2 = bl;
            if (n < n2) {
                bl2 = object.endsWith(arrstring[n]);
                if (bl2) {
                    bl2 = true;
                }
            } else {
                return bl2;
            }
            ++n;
        } while (true);
    }

    public g z() {
        return this.kV;
    }
}

