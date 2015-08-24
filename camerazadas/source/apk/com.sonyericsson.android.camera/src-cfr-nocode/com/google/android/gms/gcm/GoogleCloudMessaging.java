/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GoogleCloudMessaging {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
    static GoogleCloudMessaging adv;
    private PendingIntent adw;
    final BlockingQueue<Intent> adx;
    private Handler ady;
    private Messenger adz;
    private Context lB;

    public GoogleCloudMessaging();

    private void a(String var1, String var2, long var3, int var5, Bundle var6) throws IOException;

    private /* varargs */ void d(String ... var1);

    public static GoogleCloudMessaging getInstance(Context var0);

    private void lN();

    public void close();

    /* varargs */ String e(String ... var1);

    public String getMessageType(Intent var1);

    void j(Intent var1);

    void lO();

    public /* varargs */ String register(String ... var1) throws IOException;

    public void send(String var1, String var2, long var3, Bundle var5) throws IOException;

    public void send(String var1, String var2, Bundle var3) throws IOException;

    public void unregister() throws IOException;

}

