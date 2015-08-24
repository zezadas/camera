/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cv;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class cz<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters>
extends cu.a {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> qG;
    private final NETWORK_EXTRAS qH;

    public cz(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> var1, NETWORK_EXTRAS var2);

    private SERVER_PARAMETERS b(String var1, int var2, String var3) throws RemoteException;

    @Override
    public void a(d var1, av var2, String var3, cv var4) throws RemoteException;

    @Override
    public void a(d var1, av var2, String var3, String var4, cv var5) throws RemoteException;

    @Override
    public void a(d var1, ay var2, av var3, String var4, cv var5) throws RemoteException;

    @Override
    public void a(d var1, ay var2, av var3, String var4, String var5, cv var6) throws RemoteException;

    @Override
    public void destroy() throws RemoteException;

    @Override
    public d getView() throws RemoteException;

    @Override
    public void pause() throws RemoteException;

    @Override
    public void resume() throws RemoteException;

    @Override
    public void showInterstitial() throws RemoteException;
}

