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
import com.google.android.gms.common.internal.j;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.h;
import com.google.android.gms.plus.internal.i;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

@Deprecated
public class PlusClient
implements GooglePlayServicesClient {
    final e ald;

    PlusClient(e e) {
        this.ald = e;
    }

    @Deprecated
    public void clearDefaultAccount() {
        this.ald.clearDefaultAccount();
    }

    @Deprecated
    @Override
    public void connect() {
        this.ald.connect();
    }

    @Deprecated
    @Override
    public void disconnect() {
        this.ald.disconnect();
    }

    @Deprecated
    public String getAccountName() {
        return this.ald.getAccountName();
    }

    @Deprecated
    public Person getCurrentPerson() {
        return this.ald.getCurrentPerson();
    }

    @Deprecated
    @Override
    public boolean isConnected() {
        return this.ald.isConnected();
    }

    @Deprecated
    @Override
    public boolean isConnecting() {
        return this.ald.isConnecting();
    }

    @Deprecated
    @Override
    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        return this.ald.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Deprecated
    @Override
    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.ald.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Deprecated
    public void loadMoments(final OnMomentsLoadedListener onMomentsLoadedListener) {
        this.ald.k(new BaseImplementation.b<Moments.LoadMomentsResult>(){

            public void a(Moments.LoadMomentsResult loadMomentsResult) {
                onMomentsLoadedListener.onMomentsLoaded(loadMomentsResult.getStatus().gt(), loadMomentsResult.getMomentBuffer(), loadMomentsResult.getNextPageToken(), loadMomentsResult.getUpdated());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.a((Moments.LoadMomentsResult)object);
            }
        });
    }

    @Deprecated
    public void loadMoments(final OnMomentsLoadedListener onMomentsLoadedListener, int n, String string, Uri uri, String string2, String string3) {
        this.ald.a(new BaseImplementation.b<Moments.LoadMomentsResult>(){

            public void a(Moments.LoadMomentsResult loadMomentsResult) {
                onMomentsLoadedListener.onMomentsLoaded(loadMomentsResult.getStatus().gt(), loadMomentsResult.getMomentBuffer(), loadMomentsResult.getNextPageToken(), loadMomentsResult.getUpdated());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.a((Moments.LoadMomentsResult)object);
            }
        }, n, string, uri, string2, string3);
    }

    @Deprecated
    public void loadPeople(final OnPeopleLoadedListener onPeopleLoadedListener, Collection<String> collection) {
        this.ald.a(new BaseImplementation.b<People.LoadPeopleResult>(){

            public void a(People.LoadPeopleResult loadPeopleResult) {
                onPeopleLoadedListener.onPeopleLoaded(loadPeopleResult.getStatus().gt(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.a((People.LoadPeopleResult)object);
            }
        }, collection);
    }

    @Deprecated
    public /* varargs */ void loadPeople(final OnPeopleLoadedListener onPeopleLoadedListener, String ... arrstring) {
        this.ald.d(new BaseImplementation.b<People.LoadPeopleResult>(){

            public void a(People.LoadPeopleResult loadPeopleResult) {
                onPeopleLoadedListener.onPeopleLoaded(loadPeopleResult.getStatus().gt(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.a((People.LoadPeopleResult)object);
            }
        }, arrstring);
    }

    @Deprecated
    public void loadVisiblePeople(final OnPeopleLoadedListener onPeopleLoadedListener, int n, String string) {
        this.ald.a(new BaseImplementation.b<People.LoadPeopleResult>(){

            public void a(People.LoadPeopleResult loadPeopleResult) {
                onPeopleLoadedListener.onPeopleLoaded(loadPeopleResult.getStatus().gt(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.a((People.LoadPeopleResult)object);
            }
        }, n, string);
    }

    @Deprecated
    public void loadVisiblePeople(final OnPeopleLoadedListener onPeopleLoadedListener, String string) {
        this.ald.r(new BaseImplementation.b<People.LoadPeopleResult>(){

            public void a(People.LoadPeopleResult loadPeopleResult) {
                onPeopleLoadedListener.onPeopleLoaded(loadPeopleResult.getStatus().gt(), loadPeopleResult.getPersonBuffer(), loadPeopleResult.getNextPageToken());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.a((People.LoadPeopleResult)object);
            }
        }, string);
    }

    e mZ() {
        return this.ald;
    }

    @Deprecated
    @Override
    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.ald.registerConnectionCallbacks(connectionCallbacks);
    }

    @Deprecated
    @Override
    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.ald.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Deprecated
    public void removeMoment(String string) {
        this.ald.removeMoment(string);
    }

    @Deprecated
    public void revokeAccessAndDisconnect(final OnAccessRevokedListener onAccessRevokedListener) {
        this.ald.m(new BaseImplementation.b<Status>(){

            public void aA(Status status) {
                onAccessRevokedListener.onAccessRevoked(status.getStatus().gt());
            }

            @Override
            public /* synthetic */ void b(Object object) {
                this.aA((Status)object);
            }
        });
    }

    @Deprecated
    @Override
    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.ald.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Deprecated
    @Override
    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.ald.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Deprecated
    public void writeMoment(Moment moment) {
        this.ald.a(null, moment);
    }

    @Deprecated
    public static class Builder {
        private final GooglePlayServicesClient.ConnectionCallbacks ali;
        private final GooglePlayServicesClient.OnConnectionFailedListener alj;
        private final i alk;
        private final Context mContext;

        public Builder(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.mContext = context;
            this.ali = connectionCallbacks;
            this.alj = onConnectionFailedListener;
            this.alk = new i(this.mContext);
        }

        public PlusClient build() {
            return new PlusClient(new e(this.mContext, this.ali, this.alj, this.alk.nq()));
        }

        public Builder clearScopes() {
            this.alk.np();
            return this;
        }

        public Builder setAccountName(String string) {
            this.alk.ch(string);
            return this;
        }

        public /* varargs */ Builder setActions(String ... arrstring) {
            this.alk.h(arrstring);
            return this;
        }

        public /* varargs */ Builder setScopes(String ... arrstring) {
            this.alk.g(arrstring);
            return this;
        }
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

