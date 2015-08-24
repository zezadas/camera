/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.event;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.games.event.EventBuffer;

public interface Events {
    public void increment(GoogleApiClient var1, String var2, int var3);

    public PendingResult<LoadEventsResult> load(GoogleApiClient var1, boolean var2);

    public /* varargs */ PendingResult<LoadEventsResult> loadByIds(GoogleApiClient var1, boolean var2, String ... var3);

    public static interface LoadEventsResult
    extends Releasable,
    Result {
        public EventBuffer getEvents();
    }

}

