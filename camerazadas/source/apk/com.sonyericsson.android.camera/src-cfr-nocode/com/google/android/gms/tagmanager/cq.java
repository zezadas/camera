/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.ol;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.o;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 */
class cq
implements o.f {
    private final String aoc;
    private final ExecutorService aqA;
    private bg<ol.a> aqt;
    private final Context mContext;

    cq(Context var1, String var2);

    private cr.c a(ByteArrayOutputStream var1);

    private void d(ol.a var1) throws IllegalArgumentException;

    private cr.c k(byte[] var1);

    @Override
    public void a(bg<ol.a> var1);

    @Override
    public void b(ol.a var1);

    boolean c(ol.a var1);

    @Override
    public cr.c ff(int var1);

    void oR();

    File oS();

    @Override
    public void oc();

    @Override
    public void release();

}

