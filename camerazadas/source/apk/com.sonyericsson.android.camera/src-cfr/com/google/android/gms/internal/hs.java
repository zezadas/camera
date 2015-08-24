/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.hi;
import com.google.android.gms.internal.hq;
import com.google.android.gms.internal.ht;
import com.google.android.gms.internal.ll;
import com.google.android.gms.internal.pn;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.zip.CRC32;

public class hs
implements SafeParcelable {
    public static final ht CREATOR = new ht();
    final int BR;
    final hg CD;
    final long CE;
    final int CF;
    final he CG;
    public final String oT;

    hs(int n, hg hg, long l, int n2, String string, he he) {
        this.BR = n;
        this.CD = hg;
        this.CE = l;
        this.CF = n2;
        this.oT = string;
        this.CG = he;
    }

    public hs(hg hg, long l, int n) {
        this(1, hg, l, n, null, null);
    }

    public hs(String string, Intent intent, String string2, Uri uri, String string3, List<AppIndexApi.AppIndexingLink> list) {
        this(1, hs.a(string, intent), System.currentTimeMillis(), 0, null, hs.a(intent, string2, uri, string3, list).fj());
    }

    public static he.a a(Intent object, String object2, Uri uri, String string, List<AppIndexApi.AppIndexingLink> list) {
        he.a a = new he.a();
        a.a(hs.av((String)object2));
        if (uri != null) {
            a.a(hs.f(uri));
        }
        if (list != null) {
            a.a(hs.b(list));
        }
        if ((object2 = object.getAction()) != null) {
            a.a(hs.j("intent_action", (String)object2));
        }
        if ((object2 = object.getDataString()) != null) {
            a.a(hs.j("intent_data", (String)object2));
        }
        if ((object2 = object.getComponent()) != null) {
            a.a(hs.j("intent_activity", object2.getClassName()));
        }
        if ((object = object.getExtras()) != null && (object = object.getString("intent_extra_data_key")) != null) {
            a.a(hs.j("intent_extra_data", (String)object));
        }
        return a.ar(string).D(true);
    }

    public static hg a(String string, Intent intent) {
        return hs.i(string, hs.g(intent));
    }

    private static hi av(String string) {
        return new hi(string, new hq.a("title").P(1).F(true).au("name").fm(), "text1");
    }

    private static hi b(List<AppIndexApi.AppIndexingLink> list) {
        ll.a a = new ll.a();
        ll.a.a[] arra = new ll.a.a[list.size()];
        for (int i = 0; i < arra.length; ++i) {
            arra[i] = new ll.a.a();
            AppIndexApi.AppIndexingLink appIndexingLink = list.get(i);
            arra[i].adG = appIndexingLink.appIndexingUrl.toString();
            arra[i].adH = appIndexingLink.webUrl.toString();
            arra[i].viewId = appIndexingLink.viewId;
        }
        a.adE = arra;
        return new hi(pn.f(a), new hq.a("outlinks").E(true).au(".private:outLinks").at("blob").fm());
    }

    private static hi f(Uri uri) {
        return new hi(uri.toString(), new hq.a("web_url").P(4).E(true).au("url").fm());
    }

    private static String g(Intent object) {
        object = object.toUri(1);
        CRC32 cRC32 = new CRC32();
        try {
            cRC32.update(object.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException var0_1) {
            throw new IllegalStateException(var0_1);
        }
        return Long.toHexString(cRC32.getValue());
    }

    private static hg i(String string, String string2) {
        return new hg(string, "", string2);
    }

    private static hi j(String string, String string2) {
        return new hi(string2, new hq.a(string).E(true).fm(), string);
    }

    @Override
    public int describeContents() {
        ht ht = CREATOR;
        return 0;
    }

    public String toString() {
        return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d]", this.CD, this.CE, this.CF);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ht ht = CREATOR;
        ht.a(this, parcel, n);
    }
}

