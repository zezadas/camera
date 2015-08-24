/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

public interface Notifications {
    public static final int NOTIFICATION_TYPES_ALL = 31;
    public static final int NOTIFICATION_TYPES_MULTIPLAYER = 3;
    public static final int NOTIFICATION_TYPE_INVITATION = 1;
    public static final int NOTIFICATION_TYPE_LEVEL_UP = 16;
    public static final int NOTIFICATION_TYPE_MATCH_UPDATE = 2;
    public static final int NOTIFICATION_TYPE_QUEST = 8;
    public static final int NOTIFICATION_TYPE_REQUEST = 4;

    public void clear(GoogleApiClient var1, int var2);

    public void clearAll(GoogleApiClient var1);

    public static interface ContactSettingLoadResult
    extends Result {
    }

    public static interface GameMuteStatusChangeResult
    extends Result {
    }

    public static interface GameMuteStatusLoadResult
    extends Result {
    }

    public static interface InboxCountResult
    extends Result {
    }

}

