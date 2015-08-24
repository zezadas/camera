/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;

public final class ns
implements Moments {
    @Override
    public PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                e.k(this);
            }
        });
    }

    @Override
    public PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient googleApiClient, final int n, final String string, final Uri uri, final String string2, final String string3) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                e.a(this, n, string, uri, string2, string3);
            }
        });
    }

    @Override
    public PendingResult<Status> remove(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new b(){

            @Override
            protected void a(e e) {
                e.removeMoment(string);
                this.b(Status.Jv);
            }
        });
    }

    @Override
    public PendingResult<Status> write(GoogleApiClient googleApiClient, final Moment moment) {
        return googleApiClient.b(new c(){

            @Override
            protected void a(e e) {
                e.a(this, moment);
            }
        });
    }

    private static abstract class a
    extends Plus.a<Moments.LoadMomentsResult> {
        private a() {
        }

        public Moments.LoadMomentsResult aC(final Status status) {
            return new Moments.LoadMomentsResult(){

                @Override
                public MomentBuffer getMomentBuffer() {
                    return null;
                }

                @Override
                public String getNextPageToken() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public String getUpdated() {
                    return null;
                }

                @Override
                public void release() {
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.aC(status);
        }

    }

    private static abstract class b
    extends Plus.a<Status> {
        private b() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

    private static abstract class c
    extends Plus.a<Status> {
        private c() {
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        public Status d(Status status) {
            return status;
        }
    }

}

