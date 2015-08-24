/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fa;
import com.google.android.gms.internal.ff;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.k;

/*
 * Exception performing whole class analysis.
 */
@ez
public class fb
extends gg
implements ff.a {
    private final Context mContext;
    private final Object mw;
    private cm pR;
    private final fa.a sU;
    private final Object sV;
    private final fi.a sW;
    private final k sX;
    private gg sY;
    private fk sZ;

    public fb(Context var1, fi.a var2, k var3, fa.a var4);

    private ay a(fi var1) throws a;

    static /* synthetic */ Object a(fb var0);

    static /* synthetic */ fa.a b(fb var0);

    private boolean c(long var1) throws a;

    private void cx() throws a;

    private void e(long var1) throws a;

    private void r(boolean var1);

    @Override
    public void a(fk var1);

    @Override
    public void co();

    @Override
    public void onStop();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    private static final class a
    extends Exception {
        private final int tc;

        public a(String var1, int var2);

        public int getErrorCode();
    }

}

