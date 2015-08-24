/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

public final class nt
implements People {
    @Override
    public Person getCurrentPerson(GoogleApiClient googleApiClient) {
        return Plus.a(googleApiClient, Plus.CU).getCurrentPerson();
    }

    @Override
    public PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, final Collection<String> collection) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                e.a(this, collection);
            }
        });
    }

    @Override
    public /* varargs */ PendingResult<People.LoadPeopleResult> load(GoogleApiClient googleApiClient, final String ... arrstring) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                e.d(this, arrstring);
            }
        });
    }

    @Override
    public PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                e.l(this);
            }
        });
    }

    @Override
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, final int n, final String string) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                this.a(e.a(this, n, string));
            }
        });
    }

    @Override
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.a(new a(){

            @Override
            protected void a(e e) {
                this.a(e.r(this, string));
            }
        });
    }

    private static abstract class a
    extends Plus.a<People.LoadPeopleResult> {
        private a() {
        }

        public People.LoadPeopleResult aD(final Status status) {
            return new People.LoadPeopleResult(){

                @Override
                public String getNextPageToken() {
                    return null;
                }

                @Override
                public PersonBuffer getPersonBuffer() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }

                @Override
                public void release() {
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.aD(status);
        }

    }

}

