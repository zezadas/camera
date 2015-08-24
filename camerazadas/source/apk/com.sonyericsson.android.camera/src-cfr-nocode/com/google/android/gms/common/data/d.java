/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;

/*
 * Exception performing whole class analysis.
 */
public abstract class d {
    protected final DataHolder II;
    protected int JX;
    private int JY;

    public d(DataHolder var1, int var2);

    protected void a(String var1, CharArrayBuffer var2);

    public boolean aQ(String var1);

    protected Uri aR(String var1);

    protected boolean aS(String var1);

    protected void ap(int var1);

    public boolean equals(Object var1);

    protected boolean getBoolean(String var1);

    protected byte[] getByteArray(String var1);

    protected float getFloat(String var1);

    protected int getInteger(String var1);

    protected long getLong(String var1);

    protected String getString(String var1);

    protected int gz();

    public int hashCode();

    public boolean isDataValid();
}

