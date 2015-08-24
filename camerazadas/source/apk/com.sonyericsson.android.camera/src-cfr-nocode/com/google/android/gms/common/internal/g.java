/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.common.internal.e;
import java.util.HashMap;
import java.util.HashSet;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class g
implements Handler.Callback {
    private static final Object LS;
    private static g LT;
    private final HashMap<String, a> LU;
    private final Context mD;
    private final Handler mHandler;

    static;

    private g(Context var1);

    public static g J(Context var0);

    static /* synthetic */ HashMap a(g var0);

    public boolean a(String var1, e<?> var2);

    public void b(String var1, e<?> var2);

    @Override
    public boolean handleMessage(Message var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class com.google.android.gms.common.internal.g$a {
        private final String LV;
        private final a LW;
        private final HashSet<e<?>> LX;
        private boolean LY;
        private IBinder LZ;
        private ComponentName Ma;
        final /* synthetic */ g Mb;
        private int mState;

        public com.google.android.gms.common.internal.g$a(g var1, String var2);

        static /* synthetic */ int a(com.google.android.gms.common.internal.g$a var0, int var1);

        static /* synthetic */ ComponentName a(com.google.android.gms.common.internal.g$a var0, ComponentName var1);

        static /* synthetic */ IBinder a(com.google.android.gms.common.internal.g$a var0, IBinder var1);

        static /* synthetic */ HashSet a(com.google.android.gms.common.internal.g$a var0);

        public void J(boolean var1);

        public void a(e<?> var1);

        public void b(e<?> var1);

        public boolean c(e<?> var1);

        public a gW();

        public String gX();

        public boolean gY();

        public IBinder getBinder();

        public ComponentName getComponentName();

        public int getState();

        public boolean isBound();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public class a
        implements ServiceConnection {
            final /* synthetic */ com.google.android.gms.common.internal.g$a Mc;

            public a(com.google.android.gms.common.internal.g$a var1);

            @Override
            public void onServiceConnected(ComponentName var1, IBinder var2);

            @Override
            public void onServiceDisconnected(ComponentName var1);
        }

    }

}

