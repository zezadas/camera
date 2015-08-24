/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.internal.or;
import com.google.android.gms.internal.os;
import com.google.android.gms.internal.ou;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public class oz
extends g<ou> {
    private static oz aux;

    protected oz() {
        super("com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl");
    }

    public static or a(Activity object, c c, WalletFragmentOptions walletFragmentOptions, os os) throws GooglePlayServicesNotAvailableException {
        int n = GooglePlayServicesUtil.isGooglePlayServicesAvailable((Context)object);
        if (n != 0) {
            throw new GooglePlayServicesNotAvailableException(n);
        }
        try {
            object = ((ou)oz.pP().L((Context)object)).a(e.k(object), c, walletFragmentOptions, os);
            return object;
        }
        catch (RemoteException var0_1) {
            throw new RuntimeException(var0_1);
        }
        catch (g.a var0_2) {
            throw new RuntimeException(var0_2);
        }
    }

    private static oz pP() {
        if (aux == null) {
            aux = new oz();
        }
        return aux;
    }

    protected ou bQ(IBinder iBinder) {
        return ou.a.bM(iBinder);
    }

    @Override
    protected /* synthetic */ Object d(IBinder iBinder) {
        return this.bQ(iBinder);
    }
}

