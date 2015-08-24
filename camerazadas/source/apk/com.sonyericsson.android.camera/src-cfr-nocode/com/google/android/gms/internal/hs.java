/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.hi;
import com.google.android.gms.internal.ht;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class hs
implements SafeParcelable {
    public static final ht CREATOR;
    final int BR;
    final hg CD;
    final long CE;
    final int CF;
    final he CG;
    public final String oT;

    static;

    hs(int var1, hg var2, long var3, int var5, String var6, he var7);

    public hs(hg var1, long var2, int var4);

    public hs(String var1, Intent var2, String var3, Uri var4, String var5, List<AppIndexApi.AppIndexingLink> var6);

    public static he.a a(Intent var0, String var1, Uri var2, String var3, List<AppIndexApi.AppIndexingLink> var4);

    public static hg a(String var0, Intent var1);

    private static hi av(String var0);

    private static hi b(List<AppIndexApi.AppIndexingLink> var0);

    private static hi f(Uri var0);

    private static String g(Intent var0);

    private static hg i(String var0, String var1);

    private static hi j(String var0, String var1);

    @Override
    public int describeContents();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

