/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class GoogleCloudMessaging {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
    static GoogleCloudMessaging adv;
    private PendingIntent adw;
    final BlockingQueue<Intent> adx = new LinkedBlockingQueue<Intent>();
    private Handler ady;
    private Messenger adz;
    private Context lB;

    public GoogleCloudMessaging() {
        this.ady = new Handler(Looper.getMainLooper()){

            @Override
            public void handleMessage(Message parcelable) {
                parcelable = (Intent)parcelable.obj;
                GoogleCloudMessaging.this.adx.add((Intent)parcelable);
            }
        };
        this.adz = new Messenger(this.ady);
    }

    private void a(String string, String string2, long l, int n, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        if (string == null) {
            throw new IllegalArgumentException("Missing 'to'");
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        intent.putExtras(bundle);
        this.j(intent);
        intent.setPackage("com.google.android.gms");
        intent.putExtra("google.to", string);
        intent.putExtra("google.message_id", string2);
        intent.putExtra("google.ttl", Long.toString(l));
        intent.putExtra("google.delay", Integer.toString(n));
        this.lB.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    private /* varargs */ void d(String ... object) {
        object = this.e((String[])object);
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("google.messenger", this.adz);
        this.j(intent);
        intent.putExtra("sender", (String)object);
        this.lB.startService(intent);
    }

    public static GoogleCloudMessaging getInstance(Context object) {
        synchronized (GoogleCloudMessaging.class) {
            if (adv == null) {
                adv = new GoogleCloudMessaging();
                GoogleCloudMessaging.adv.lB = object;
            }
            object = adv;
            return object;
        }
    }

    private void lN() {
        Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
        intent.setPackage("com.google.android.gms");
        this.adx.clear();
        intent.putExtra("google.messenger", this.adz);
        this.j(intent);
        this.lB.startService(intent);
    }

    public void close() {
        this.lO();
    }

    /* varargs */ String e(String ... arrstring) {
        if (arrstring == null || arrstring.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(arrstring[0]);
        for (int i = 1; i < arrstring.length; ++i) {
            stringBuilder.append(',').append(arrstring[i]);
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String getMessageType(Intent object) {
        String string;
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(object.getAction())) {
            return null;
        }
        object = string = object.getStringExtra("message_type");
        if (string != null) return object;
        return "gcm";
    }

    void j(Intent intent) {
        synchronized (this) {
            if (this.adw == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                this.adw = PendingIntent.getBroadcast(this.lB, 0, intent2, 0);
            }
            intent.putExtra("app", this.adw);
            return;
        }
    }

    void lO() {
        synchronized (this) {
            if (this.adw != null) {
                this.adw.cancel();
                this.adw = null;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public /* varargs */ String register(String ... object) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        this.adx.clear();
        this.d((String[])object);
        try {
            object = this.adx.poll(5000, TimeUnit.MILLISECONDS);
            if (object == null) {
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
            String string = object.getStringExtra("registration_id");
            if (string != null) {
                return string;
            }
        }
        catch (InterruptedException var1_2) {
            throw new IOException(var1_2.getMessage());
        }
        object.getStringExtra("error");
        object = object.getStringExtra("error");
        if (object != null) {
            throw new IOException((String)object);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    public void send(String string, String string2, long l, Bundle bundle) throws IOException {
        this.a(string, string2, l, -1, bundle);
    }

    public void send(String string, String string2, Bundle bundle) throws IOException {
        this.send(string, string2, -1, bundle);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void unregister() throws IOException {
        Object object;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        this.lN();
        try {
            object = this.adx.poll(5000, TimeUnit.MILLISECONDS);
            if (object == null) {
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
            if (object.getStringExtra("unregistered") != null) {
                return;
            }
        }
        catch (InterruptedException var1_2) {
            throw new IOException(var1_2.getMessage());
        }
        if ((object = object.getStringExtra("error")) != null) {
            throw new IOException((String)object);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

}

