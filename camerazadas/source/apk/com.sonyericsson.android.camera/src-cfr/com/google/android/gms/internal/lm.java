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
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.ln;
import com.google.android.gms.internal.lo;

public class lm
extends e<lo> {
    private final String Dd;
    private a adM;
    private final int mTheme;
    private Activity nr;

    public lm(Activity activity, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String string, int n) {
        super((Context)activity, looper, connectionCallbacks, onConnectionFailedListener, new String[0]);
        this.Dd = string;
        this.nr = activity;
        this.mTheme = n;
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.d(e, 6171000, this.getContext().getPackageName());
    }

    public void a(UserAddressRequest userAddressRequest, int n) {
        this.lT();
        this.adM = new a(n, this.nr);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", this.getContext().getPackageName());
            if (!TextUtils.isEmpty((CharSequence)this.Dd)) {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(this.Dd, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", this.mTheme);
            this.lS().a(this.adM, userAddressRequest, bundle);
            return;
        }
        catch (RemoteException var1_2) {
            Log.e("AddressClientImpl", "Exception requesting user address", var1_2);
            Bundle bundle = new Bundle();
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_ERROR_CODE", 555);
            this.adM.g(1, bundle);
            return;
        }
    }

    protected lo aF(IBinder iBinder) {
        return lo.a.aH(iBinder);
    }

    @Override
    public void disconnect() {
        super.disconnect();
        if (this.adM != null) {
            this.adM.setActivity(null);
            this.adM = null;
        }
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.identity.service.BIND";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.aF(iBinder);
    }

    protected lo lS() {
        return (lo)super.gS();
    }

    protected void lT() {
        super.dJ();
    }

    public static final class a
    extends ln.a {
        private final int Lu;
        private Activity nr;

        public a(int n, Activity activity) {
            this.Lu = n;
            this.nr = activity;
        }

        private void setActivity(Activity activity) {
            this.nr = activity;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void g(int n, Bundle object) {
            if (n == 1) {
                Intent intent = new Intent();
                intent.putExtras((Bundle)object);
                object = this.nr.createPendingResult(this.Lu, intent, 1073741824);
                if (object == null) return;
                {
                    try {
                        object.send(1);
                        return;
                    }
                    catch (PendingIntent.CanceledException var2_3) {
                        Log.w("AddressClientImpl", "Exception settng pending result", var2_3);
                        return;
                    }
                }
            }
            PendingIntent pendingIntent = null;
            if (object != null) {
                pendingIntent = (PendingIntent)object.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
            }
            if ((object = new ConnectionResult(n, pendingIntent)).hasResolution()) {
                try {
                    object.startResolutionForResult(this.nr, this.Lu);
                    return;
                }
                catch (IntentSender.SendIntentException var2_4) {
                    Log.w("AddressClientImpl", "Exception starting pending intent", var2_4);
                    return;
                }
            }
            try {
                object = this.nr.createPendingResult(this.Lu, new Intent(), 1073741824);
                if (object == null) {
                    return;
                }
                object.send(1);
                return;
            }
            catch (PendingIntent.CanceledException var2_5) {
                Log.w("AddressClientImpl", "Exception setting pending result", var2_5);
                return;
            }
        }
    }

}

