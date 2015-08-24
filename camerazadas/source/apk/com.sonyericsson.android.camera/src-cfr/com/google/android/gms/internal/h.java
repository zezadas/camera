/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.internal.f;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.n;
import com.google.android.gms.internal.pe;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public abstract class h
implements g {
    protected MotionEvent kw;
    protected DisplayMetrics kx;
    protected m ky;
    private n kz;

    protected h(Context context, m m, n n) {
        this.ky = m;
        this.kz = n;
        try {
            this.kx = context.getResources().getDisplayMetrics();
            return;
        }
        catch (UnsupportedOperationException var1_2) {
            this.kx = new DisplayMetrics();
            this.kx.density = 1.0f;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private String a(Context object, String string, boolean bl) {
        block12 : {
            this.t();
            if (bl) {
                this.c((Context)object);
            } else {
                this.b((Context)object);
            }
            object = this.u();
            // MONITOREXIT : this
            if (object.length != 0) break block12;
            return Integer.toString(5);
        }
        try {
            return this.a((byte[])object, string);
        }
        catch (NoSuchAlgorithmException var1_2) {
            return Integer.toString(7);
        }
        catch (UnsupportedEncodingException var1_3) {
            return Integer.toString(7);
        }
        catch (IOException var1_4) {
            return Integer.toString(3);
        }
    }

    private void t() {
        this.kz.reset();
    }

    private byte[] u() throws IOException {
        return this.kz.A();
    }

    @Override
    public String a(Context context) {
        return this.a(context, null, false);
    }

    @Override
    public String a(Context context, String string) {
        return this.a(context, string, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    String a(byte[] arrby, String string) throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException {
        Object object = arrby;
        if (arrby.length > 239) {
            this.t();
            this.a(20, 1);
            object = this.u();
        }
        if (object.length < 239) {
            arrby = new byte[239 - object.length];
            new SecureRandom().nextBytes(arrby);
            arrby = ByteBuffer.allocate(240).put((byte)object.length).put((byte[])object).put(arrby).array();
        } else {
            arrby = ByteBuffer.allocate(240).put((byte)object.length).put((byte[])object).array();
        }
        object = MessageDigest.getInstance("MD5");
        object.update(arrby);
        object = object.digest();
        arrby = ByteBuffer.allocate(256).put((byte[])object).put(arrby).array();
        object = new byte[256];
        new f().a(arrby, (byte[])object);
        if (string != null && string.length() > 0) {
            this.a(string, (byte[])object);
        }
        return this.ky.a((byte[])object, true);
    }

    @Override
    public void a(int n, int n2, int n3) {
        if (this.kw != null) {
            this.kw.recycle();
        }
        this.kw = MotionEvent.obtain(0, n3, 1, (float)n * this.kx.density, (float)n2 * this.kx.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
    }

    protected void a(int n, long l) throws IOException {
        this.kz.b(n, l);
    }

    protected void a(int n, String string) throws IOException {
        this.kz.b(n, string);
    }

    @Override
    public void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.kw != null) {
                this.kw.recycle();
            }
            this.kw = MotionEvent.obtain(motionEvent);
        }
    }

    void a(String string, byte[] arrby) throws UnsupportedEncodingException {
        String string2 = string;
        if (string.length() > 32) {
            string2 = string.substring(0, 32);
        }
        new pe(string2.getBytes("UTF-8")).o(arrby);
    }

    protected abstract void b(Context var1);

    protected abstract void c(Context var1);
}

