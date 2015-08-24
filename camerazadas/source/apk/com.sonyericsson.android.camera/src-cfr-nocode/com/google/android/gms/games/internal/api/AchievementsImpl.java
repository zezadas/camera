/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.internal.GamesClientImpl;

/*
 * Exception performing whole class analysis ignored.
 */
public final class AchievementsImpl
implements Achievements {
    public AchievementsImpl();

    @Override
    public Intent getAchievementsIntent(GoogleApiClient var1);

    @Override
    public void increment(GoogleApiClient var1, String var2, int var3);

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> incrementImmediate(GoogleApiClient var1, String var2, int var3);

    @Override
    public PendingResult<Achievements.LoadAchievementsResult> load(GoogleApiClient var1, boolean var2);

    @Override
    public void reveal(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> revealImmediate(GoogleApiClient var1, String var2);

    @Override
    public void setSteps(GoogleApiClient var1, String var2, int var3);

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> setStepsImmediate(GoogleApiClient var1, String var2, int var3);

    @Override
    public void unlock(GoogleApiClient var1, String var2);

    @Override
    public PendingResult<Achievements.UpdateAchievementResult> unlockImmediate(GoogleApiClient var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class LoadImpl
    extends Games.BaseGamesApiMethodImpl<Achievements.LoadAchievementsResult> {
        private LoadImpl();

        /* synthetic */ LoadImpl(com.google.android.gms.games.internal.api.AchievementsImpl$1 var1);

        public Achievements.LoadAchievementsResult J(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class UpdateImpl
    extends Games.BaseGamesApiMethodImpl<Achievements.UpdateAchievementResult> {
        private final String BL;

        public UpdateImpl(String var1);

        static /* synthetic */ String a(UpdateImpl var0);

        public Achievements.UpdateAchievementResult K(Status var1);

        @Override
        public /* synthetic */ Result c(Status var1);

    }

}

