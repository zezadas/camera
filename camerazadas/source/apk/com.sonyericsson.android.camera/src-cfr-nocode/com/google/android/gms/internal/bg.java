/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.ez;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class bg {
    public static final String DEVICE_ID_EMULATOR;
    private final Date d;
    private final Set<String> f;
    private final Location h;
    private final String ol;
    private final int om;
    private final boolean on;
    private final Bundle oo;
    private final Map<Class<? extends NetworkExtras>, NetworkExtras> op;
    private final String oq;
    private final SearchAdRequest or;
    private final int os;
    private final Set<String> ot;

    static;

    public bg(a var1);

    public bg(a var1, SearchAdRequest var2);

    public SearchAdRequest bd();

    public Map<Class<? extends NetworkExtras>, NetworkExtras> be();

    public Bundle bf();

    public int bg();

    public Date getBirthday();

    public String getContentUrl();

    public Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> var1);

    public int getGender();

    public Set<String> getKeywords();

    public Location getLocation();

    public boolean getManualImpressionsEnabled();

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> var1);

    public Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> var1);

    public String getPublisherProvidedId();

    public boolean isTestDevice(Context var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class a {
        private Date d;
        private Location h;
        private String ol;
        private int om;
        private boolean on;
        private final Bundle oo;
        private String oq;
        private int os;
        private final HashSet<String> ou;
        private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> ov;
        private final HashSet<String> ow;

        public a();

        static /* synthetic */ Date a(a var0);

        static /* synthetic */ String b(a var0);

        static /* synthetic */ int c(a var0);

        static /* synthetic */ HashSet d(a var0);

        static /* synthetic */ Location e(a var0);

        static /* synthetic */ boolean f(a var0);

        static /* synthetic */ Bundle g(a var0);

        static /* synthetic */ HashMap h(a var0);

        static /* synthetic */ String i(a var0);

        static /* synthetic */ int j(a var0);

        static /* synthetic */ HashSet k(a var0);

        public void a(Location var1);

        @Deprecated
        public void a(NetworkExtras var1);

        public void a(Class<? extends MediationAdapter> var1, Bundle var2);

        public void a(Date var1);

        public void b(Class<? extends CustomEvent> var1, Bundle var2);

        public void g(int var1);

        public void g(boolean var1);

        public void h(boolean var1);

        public void r(String var1);

        public void s(String var1);

        public void t(String var1);

        public void u(String var1);
    }

}

