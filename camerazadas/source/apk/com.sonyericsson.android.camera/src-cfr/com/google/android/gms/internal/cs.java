/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.ct;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cx;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.util.Map;

@ez
public final class cs
extends ct.a {
    private Map<Class<? extends NetworkExtras>, NetworkExtras> qC;

    private <NETWORK_EXTRAS extends com.google.ads.mediation.NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> cu z(String string) throws RemoteException {
        try {
            Object object = Class.forName(string, false, cs.class.getClassLoader());
            if (com.google.ads.mediation.MediationAdapter.class.isAssignableFrom(object)) {
                object = (com.google.ads.mediation.MediationAdapter)object.newInstance();
                return new cz(object, (com.google.ads.mediation.NetworkExtras)this.qC.get(object.getAdditionalParametersType()));
            }
            if (MediationAdapter.class.isAssignableFrom(object)) {
                return new cx((MediationAdapter)object.newInstance());
            }
            gs.W("Could not instantiate mediation adapter: " + string + " (not a valid adapter).");
            throw new RemoteException();
        }
        catch (Throwable var2_3) {
            gs.W("Could not instantiate mediation adapter: " + string + ". " + var2_3.getMessage());
            throw new RemoteException();
        }
    }

    public void d(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.qC = map;
    }

    @Override
    public cu x(String string) throws RemoteException {
        return this.z(string);
    }

    @Override
    public boolean y(String string) throws RemoteException {
        try {
            boolean bl = CustomEvent.class.isAssignableFrom(Class.forName(string, false, cs.class.getClassLoader()));
            return bl;
        }
        catch (Throwable var3_3) {
            gs.W("Could not load custom event implementation class: " + string + ", assuming old implementation.");
            return false;
        }
    }
}

