/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.d;

/*
 * Exception performing whole class analysis ignored.
 */
public final class ag
implements MessageApi {
    public ag();

    private PendingResult<Status> a(GoogleApiClient var1, MessageApi.MessageListener var2, IntentFilter[] var3);

    @Override
    public PendingResult<Status> addListener(GoogleApiClient var1, MessageApi.MessageListener var2);

    @Override
    public PendingResult<Status> removeListener(GoogleApiClient var1, MessageApi.MessageListener var2);

    @Override
    public PendingResult<MessageApi.SendMessageResult> sendMessage(GoogleApiClient var1, String var2, String var3, byte[] var4);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a
    implements MessageApi.SendMessageResult {
        private final Status CM;
        private final int uQ;

        public a(Status var1, int var2);

        @Override
        public int getRequestId();

        @Override
        public Status getStatus();
    }

}

