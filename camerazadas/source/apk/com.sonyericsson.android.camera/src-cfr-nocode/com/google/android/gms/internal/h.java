/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.n;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

/*
 * Exception performing whole class analysis.
 */
public abstract class h
implements g {
    protected MotionEvent kw;
    protected DisplayMetrics kx;
    protected m ky;
    private n kz;

    protected h(Context var1, m var2, n var3);

    private String a(Context var1, String var2, boolean var3);

    private void t();

    private byte[] u() throws IOException;

    @Override
    public String a(Context var1);

    @Override
    public String a(Context var1, String var2);

    String a(byte[] var1, String var2) throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException;

    @Override
    public void a(int var1, int var2, int var3);

    protected void a(int var1, long var2) throws IOException;

    protected void a(int var1, String var2) throws IOException;

    @Override
    public void a(MotionEvent var1);

    void a(String var1, byte[] var2) throws UnsupportedEncodingException;

    protected abstract void b(Context var1);

    protected abstract void c(Context var1);
}

