/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.ot;
import com.google.android.gms.internal.ow;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;

public class oy
extends e<ot> {
    private final String Dd;
    private final int atL;
    private final int mTheme;
    private final Activity nr;

    public oy(Activity activity, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, int n, String string, int n2) {
        super((Context)activity, looper, connectionCallbacks, onConnectionFailedListener, new String[0]);
        this.nr = activity;
        this.atL = n;
        this.Dd = string;
        this.mTheme = n2;
    }

    public static Bundle a(int n, String string, String string2, int n2) {
        Bundle bundle = new Bundle();
        bundle.putInt("com.google.android.gms.wallet.EXTRA_ENVIRONMENT", n);
        bundle.putString("androidPackageName", string);
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            bundle.putParcelable("com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT", new Account(string2, "com.google"));
        }
        bundle.putInt("com.google.android.gms.wallet.EXTRA_THEME", n2);
        return bundle;
    }

    private Bundle pO() {
        return oy.a(this.atL, this.nr.getPackageName(), this.Dd, this.mTheme);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.k(e, 6171000, this.getContext().getPackageName());
    }

    public void a(FullWalletRequest fullWalletRequest, int n) {
        b b = new b(n);
        Bundle bundle = this.pO();
        try {
            ((ot)this.gS()).a(fullWalletRequest, bundle, (ow)b);
            return;
        }
        catch (RemoteException var1_2) {
            Log.e("WalletClientImpl", "RemoteException getting full wallet", var1_2);
            b.a(8, (FullWallet)null, Bundle.EMPTY);
            return;
        }
    }

    public void a(MaskedWalletRequest maskedWalletRequest, int n) {
        Bundle bundle = this.pO();
        b b = new b(n);
        try {
            ((ot)this.gS()).a(maskedWalletRequest, bundle, (ow)b);
            return;
        }
        catch (RemoteException var1_2) {
            Log.e("WalletClientImpl", "RemoteException getting masked wallet", var1_2);
            b.a(8, (MaskedWallet)null, Bundle.EMPTY);
            return;
        }
    }

    public void a(NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        Bundle bundle = this.pO();
        try {
            ((ot)this.gS()).a(notifyTransactionStatusRequest, bundle);
            return;
        }
        catch (RemoteException var1_2) {
            return;
        }
    }

    protected ot bP(IBinder iBinder) {
        return ot.a.bL(iBinder);
    }

    public void d(String string, String string2, int n) {
        Bundle bundle = this.pO();
        b b = new b(n);
        try {
            ((ot)this.gS()).a(string, string2, bundle, b);
            return;
        }
        catch (RemoteException var1_2) {
            Log.e("WalletClientImpl", "RemoteException changing masked wallet", var1_2);
            b.a(8, (MaskedWallet)null, Bundle.EMPTY);
            return;
        }
    }

    public void fI(int n) {
        Bundle bundle = this.pO();
        b b = new b(n);
        try {
            ((ot)this.gS()).a(bundle, b);
            return;
        }
        catch (RemoteException var3_3) {
            Log.e("WalletClientImpl", "RemoteException during checkForPreAuthorization", var3_3);
            b.a(8, false, Bundle.EMPTY);
            return;
        }
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.wallet.internal.IOwService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.wallet.service.BIND";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.bP(iBinder);
    }

    private static class a
    extends ow.a {
        private a() {
        }

        @Override
        public void a(int n, FullWallet fullWallet, Bundle bundle) {
        }

        @Override
        public void a(int n, MaskedWallet maskedWallet, Bundle bundle) {
        }

        @Override
        public void a(int n, boolean bl, Bundle bundle) {
        }

        @Override
        public void a(Status status, op op, Bundle bundle) {
        }

        @Override
        public void i(int n, Bundle bundle) {
        }
    }

    final class b
    extends a {
        private final int Lu;

        public b(int n) {
            this.Lu = n;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(int n, FullWallet parcelable, Bundle object) {
            int n2;
            void var5_9;
            PendingIntent pendingIntent;
            ConnectionResult connectionResult;
            Object var5_7 = null;
            if (connectionResult != null) {
                PendingIntent pendingIntent2 = (PendingIntent)connectionResult.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            if ((connectionResult = new ConnectionResult(n, (PendingIntent)var5_9)).hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(oy.this.nr, this.Lu);
                    return;
                }
                catch (IntentSender.SendIntentException var2_3) {
                    Log.w("WalletClientImpl", "Exception starting pending intent", var2_3);
                    return;
                }
            }
            Intent intent = new Intent();
            if (connectionResult.isSuccess()) {
                n2 = -1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_FULL_WALLET", parcelable);
            } else {
                n2 = n == 408 ? 0 : 1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", n);
            }
            if ((pendingIntent = oy.this.nr.createPendingResult(this.Lu, intent, 1073741824)) == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onFullWalletLoaded");
                return;
            }
            try {
                pendingIntent.send(n2);
                return;
            }
            catch (PendingIntent.CanceledException var2_5) {
                Log.w("WalletClientImpl", "Exception setting pending result", var2_5);
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(int n, MaskedWallet parcelable, Bundle object) {
            int n2;
            void var5_9;
            PendingIntent pendingIntent;
            ConnectionResult connectionResult;
            Object var5_7 = null;
            if (connectionResult != null) {
                PendingIntent pendingIntent2 = (PendingIntent)connectionResult.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            if ((connectionResult = new ConnectionResult(n, (PendingIntent)var5_9)).hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(oy.this.nr, this.Lu);
                    return;
                }
                catch (IntentSender.SendIntentException var2_3) {
                    Log.w("WalletClientImpl", "Exception starting pending intent", var2_3);
                    return;
                }
            }
            Intent intent = new Intent();
            if (connectionResult.isSuccess()) {
                n2 = -1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET", parcelable);
            } else {
                n2 = n == 408 ? 0 : 1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", n);
            }
            if ((pendingIntent = oy.this.nr.createPendingResult(this.Lu, intent, 1073741824)) == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onMaskedWalletLoaded");
                return;
            }
            try {
                pendingIntent.send(n2);
                return;
            }
            catch (PendingIntent.CanceledException var2_5) {
                Log.w("WalletClientImpl", "Exception setting pending result", var2_5);
                return;
            }
        }

        @Override
        public void a(int n, boolean bl, Bundle parcelable) {
            parcelable = new Intent();
            parcelable.putExtra("com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED", bl);
            parcelable = oy.this.nr.createPendingResult(this.Lu, (Intent)parcelable, 1073741824);
            if (parcelable == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onPreAuthorizationDetermined");
                return;
            }
            try {
                parcelable.send(-1);
                return;
            }
            catch (PendingIntent.CanceledException var3_4) {
                Log.w("WalletClientImpl", "Exception setting pending result", var3_4);
                return;
            }
        }

        @Override
        public void i(int n, Bundle object) {
            o.b(object, (Object)"Bundle should not be null");
            object = new ConnectionResult(n, (PendingIntent)object.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT"));
            if (object.hasResolution()) {
                try {
                    object.startResolutionForResult(oy.this.nr, this.Lu);
                    return;
                }
                catch (IntentSender.SendIntentException var2_3) {
                    Log.w("WalletClientImpl", "Exception starting pending intent", var2_3);
                    return;
                }
            }
            Log.e("WalletClientImpl", "Create Wallet Objects confirmation UI will not be shown connection result: " + object);
            object = new Intent();
            object.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", 413);
            object = oy.this.nr.createPendingResult(this.Lu, (Intent)object, 1073741824);
            if (object == null) {
                Log.w("WalletClientImpl", "Null pending result returned for onWalletObjectsCreated");
                return;
            }
            try {
                object.send(1);
                return;
            }
            catch (PendingIntent.CanceledException var2_4) {
                Log.w("WalletClientImpl", "Exception setting pending result", var2_4);
                return;
            }
        }
    }

}

