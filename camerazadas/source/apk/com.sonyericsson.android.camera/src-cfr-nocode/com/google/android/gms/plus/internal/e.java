/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.internal.e.b
 *  com.google.android.gms.common.internal.e.d
 */
package com.google.android.gms.plus.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

/*
 * Exception performing whole class analysis.
 */
public class e
extends com.google.android.gms.common.internal.e<com.google.android.gms.plus.internal.d> {
    private Person alt;
    private final com.google.android.gms.plus.internal.h alu;

    public e(Context var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4, com.google.android.gms.plus.internal.h var5);

    @Deprecated
    public e(Context var1, GooglePlayServicesClient.ConnectionCallbacks var2, GooglePlayServicesClient.OnConnectionFailedListener var3, com.google.android.gms.plus.internal.h var4);

    public j a(BaseImplementation.b<People.LoadPeopleResult> var1, int var2, String var3);

    @Override
    protected void a(int var1, IBinder var2, Bundle var3);

    public void a(BaseImplementation.b<Moments.LoadMomentsResult> var1, int var2, String var3, Uri var4, String var5, String var6);

    public void a(BaseImplementation.b<Status> var1, Moment var2);

    public void a(BaseImplementation.b<People.LoadPeopleResult> var1, Collection<String> var2);

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    protected com.google.android.gms.plus.internal.d bH(IBinder var1);

    public boolean cg(String var1);

    public void clearDefaultAccount();

    public void d(BaseImplementation.b<People.LoadPeopleResult> var1, String[] var2);

    public String getAccountName();

    public Person getCurrentPerson();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    public void k(BaseImplementation.b<Moments.LoadMomentsResult> var1);

    public void l(BaseImplementation.b<People.LoadPeopleResult> var1);

    public void m(BaseImplementation.b<Status> var1);

    public j r(BaseImplementation.b<People.LoadPeopleResult> var1, String var2);

    public void removeMoment(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class a
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<Status> alv;
        final /* synthetic */ e alw;

        public a(e var1, BaseImplementation.b<Status> var2);

        @Override
        public void aB(Status var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class b
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<Moments.LoadMomentsResult> alv;
        final /* synthetic */ e alw;

        public b(e var1, BaseImplementation.b<Moments.LoadMomentsResult> var2);

        @Override
        public void a(DataHolder var1, String var2, String var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class c
    extends com.google.android.gms.common.internal.e.d<BaseImplementation.b<Moments.LoadMomentsResult>>
    implements Moments.LoadMomentsResult {
        private final Status CM;
        private final String Nq;
        final /* synthetic */ e alw;
        private final String alx;
        private MomentBuffer aly;

        public c(e var1, BaseImplementation.b<Moments.LoadMomentsResult> var2, Status var3, DataHolder var4, String var5, String var6);

        protected void a(BaseImplementation.b<Moments.LoadMomentsResult> var1, DataHolder var2);

        @Override
        public MomentBuffer getMomentBuffer();

        @Override
        public String getNextPageToken();

        @Override
        public Status getStatus();

        @Override
        public String getUpdated();

        @Override
        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class d
    extends com.google.android.gms.common.internal.e.b<BaseImplementation.b<Status>> {
        private final Status CM;
        final /* synthetic */ e alw;

        public d(e var1, BaseImplementation.b<Status> var2, Status var3);

        protected /* synthetic */ void g(Object var1);

        protected void gT();

        protected void n(BaseImplementation.b<Status> var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class e
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<People.LoadPeopleResult> alv;
        final /* synthetic */ e alw;

        public e(e var1, BaseImplementation.b<People.LoadPeopleResult> var2);

        @Override
        public void a(DataHolder var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class f
    extends com.google.android.gms.common.internal.e.d<BaseImplementation.b<People.LoadPeopleResult>>
    implements People.LoadPeopleResult {
        private final Status CM;
        private final String Nq;
        final /* synthetic */ e alw;
        private PersonBuffer alz;

        public f(e var1, BaseImplementation.b<People.LoadPeopleResult> var2, Status var3, DataHolder var4, String var5);

        protected void a(BaseImplementation.b<People.LoadPeopleResult> var1, DataHolder var2);

        @Override
        public String getNextPageToken();

        @Override
        public PersonBuffer getPersonBuffer();

        @Override
        public Status getStatus();

        @Override
        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class g
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<Status> alv;
        final /* synthetic */ e alw;

        public g(e var1, BaseImplementation.b<Status> var2);

        @Override
        public void h(int var1, Bundle var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class h
    extends com.google.android.gms.common.internal.e.b<BaseImplementation.b<Status>> {
        private final Status CM;
        final /* synthetic */ e alw;

        public h(e var1, BaseImplementation.b<Status> var2, Status var3);

        protected /* synthetic */ void g(Object var1);

        protected void gT();

        protected void n(BaseImplementation.b<Status> var1);
    }

}

