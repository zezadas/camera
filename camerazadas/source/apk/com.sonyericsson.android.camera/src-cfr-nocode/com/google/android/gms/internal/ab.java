/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.u;

/*
 * Exception performing whole class analysis.
 */
@ez
public class ab {
    private final a mj;
    private final Runnable mk;
    private av ml;
    private boolean mm;
    private boolean mn;
    private long mo;

    public ab(u var1);

    ab(u var1, a var2);

    static /* synthetic */ av a(ab var0);

    static /* synthetic */ boolean a(ab var0, boolean var1);

    public void a(av var1, long var2);

    public boolean ay();

    public void c(av var1);

    public void cancel();

    public void pause();

    public void resume();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private final Handler mHandler;

        public a(Handler var1);

        public boolean postDelayed(Runnable var1, long var2);

        public void removeCallbacks(Runnable var1);
    }

}

