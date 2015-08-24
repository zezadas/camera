/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.common.internal.e.b
 *  com.google.android.gms.common.internal.e.d
 */
package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.nw;
import com.google.android.gms.internal.nz;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.internal.d;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class e
extends com.google.android.gms.common.internal.e<com.google.android.gms.plus.internal.d> {
    private Person alt;
    private final com.google.android.gms.plus.internal.h alu;

    public e(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.plus.internal.h h) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, h.ng());
        this.alu = h;
    }

    @Deprecated
    public e(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.plus.internal.h h) {
        this(context, context.getMainLooper(), new e.c(connectionCallbacks), new e.g(onConnectionFailedListener), h);
    }

    public j a(BaseImplementation.b<People.LoadPeopleResult> object, int n, String object2) {
        this.dJ();
        object = new e((BaseImplementation.b<People.LoadPeopleResult>)object);
        try {
            object2 = ((com.google.android.gms.plus.internal.d)this.gS()).a((com.google.android.gms.plus.internal.b)object, 1, n, -1, (String)object2);
            return object2;
        }
        catch (RemoteException var3_4) {
            object.a(DataHolder.as(8), null);
            return null;
        }
    }

    @Override
    protected void a(int n, IBinder iBinder, Bundle bundle) {
        if (n == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.alt = nz.i(bundle.getByteArray("loaded_person"));
        }
        super.a(n, iBinder, bundle);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(BaseImplementation.b<Moments.LoadMomentsResult> object, int n, String string, Uri uri, String string2, String string3) {
        this.dJ();
        object = object != null ? new b((BaseImplementation.b<Moments.LoadMomentsResult>)object) : null;
        try {
            ((com.google.android.gms.plus.internal.d)this.gS()).a((com.google.android.gms.plus.internal.b)object, n, string, uri, string2, string3);
            return;
        }
        catch (RemoteException var3_4) {
            object.a(DataHolder.as(8), null, null);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(BaseImplementation.b<Status> object, Moment object2) {
        this.dJ();
        object = object != null ? new a((BaseImplementation.b<Status>)object) : null;
        try {
            object2 = jp.a((nw)object2);
            ((com.google.android.gms.plus.internal.d)this.gS()).a((com.google.android.gms.plus.internal.b)object, (jp)object2);
            return;
        }
        catch (RemoteException var2_3) {
            if (object == null) {
                throw new IllegalStateException(var2_3);
            }
            object.aB(new Status(8, null, null));
            return;
        }
    }

    public void a(BaseImplementation.b<People.LoadPeopleResult> object, Collection<String> collection) {
        this.dJ();
        object = new e((BaseImplementation.b<People.LoadPeopleResult>)object);
        try {
            ((com.google.android.gms.plus.internal.d)this.gS()).a((com.google.android.gms.plus.internal.b)object, new ArrayList<String>(collection));
            return;
        }
        catch (RemoteException var2_3) {
            object.a(DataHolder.as(8), null);
            return;
        }
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        Bundle bundle = this.alu.no();
        bundle.putStringArray("request_visible_actions", this.alu.nh());
        l.a(e, 6171000, this.alu.nk(), this.alu.nj(), this.gR(), this.alu.getAccountName(), bundle);
    }

    protected com.google.android.gms.plus.internal.d bH(IBinder iBinder) {
        return d.a.bG(iBinder);
    }

    public boolean cg(String string) {
        return Arrays.asList(this.gR()).contains(string);
    }

    public void clearDefaultAccount() {
        this.dJ();
        try {
            this.alt = null;
            ((com.google.android.gms.plus.internal.d)this.gS()).clearDefaultAccount();
            return;
        }
        catch (RemoteException var1_1) {
            throw new IllegalStateException(var1_1);
        }
    }

    public void d(BaseImplementation.b<People.LoadPeopleResult> b, String[] arrstring) {
        this.a(b, Arrays.asList(arrstring));
    }

    public String getAccountName() {
        this.dJ();
        try {
            String string = ((com.google.android.gms.plus.internal.d)this.gS()).getAccountName();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    public Person getCurrentPerson() {
        this.dJ();
        return this.alt;
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.plus.service.START";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.bH(iBinder);
    }

    public void k(BaseImplementation.b<Moments.LoadMomentsResult> b) {
        this.a(b, 20, null, null, null, "me");
    }

    public void l(BaseImplementation.b<People.LoadPeopleResult> object) {
        this.dJ();
        object = new e((BaseImplementation.b<People.LoadPeopleResult>)object);
        try {
            ((com.google.android.gms.plus.internal.d)this.gS()).a((com.google.android.gms.plus.internal.b)object, 2, 1, -1, null);
            return;
        }
        catch (RemoteException var2_2) {
            object.a(DataHolder.as(8), null);
            return;
        }
    }

    public void m(BaseImplementation.b<Status> object) {
        this.dJ();
        this.clearDefaultAccount();
        object = new g((BaseImplementation.b<Status>)object);
        try {
            ((com.google.android.gms.plus.internal.d)this.gS()).b((com.google.android.gms.plus.internal.b)object);
            return;
        }
        catch (RemoteException var2_2) {
            object.h(8, null);
            return;
        }
    }

    public j r(BaseImplementation.b<People.LoadPeopleResult> b, String string) {
        return this.a(b, 0, string);
    }

    public void removeMoment(String string) {
        this.dJ();
        try {
            ((com.google.android.gms.plus.internal.d)this.gS()).removeMoment(string);
            return;
        }
        catch (RemoteException var1_2) {
            throw new IllegalStateException(var1_2);
        }
    }

    final class a
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<Status> alv;

        public a(BaseImplementation.b<Status> b) {
            this.alv = b;
        }

        @Override
        public void aB(Status status) {
            e.this.a((e.b)new d(this.alv, status));
        }
    }

    final class b
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<Moments.LoadMomentsResult> alv;

        public b(BaseImplementation.b<Moments.LoadMomentsResult> b) {
            this.alv = b;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(DataHolder dataHolder, String string, String string2) {
            void var4_5;
            Status status;
            if (dataHolder.gy() != null) {
                PendingIntent pendingIntent = (PendingIntent)dataHolder.gy().getParcelable("pendingIntent");
            } else {
                Object var4_7 = null;
            }
            if (!((status = new Status(dataHolder.getStatusCode(), null, (PendingIntent)var4_5)).isSuccess() || dataHolder == null)) {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder = null;
            }
            e.this.a((e.b)new c(this.alv, status, dataHolder, string, string2));
        }
    }

    final class c
    extends com.google.android.gms.common.internal.e.d<BaseImplementation.b<Moments.LoadMomentsResult>>
    implements Moments.LoadMomentsResult {
        private final Status CM;
        private final String Nq;
        private final String alx;
        private MomentBuffer aly;

        public c(BaseImplementation.b<Moments.LoadMomentsResult> b, Status status, DataHolder dataHolder, String string, String string2) {
            super(b, dataHolder);
            this.CM = status;
            this.Nq = string;
            this.alx = string2;
        }

        /*
         * Enabled aggressive block sorting
         */
        protected void a(BaseImplementation.b<Moments.LoadMomentsResult> b, DataHolder object) {
            object = object != null ? new MomentBuffer((DataHolder)object) : null;
            this.aly = object;
            b.b(this);
        }

        @Override
        public MomentBuffer getMomentBuffer() {
            return this.aly;
        }

        @Override
        public String getNextPageToken() {
            return this.Nq;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        @Override
        public String getUpdated() {
            return this.alx;
        }

        @Override
        public void release() {
            if (this.aly != null) {
                this.aly.close();
            }
        }
    }

    final class d
    extends com.google.android.gms.common.internal.e.b<BaseImplementation.b<Status>> {
        private final Status CM;

        public d(BaseImplementation.b<Status> b, Status status) {
            super(b);
            this.CM = status;
        }

        protected /* synthetic */ void g(Object object) {
            this.n((BaseImplementation.b)object);
        }

        protected void gT() {
        }

        protected void n(BaseImplementation.b<Status> b) {
            if (b != null) {
                b.b(this.CM);
            }
        }
    }

    final class e
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<People.LoadPeopleResult> alv;

        public e(BaseImplementation.b<People.LoadPeopleResult> b) {
            this.alv = b;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(DataHolder dataHolder, String string) {
            Status status;
            void var3_4;
            if (dataHolder.gy() != null) {
                PendingIntent pendingIntent = (PendingIntent)dataHolder.gy().getParcelable("pendingIntent");
            } else {
                Object var3_6 = null;
            }
            if (!((status = new Status(dataHolder.getStatusCode(), null, (PendingIntent)var3_4)).isSuccess() || dataHolder == null)) {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder = null;
            }
            e.this.a((e.b)new f(this.alv, status, dataHolder, string));
        }
    }

    final class f
    extends com.google.android.gms.common.internal.e.d<BaseImplementation.b<People.LoadPeopleResult>>
    implements People.LoadPeopleResult {
        private final Status CM;
        private final String Nq;
        private PersonBuffer alz;

        public f(BaseImplementation.b<People.LoadPeopleResult> b, Status status, DataHolder dataHolder, String string) {
            super(b, dataHolder);
            this.CM = status;
            this.Nq = string;
        }

        /*
         * Enabled aggressive block sorting
         */
        protected void a(BaseImplementation.b<People.LoadPeopleResult> b, DataHolder object) {
            object = object != null ? new PersonBuffer((DataHolder)object) : null;
            this.alz = object;
            b.b(this);
        }

        @Override
        public String getNextPageToken() {
            return this.Nq;
        }

        @Override
        public PersonBuffer getPersonBuffer() {
            return this.alz;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        @Override
        public void release() {
            if (this.alz != null) {
                this.alz.close();
            }
        }
    }

    final class g
    extends com.google.android.gms.plus.internal.a {
        private final BaseImplementation.b<Status> alv;

        public g(BaseImplementation.b<Status> b) {
            this.alv = b;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void h(int n, Bundle bundle) {
            void var2_4;
            if (bundle != null) {
                PendingIntent pendingIntent = (PendingIntent)bundle.getParcelable("pendingIntent");
            } else {
                Object var2_6 = null;
            }
            Status status = new Status(n, null, (PendingIntent)var2_4);
            e.this.a((e.b)new h(this.alv, status));
        }
    }

    final class h
    extends com.google.android.gms.common.internal.e.b<BaseImplementation.b<Status>> {
        private final Status CM;

        public h(BaseImplementation.b<Status> b, Status status) {
            super(b);
            this.CM = status;
        }

        protected /* synthetic */ void g(Object object) {
            this.n((BaseImplementation.b)object);
        }

        protected void gT() {
        }

        protected void n(BaseImplementation.b<Status> b) {
            e.this.disconnect();
            if (b != null) {
                b.b(this.CM);
            }
        }
    }

}

