/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
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
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;

public final class QuestsImpl
implements Quests {
    @Override
    public PendingResult<Quests.AcceptQuestResult> accept(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new AcceptImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.i(this, string);
            }
        });
    }

    @Override
    public PendingResult<Quests.ClaimMilestoneResult> claim(GoogleApiClient googleApiClient, final String string, final String string2) {
        return googleApiClient.b(new ClaimImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, string, string2);
            }
        });
    }

    @Override
    public Intent getQuestIntent(GoogleApiClient googleApiClient, String string) {
        return Games.c(googleApiClient).bC(string);
    }

    @Override
    public Intent getQuestsIntent(GoogleApiClient googleApiClient, int[] arrn) {
        return Games.c(googleApiClient).b(arrn);
    }

    @Override
    public PendingResult<Quests.LoadQuestsResult> load(GoogleApiClient googleApiClient, final int[] arrn, final int n, final boolean bl) {
        return googleApiClient.a(new LoadsImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, arrn, n, bl);
            }
        });
    }

    @Override
    public /* varargs */ PendingResult<Quests.LoadQuestsResult> loadByIds(GoogleApiClient googleApiClient, final boolean bl, final String ... arrstring) {
        return googleApiClient.a(new LoadsImpl(){

            @Override
            protected void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, bl, arrstring);
            }
        });
    }

    @Override
    public void registerQuestUpdateListener(GoogleApiClient googleApiClient, QuestUpdateListener questUpdateListener) {
        Games.c(googleApiClient).a(questUpdateListener);
    }

    @Override
    public void showStateChangedPopup(GoogleApiClient googleApiClient, String string) {
        Games.c(googleApiClient).bD(string);
    }

    @Override
    public void unregisterQuestUpdateListener(GoogleApiClient googleApiClient) {
        Games.c(googleApiClient).kk();
    }

    private static abstract class AcceptImpl
    extends Games.BaseGamesApiMethodImpl<Quests.AcceptQuestResult> {
        private AcceptImpl() {
        }

        public Quests.AcceptQuestResult ah(final Status status) {
            return new Quests.AcceptQuestResult(){

                @Override
                public Quest getQuest() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ah(status);
        }

    }

    private static abstract class ClaimImpl
    extends Games.BaseGamesApiMethodImpl<Quests.ClaimMilestoneResult> {
        private ClaimImpl() {
        }

        public Quests.ClaimMilestoneResult ai(final Status status) {
            return new Quests.ClaimMilestoneResult(){

                @Override
                public Milestone getMilestone() {
                    return null;
                }

                @Override
                public Quest getQuest() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.ai(status);
        }

    }

    private static abstract class LoadsImpl
    extends Games.BaseGamesApiMethodImpl<Quests.LoadQuestsResult> {
        private LoadsImpl() {
        }

        public Quests.LoadQuestsResult aj(final Status status) {
            return new Quests.LoadQuestsResult(){

                @Override
                public QuestBuffer getQuests() {
                    return new QuestBuffer(DataHolder.as(status.getStatusCode()));
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
            return this.aj(status);
        }

    }

}

