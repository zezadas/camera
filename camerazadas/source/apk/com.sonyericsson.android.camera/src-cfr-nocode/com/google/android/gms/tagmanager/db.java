/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.tagmanager.ab;
import com.google.android.gms.tagmanager.ap;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.HttpClient;

/*
 * Exception performing whole class analysis.
 */
class db
implements ab {
    private final String arH;
    private final HttpClient arI;
    private a arJ;
    private final Context arq;

    db(HttpClient var1, Context var2, a var3);

    private HttpEntityEnclosingRequest a(URL var1);

    private void a(HttpEntityEnclosingRequest var1);

    static String c(Locale var0);

    String a(String var1, String var2, String var3, String var4, String var5, String var6);

    URL d(ap var1);

    @Override
    public boolean dX();

    @Override
    public void j(List<ap> var1);

    public static interface a {
        public void a(ap var1);

        public void b(ap var1);

        public void c(ap var1);
    }

}

