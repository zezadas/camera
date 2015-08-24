/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageEvent;

public interface MessageApi {
    public static final int UNKNOWN_REQUEST_ID = -1;

    public PendingResult<Status> addListener(GoogleApiClient var1, MessageListener var2);

    public PendingResult<Status> removeListener(GoogleApiClient var1, MessageListener var2);

    public PendingResult<SendMessageResult> sendMessage(GoogleApiClient var1, String var2, String var3, byte[] var4);

    public static interface MessageListener {
        public void onMessageReceived(MessageEvent var1);
    }

    public static interface SendMessageResult
    extends Result {
        public int getRequestId();
    }

}

