/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.dw;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.ec;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gg;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
@ez
public class dx
extends gg
implements ServiceConnection {
    private Context mContext;
    private final Object mw;
    private boolean sl;
    private el sm;
    private dw sn;
    private ec so;
    private List<ea> sp;
    private ee sq;

    public dx(Context var1, el var2, ee var3);

    static /* synthetic */ ee a(dx var0);

    private void a(ea var1, String var2, String var3);

    static /* synthetic */ Context b(dx var0);

    private void b(long var1);

    static /* synthetic */ el c(dx var0);

    private boolean c(long var1);

    private void cp();

    @Override
    public void co();

    @Override
    public void onServiceConnected(ComponentName var1, IBinder var2);

    @Override
    public void onServiceDisconnected(ComponentName var1);

    @Override
    public void onStop();

}

