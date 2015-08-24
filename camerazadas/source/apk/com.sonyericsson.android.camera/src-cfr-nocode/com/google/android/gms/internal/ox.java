/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.oy;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;
import com.google.android.gms.wallet.Wallet;

/*
 * Exception performing whole class analysis ignored.
 */
public class ox
implements Payments {
    public ox();

    @Override
    public void changeMaskedWallet(GoogleApiClient var1, String var2, String var3, int var4);

    @Override
    public void checkForPreAuthorization(GoogleApiClient var1, int var2);

    @Override
    public void loadFullWallet(GoogleApiClient var1, FullWalletRequest var2, int var3);

    @Override
    public void loadMaskedWallet(GoogleApiClient var1, MaskedWalletRequest var2, int var3);

    @Override
    public void notifyTransactionStatus(GoogleApiClient var1, NotifyTransactionStatusRequest var2);

}

