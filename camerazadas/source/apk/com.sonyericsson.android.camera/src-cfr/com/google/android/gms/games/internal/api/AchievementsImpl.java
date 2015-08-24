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
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class AchievementsImpl
implements Achievements {
    @Override
    public Intent getAchievementsIntent(GoogleApiClient googleApiClient) {
        return Games.c(googleApiClient).kf();
    }

    @Override
    public void increment(GoogleApiClient googleApiClient, final String string, final int n) {
        googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(null, string, n);
            }
        });
    }

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> incrementImmediate(GoogleApiClient googleApiClient, final String string, final int n) {
        return googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.a(this, string, n);
            }
        });
    }

    @Override
    public PendingResult<Achievements.LoadAchievementsResult> load(GoogleApiClient googleApiClient, final boolean bl) {
        return googleApiClient.a(new LoadImpl(){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.c(this, bl);
            }
        });
    }

    @Override
    public void reveal(GoogleApiClient googleApiClient, final String string) {
        googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(null, string);
            }
        });
    }

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> revealImmediate(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, string);
            }
        });
    }

    @Override
    public void setSteps(GoogleApiClient googleApiClient, final String string, final int n) {
        googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(null, string, n);
            }
        });
    }

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> setStepsImmediate(GoogleApiClient googleApiClient, final String string, final int n) {
        return googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.b(this, string, n);
            }
        });
    }

    @Override
    public void unlock(GoogleApiClient googleApiClient, final String string) {
        googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.c((BaseImplementation.b<Achievements.UpdateAchievementResult>)null, string);
            }
        });
    }

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> unlockImmediate(GoogleApiClient googleApiClient, final String string) {
        return googleApiClient.b(new UpdateImpl(string){

            @Override
            public void a(GamesClientImpl gamesClientImpl) {
                gamesClientImpl.c(this, string);
            }
        });
    }

    private static abstract class LoadImpl
    extends Games.BaseGamesApiMethodImpl<Achievements.LoadAchievementsResult> {
        private LoadImpl() {
        }

        public Achievements.LoadAchievementsResult J(final Status status) {
            return new Achievements.LoadAchievementsResult(){

                @Override
                public AchievementBuffer getAchievements() {
                    return new AchievementBuffer(DataHolder.as(14));
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
            return this.J(status);
        }

    }

    private static abstract class UpdateImpl
    extends Games.BaseGamesApiMethodImpl<Achievements.UpdateAchievementResult> {
        private final String BL;

        public UpdateImpl(String string) {
            this.BL = string;
        }

        public Achievements.UpdateAchievementResult K(final Status status) {
            return new Achievements.UpdateAchievementResult(){

                @Override
                public String getAchievementId() {
                    return UpdateImpl.this.BL;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.K(status);
        }

    }

}

