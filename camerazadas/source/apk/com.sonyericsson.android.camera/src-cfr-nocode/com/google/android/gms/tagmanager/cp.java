/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.co;
import com.google.android.gms.tagmanager.o;
import com.google.android.gms.tagmanager.r;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;

/*
 * Exception performing whole class analysis.
 */
class cp
implements o.e {
    private final String aoc;
    private String aoy;
    private bg<c.j> aqt;
    private r aqu;
    private final ScheduledExecutorService aqw;
    private final a aqx;
    private ScheduledFuture<?> aqy;
    private boolean mClosed;
    private final Context mContext;

    public cp(Context var1, String var2, r var3);

    cp(Context var1, String var2, r var3, b var4, a var5);

    static /* synthetic */ Context a(cp var0);

    static /* synthetic */ String b(cp var0);

    private co cK(String var1);

    private void oP();

    @Override
    public void a(bg<c.j> var1);

    @Override
    public void cu(String var1);

    @Override
    public void e(long var1, String var3);

    @Override
    public void release();

    static interface a {
        public co a(r var1);
    }

    static interface b {
        public ScheduledExecutorService oQ();
    }

}

