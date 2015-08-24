/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.WalletFragmentInitParams;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public interface or
extends IInterface {
    public void a(d var1, WalletFragmentOptions var2, Bundle var3) throws RemoteException;

    public int getState() throws RemoteException;

    public void initialize(WalletFragmentInitParams var1) throws RemoteException;

    public void onActivityResult(int var1, int var2, Intent var3) throws RemoteException;

    public void onCreate(Bundle var1) throws RemoteException;

    public d onCreateView(d var1, d var2, Bundle var3) throws RemoteException;

    public void onPause() throws RemoteException;

    public void onResume() throws RemoteException;

    public void onSaveInstanceState(Bundle var1) throws RemoteException;

    public void onStart() throws RemoteException;

    public void onStop() throws RemoteException;

    public void setEnabled(boolean var1) throws RemoteException;

    public void updateMaskedWallet(MaskedWallet var1) throws RemoteException;

    public void updateMaskedWalletRequest(MaskedWalletRequest var1) throws RemoteException;

    public static abstract class com.google.android.gms.internal.or$a
    extends Binder
    implements or {
        public static or bJ(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements or {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public void a(d var1, WalletFragmentOptions var2, Bundle var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public int getState() throws RemoteException;

            @Override
            public void initialize(WalletFragmentInitParams var1) throws RemoteException;

            @Override
            public void onActivityResult(int var1, int var2, Intent var3) throws RemoteException;

            @Override
            public void onCreate(Bundle var1) throws RemoteException;

            @Override
            public d onCreateView(d var1, d var2, Bundle var3) throws RemoteException;

            @Override
            public void onPause() throws RemoteException;

            @Override
            public void onResume() throws RemoteException;

            @Override
            public void onSaveInstanceState(Bundle var1) throws RemoteException;

            @Override
            public void onStart() throws RemoteException;

            @Override
            public void onStop() throws RemoteException;

            @Override
            public void setEnabled(boolean var1) throws RemoteException;

            @Override
            public void updateMaskedWallet(MaskedWallet var1) throws RemoteException;

            @Override
            public void updateMaskedWalletRequest(MaskedWalletRequest var1) throws RemoteException;
        }

    }

}

