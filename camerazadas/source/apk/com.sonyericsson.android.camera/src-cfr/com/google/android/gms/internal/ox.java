/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.oy;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;
import com.google.android.gms.wallet.Wallet;

public class ox
implements Payments {
    @Override
    public void changeMaskedWallet(GoogleApiClient googleApiClient, final String string, final String string2, final int n) {
        googleApiClient.a(new Wallet.b(){

            @Override
            protected void a(oy oy) {
                oy.d(string, string2, n);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public void checkForPreAuthorization(GoogleApiClient googleApiClient, final int n) {
        googleApiClient.a(new Wallet.b(){

            @Override
            protected void a(oy oy) {
                oy.fI(n);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public void loadFullWallet(GoogleApiClient googleApiClient, final FullWalletRequest fullWalletRequest, final int n) {
        googleApiClient.a(new Wallet.b(){

            @Override
            protected void a(oy oy) {
                oy.a(fullWalletRequest, n);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public void loadMaskedWallet(GoogleApiClient googleApiClient, final MaskedWalletRequest maskedWalletRequest, final int n) {
        googleApiClient.a(new Wallet.b(){

            @Override
            protected void a(oy oy) {
                oy.a(maskedWalletRequest, n);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public void notifyTransactionStatus(GoogleApiClient googleApiClient, final NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        googleApiClient.a(new Wallet.b(){

            @Override
            protected void a(oy oy) {
                oy.a(notifyTransactionStatusRequest);
                this.b(Status.Jv);
            }
        });
    }

}

