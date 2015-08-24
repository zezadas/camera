/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.i;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

/*
 * Exception performing whole class analysis.
 */
@Deprecated
public class PlusClient
implements GooglePlayServicesClient {
    final e ald;

    PlusClient(e var1);

    @Deprecated
    public void clearDefaultAccount();

    @Deprecated
    @Override
    public void connect();

    @Deprecated
    @Override
    public void disconnect();

    @Deprecated
    public String getAccountName();

    @Deprecated
    public Person getCurrentPerson();

    @Deprecated
    @Override
    public boolean isConnected();

    @Deprecated
    @Override
    public boolean isConnecting();

    @Deprecated
    @Override
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Deprecated
    @Override
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener var1);

    @Deprecated
    public void loadMoments(OnMomentsLoadedListener var1);

    @Deprecated
    public void loadMoments(OnMomentsLoadedListener var1, int var2, String var3, Uri var4, String var5, String var6);

    @Deprecated
    public void loadPeople(OnPeopleLoadedListener var1, Collection<String> var2);

    @Deprecated
    public /* varargs */ void loadPeople(OnPeopleLoadedListener var1, String ... var2);

    @Deprecated
    public void loadVisiblePeople(OnPeopleLoadedListener var1, int var2, String var3);

    @Deprecated
    public void loadVisiblePeople(OnPeopleLoadedListener var1, String var2);

    e mZ();

    @Deprecated
    @Override
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Deprecated
    @Override
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    @Deprecated
    public void removeMoment(String var1);

    @Deprecated
    public void revokeAccessAndDisconnect(OnAccessRevokedListener var1);

    @Deprecated
    @Override
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks var1);

    @Deprecated
    @Override
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener var1);

    @Deprecated
    public void writeMoment(Moment var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @Deprecated
    public static class Builder {
        private final GooglePlayServicesClient.ConnectionCallbacks ali;
        private final GooglePlayServicesClient.OnConnectionFailedListener alj;
        private final i alk;
        private final Context mContext;

        public Builder(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3);

        public PlusClient build();

        public Builder clearScopes();

        public Builder setAccountName(String var1);

        public /* varargs */ Builder setActions(String ... var1);

        public /* varargs */ Builder setScopes(String ... var1);
    }

    @Deprecated
    public static interface OnAccessRevokedListener {
        public void onAccessRevoked(ConnectionResult var1);
    }

    @Deprecated
    public static interface OnMomentsLoadedListener {
        @Deprecated
        public void onMomentsLoaded(ConnectionResult var1, MomentBuffer var2, String var3, String var4);
    }

    @Deprecated
    public static interface OnPeopleLoadedListener {
        public void onPeopleLoaded(ConnectionResult var1, PersonBuffer var2, String var3);
    }

    @Deprecated
    public static interface OrderBy {
        @Deprecated
        public static final int ALPHABETICAL = 0;
        @Deprecated
        public static final int BEST = 1;
    }

}

