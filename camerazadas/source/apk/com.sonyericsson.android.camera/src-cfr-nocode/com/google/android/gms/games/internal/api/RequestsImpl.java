/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis ignored.
 */
public final class RequestsImpl
implements Requests {
    public RequestsImpl();

    @Override
    public PendingResult<Requests.UpdateRequestsResult> acceptRequest(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Requests.UpdateRequestsResult> acceptRequests(GoogleApiClient var1, List<String> var2);

    @Override
    public PendingResult<Requests.UpdateRequestsResult> dismissRequest(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Requests.UpdateRequestsResult> dismissRequests(GoogleApiClient var1, List<String> var2);

    @Override
    public ArrayList<GameRequest> getGameRequestsFromBundle(Bundle var1);

    @Override
    public ArrayList<GameRequest> getGameRequestsFromInboxResponse(Intent var1);

    @Override
    public Intent getInboxIntent(GoogleApiClient var1);

    @Override
    public int getMaxLifetimeDays(GoogleApiClient var1);

    @Override
    public int getMaxPayloadSize(GoogleApiClient var1);

    @Override
    public Intent getSendIntent(GoogleApiClient var1, int var2, byte[] var3, int var4, Bitmap var5, String var6);

    @Override
    public PendingResult<Requests.LoadRequestsResult> loadRequests(GoogleApiClient var1, int var2, int var3, int var4);

    @Override
    public void registerRequestListener(GoogleApiClient var1, OnRequestReceivedListener var2);

    @Override
    public void unregisterRequestListener(GoogleApiClient var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadRequestSummariesImpl
    extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestSummariesResult> {
        private LoadRequestSummariesImpl();

        public Requests.LoadRequestSummariesResult ak(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadRequestsImpl
    extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestsResult> {
        private LoadRequestsImpl();

        /* synthetic */ LoadRequestsImpl(com.google.android.gms.games.internal.api.RequestsImpl$1 var1);

        public Requests.LoadRequestsResult al(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static abstract class SendRequestImpl
    extends Games.BaseGamesApiMethodImpl<Requests.SendRequestResult> {
        private SendRequestImpl();

        public Requests.SendRequestResult am(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class UpdateRequestsImpl
    extends Games.BaseGamesApiMethodImpl<Requests.UpdateRequestsResult> {
        private UpdateRequestsImpl();

        /* synthetic */ UpdateRequestsImpl(com.google.android.gms.games.internal.api.RequestsImpl$1 var1);

        public Requests.UpdateRequestsResult an(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

