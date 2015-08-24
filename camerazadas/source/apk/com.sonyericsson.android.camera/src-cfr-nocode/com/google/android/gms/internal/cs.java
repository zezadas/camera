/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.ez;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class cs
extends ct.a {
    private Map<Class<? extends NetworkExtras>, NetworkExtras> qC;

    public cs();

    private <NETWORK_EXTRAS extends com.google.ads.mediation.NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> cu z(String var1) throws RemoteException;

    public void d(Map<Class<? extends NetworkExtras>, NetworkExtras> var1);

    @Override
    public cu x(String var1) throws RemoteException;

    @Override
    public boolean y(String var1) throws RemoteException;
}

