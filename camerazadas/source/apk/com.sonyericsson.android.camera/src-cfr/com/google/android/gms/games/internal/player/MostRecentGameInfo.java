/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public interface MostRecentGameInfo
extends Parcelable,
Freezable<MostRecentGameInfo> {
    public String lp();

    public String lq();

    public long lr();

    public Uri ls();

    public Uri lt();

    public Uri lu();
}

