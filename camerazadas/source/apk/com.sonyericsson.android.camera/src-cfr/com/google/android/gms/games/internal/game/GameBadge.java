/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public interface GameBadge
extends Parcelable,
Freezable<GameBadge> {
    public String getDescription();

    public Uri getIconImageUri();

    public String getTitle();

    public int getType();
}

