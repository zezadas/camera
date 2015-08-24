/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class RequestsImpl
implements Requests {
    @Override
    public PendingResult<Requests.UpdateRequestsResult> acceptRequest(GoogleApiClient googleApiClient, String string) {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(string);
        return this.acceptRequests(googleApiClient, arrayList);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public PendingResult<Requests.UpdateRequestsResult> acceptRequests(GoogleApiClient googleApiClient, final List<String> arrstring) {
        if (arrstring == null) {
            arrstring = null;
            do {
                return googleApiClient.b(new UpdateRequestsImpl(){

                    @Override
                    protected void a(GamesClientImpl gamesClientImpl) {
                        gamesClientImpl.b(this, arrstring);
                    }
                });
                break;
            } while (true);
        }
        arrstring = arrstring.toArray(new String[arrstring.size()]);
        return googleApiClient.b(new );
    }

    @Override
    public PendingResult<Requests.UpdateRequestsResult> dismissRequest(GoogleApiClient googleApiClient, String string) {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(string);
        return this.dismissRequests(googleApiClient, arrayList);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public PendingResult<Requests.UpdateRequestsResult> dismissRequests(GoogleApiClient googleApiClient, final List<String> arrstring) {
        if (arrstring == null) {
            arrstring = null;
            do {
                return googleApiClient.b(new UpdateRequestsImpl(){

                    @Override
                    protected void a(GamesClientImpl gamesClientImpl) {
                        gamesClientImpl.c(this, arrstring);
                    }
                });
                break;
            } while (true);
        }
        arrstring = arrstring.toArray(new String[arrstring.size()]);
        return googleApiClient.b(new );
    }

    @Override
    public ArrayList<GameRequest> getGameRequestsFromBundle(Bundle cloneable) {
        if (!(cloneable != null && cloneable.containsKey("requests"))) {
            return new ArrayList<GameRequest>();
        }
        cloneable = (ArrayList)cloneable.get("requests");
        ArrayList<GameRequest> arrayList = new ArrayList<GameRequest>();
        int n = cloneable.size();
        for (int i = 0; i < n; ++i) {
            arrayList.add((GameRequest)cloneable.get(i));
        }
        return arrayList;
    }

    @Override
    public ArrayList<GameRequest> getGameRequestsFromInboxResponse(Intent intent) {
        if (intent == null) {
            return new ArrayList<GameRequest>();
        }
        return this.getGameRequestsFromBundle(intent.getExtras());
    }

    @Override
    public Intent getInboxIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kr();
    }

    @Override
    public int getMaxLifetimeDays(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kt();
    }

    @Override
    public int getMaxPayloadSize(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).ks();
    }

    @Override
    public Intent getSendIntent(GoogleApiClient googleApiClient, int n, byte[] arrby, int n2, Bitmap bitmap, String string) {
        return Games.c(googleApiClient).a(n, arrby, n2, bitmap, string);
    }

    @Override
    public PendingResult<Requests.LoadRequestsResult> loadRequests(GoogleApiClient googleApiClient, final int n, final int n2, final int n3) {
        return googleApiClient.a(new LoadRequestsImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, n, n2, n3);
            }
        });
    }

    @Override
    public void registerRequestListener(GoogleApiClient googleApiClient, OnRequestReceivedListener onRequestReceivedListener) {
        Games.c(googleApiClient).a(onRequestReceivedListener);
    }

    @Override
    public void unregisterRequestListener(GoogleApiClient googleApiClient) {
        Games.c(googleApiClient).kl();
    }

    private static abstract class LoadRequestSummariesImpl
    extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestSummariesResult> {
        private LoadRequestSummariesImpl() {
        }

        public Requests.LoadRequestSummariesResult ak(final Status status) {
            return new Requests.LoadRequestSummariesResult(){

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
            return this.ak(status);
        }

    }

    private static abstract class LoadRequestsImpl
    extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestsResult> {
        private LoadRequestsImpl() {
        }

        public Requests.LoadRequestsResult al(final Status status) {
            return new Requests.LoadRequestsResult(){

                @Override
                public GameRequestBuffer getRequests(int n) {
                    return new GameRequestBuffer(DataHolder.as(status.getStatusCode()));
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
            return this.al(status);
        }

    }

    private static abstract class SendRequestImpl
    extends Games.BaseGamesApiMethodImpl<Requests.SendRequestResult> {
        private SendRequestImpl() {
        }

        public Requests.SendRequestResult am(final Status status) {
            return new Requests.SendRequestResult(){

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.am(status);
        }

    }

    private static abstract class UpdateRequestsImpl
    extends Games.BaseGamesApiMethodImpl<Requests.UpdateRequestsResult> {
        private UpdateRequestsImpl() {
        }

        public Requests.UpdateRequestsResult an(final Status status) {
            return new Requests.UpdateRequestsResult(){

                @Override
                public Set<String> getRequestIds() {
                    return null;
                }

                @Override
                public int getRequestOutcome(String string) {
                    throw new IllegalArgumentException("Unknown request ID " + string);
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
            return this.an(status);
        }

    }

}

