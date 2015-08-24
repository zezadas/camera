/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.cx;
import com.google.android.gms.tagmanager.n;
import com.google.android.gms.tagmanager.o;
import com.google.android.gms.tagmanager.r;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/*
 * Exception performing whole class analysis.
 */
public class TagManager {
    private static TagManager arN;
    private final DataLayer aod;
    private final r aqu;
    private final a arK;
    private final cx arL;
    private final ConcurrentMap<n, Boolean> arM;
    private final Context mContext;

    TagManager(Context var1, a var2, DataLayer var3, cx var4);

    static /* synthetic */ void a(TagManager var0, String var1);

    private void cT(String var1);

    public static TagManager getInstance(Context var0);

    private void py();

    void a(n var1);

    boolean b(n var1);

    public void dispatch();

    public DataLayer getDataLayer();

    boolean i(Uri var1);

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String var1, int var2);

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String var1, int var2, Handler var3);

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String var1, int var2);

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String var1, int var2, Handler var3);

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String var1, int var2);

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String var1, int var2, Handler var3);

    public void setVerboseLoggingEnabled(boolean var1);

    static interface a {
        public o a(Context var1, TagManager var2, Looper var3, String var4, int var5, r var6);
    }

}

