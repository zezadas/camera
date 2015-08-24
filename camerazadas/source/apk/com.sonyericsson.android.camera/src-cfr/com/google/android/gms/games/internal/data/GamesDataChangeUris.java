/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.data;

import android.net.Uri;

public final class GamesDataChangeUris {
    private static final Uri aan = Uri.parse("content://com.google.android.gms.games/").buildUpon().appendPath("data_change").build();
    public static final Uri aao = aan.buildUpon().appendPath("invitations").build();
    public static final Uri aap = aan.buildUpon().appendEncodedPath("players").build();
}

