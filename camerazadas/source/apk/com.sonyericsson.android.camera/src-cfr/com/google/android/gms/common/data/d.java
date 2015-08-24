/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;

public abstract class d {
    protected final DataHolder II;
    protected int JX;
    private int JY;

    public d(DataHolder dataHolder, int n) {
        this.II = o.i(dataHolder);
        this.ap(n);
    }

    protected void a(String string, CharArrayBuffer charArrayBuffer) {
        this.II.a(string, this.JX, this.JY, charArrayBuffer);
    }

    public boolean aQ(String string) {
        return this.II.aQ(string);
    }

    protected Uri aR(String string) {
        return this.II.g(string, this.JX, this.JY);
    }

    protected boolean aS(String string) {
        return this.II.h(string, this.JX, this.JY);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void ap(int n) {
        boolean bl = n >= 0 && n < this.II.getCount();
        o.I(bl);
        this.JX = n;
        this.JY = this.II.ar(this.JX);
    }

    public boolean equals(Object object) {
        boolean bl;
        boolean bl2 = bl = false;
        if (object instanceof d) {
            object = (d)object;
            bl2 = bl;
            if (n.equal(object.JX, this.JX)) {
                bl2 = bl;
                if (n.equal(object.JY, this.JY)) {
                    bl2 = bl;
                    if (object.II == this.II) {
                        bl2 = true;
                    }
                }
            }
        }
        return bl2;
    }

    protected boolean getBoolean(String string) {
        return this.II.d(string, this.JX, this.JY);
    }

    protected byte[] getByteArray(String string) {
        return this.II.f(string, this.JX, this.JY);
    }

    protected float getFloat(String string) {
        return this.II.e(string, this.JX, this.JY);
    }

    protected int getInteger(String string) {
        return this.II.b(string, this.JX, this.JY);
    }

    protected long getLong(String string) {
        return this.II.a(string, this.JX, this.JY);
    }

    protected String getString(String string) {
        return this.II.c(string, this.JX, this.JY);
    }

    protected int gz() {
        return this.JX;
    }

    public int hashCode() {
        return n.hashCode(this.JX, this.JY, this.II);
    }

    public boolean isDataValid() {
        if (!this.II.isClosed()) {
            return true;
        }
        return false;
    }
}

