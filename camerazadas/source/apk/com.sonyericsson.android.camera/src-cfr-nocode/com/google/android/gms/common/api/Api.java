/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ClientSettings;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class Api<O extends ApiOptions> {
    private final b<?, O> Io;
    private final c<?> Ip;
    private final ArrayList<Scope> Iq;

    public /* varargs */ <C extends a> Api(b<C, O> var1, c<C> var2, Scope ... var3);

    public b<?, O> gb();

    public List<Scope> gd();

    public c<?> ge();

    public static interface ApiOptions {

        public static interface HasOptions
        extends ApiOptions {
        }

        /*
         * Exception performing whole class analysis ignored.
         */
        public static final class NoOptions
        implements NotRequiredOptions {
            private NoOptions();
        }

        public static interface NotRequiredOptions
        extends ApiOptions {
        }

        public static interface Optional
        extends HasOptions,
        NotRequiredOptions {
        }

    }

    public static interface a {
        public void connect();

        public void disconnect();

        public Looper getLooper();

        public boolean isConnected();
    }

    public static interface b<T extends a, O> {
        public T a(Context var1, Looper var2, ClientSettings var3, O var4, GoogleApiClient.ConnectionCallbacks var5, GoogleApiClient.OnConnectionFailedListener var6);

        public int getPriority();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class c<C extends a> {
        public c();
    }

}

