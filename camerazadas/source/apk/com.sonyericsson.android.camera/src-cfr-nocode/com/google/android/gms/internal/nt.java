/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.Collection;

/*
 * Exception performing whole class analysis ignored.
 */
public final class nt
implements People {
    public nt();

    @Override
    public Person getCurrentPerson(GoogleApiClient var1);

    @Override
    public PendingResult<People.LoadPeopleResult> load(GoogleApiClient var1, Collection<String> var2);

    @Override
    public /* varargs */ PendingResult<People.LoadPeopleResult> load(GoogleApiClient var1, String ... var2);

    @Override
    public PendingResult<People.LoadPeopleResult> loadConnected(GoogleApiClient var1);

    @Override
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient var1, int var2, String var3);

    @Override
    public PendingResult<People.LoadPeopleResult> loadVisible(GoogleApiClient var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class a
    extends Plus.a<People.LoadPeopleResult> {
        private a();

        /* synthetic */ a(com.google.android.gms.internal.nt$1 var1);

        public People.LoadPeopleResult aD(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

