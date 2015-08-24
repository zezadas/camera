/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.ni;
import com.google.android.gms.internal.nj;
import com.google.android.gms.internal.nl;
import com.google.android.gms.internal.nm;
import com.google.android.gms.internal.pn;
import com.google.android.gms.internal.pr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class no
extends e<nh> {
    private final String BZ;
    private final nl akW;
    private final nj akX;
    private boolean akY;
    private final Object mw;

    public no(Context context, nl nl) {
        super(context, nl, nl, new String[0]);
        this.BZ = context.getPackageName();
        this.akW = o.i(nl);
        this.akW.a(this);
        this.akX = new nj();
        this.mw = new Object();
        this.akY = true;
    }

    private void c(nm nm, ni ni) {
        this.akX.a(nm, ni);
    }

    private void d(nm nm, ni ni) {
        try {
            this.mY();
            ((nh)this.gS()).a(this.BZ, nm, ni);
            return;
        }
        catch (RemoteException var3_3) {
            Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
            this.c(nm, ni);
            return;
        }
        catch (IllegalStateException var3_4) {
            Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
            this.c(nm, ni);
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void mY() {
        block7 : {
            block8 : {
                var1_1 = this.akY == false;
                a.I(var1_1);
                if (this.akX.isEmpty() != false) return;
                var2_2 = null;
                try {
                    var3_4 = new ArrayList<ni>();
                    var4_5 = this.akX.mW().iterator();
lbl8: // 4 sources:
                    if (!var4_5.hasNext()) break block7;
                    var5_6 = var4_5.next();
                    if (var5_6.akO == null) ** GOTO lbl13
                    ((nh)this.gS()).a(this.BZ, var5_6.akM, pn.f(var5_6.akO));
                    ** GOTO lbl8
lbl13: // 1 sources:
                    if (!var5_6.akM.equals(var2_2)) break block8;
                    var3_4.add(var5_6.akN);
                    ** GOTO lbl8
                }
                catch (RemoteException var2_3) {
                    Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
                }
                return;
            }
            if (!var3_4.isEmpty()) {
                ((nh)this.gS()).a(this.BZ, var2_2, var3_4);
                var3_4.clear();
            }
            var2_2 = var5_6.akM;
            var3_4.add(var5_6.akN);
            ** GOTO lbl8
        }
        if (!var3_4.isEmpty()) {
            ((nh)this.gS()).a(this.BZ, var2_2, var3_4);
        }
        this.akX.clear();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void S(boolean bl) {
        Object object = this.mw;
        synchronized (object) {
            boolean bl2 = this.akY;
            this.akY = bl;
            if (bl2 && !this.akY) {
                this.mY();
            }
            return;
        }
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        Bundle bundle = new Bundle();
        l.f(e, 6171000, this.getContext().getPackageName(), bundle);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(nm nm, ni ni) {
        Object object = this.mw;
        synchronized (object) {
            if (this.akY) {
                this.c(nm, ni);
            } else {
                this.d(nm, ni);
            }
            return;
        }
    }

    protected nh bD(IBinder iBinder) {
        return nh.a.bC(iBinder);
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.playlog.internal.IPlayLogService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.playlog.service.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.bD(iBinder);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void start() {
        Object object = this.mw;
        synchronized (object) {
            if (!(this.isConnecting() || this.isConnected())) {
                this.akW.R(true);
                this.connect();
                return;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stop() {
        Object object = this.mw;
        synchronized (object) {
            this.akW.R(false);
            this.disconnect();
            return;
        }
    }
}

