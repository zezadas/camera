/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@ez
public final class bg {
    public static final String DEVICE_ID_EMULATOR = gr.R("emulator");
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

    public bg(a a) {
        this(a, null);
    }

    public bg(a a, SearchAdRequest searchAdRequest) {
        this.d = a.d;
        this.ol = a.ol;
        this.om = a.om;
        this.f = Collections.unmodifiableSet(a.ou);
        this.h = a.h;
        this.on = a.on;
        this.oo = a.oo;
        this.op = Collections.unmodifiableMap(a.ov);
        this.oq = a.oq;
        this.or = searchAdRequest;
        this.os = a.os;
        this.ot = Collections.unmodifiableSet(a.ow);
    }

    public SearchAdRequest bd() {
        return this.or;
    }

    public Map<Class<? extends NetworkExtras>, NetworkExtras> be() {
        return this.op;
    }

    public Bundle bf() {
        return this.oo;
    }

    public int bg() {
        return this.os;
    }

    public Date getBirthday() {
        return this.d;
    }

    public String getContentUrl() {
        return this.ol;
    }

    public Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> class_) {
        Bundle bundle = this.oo.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(class_.getClass().getName());
        }
        return null;
    }

    public int getGender() {
        return this.om;
    }

    public Set<String> getKeywords() {
        return this.f;
    }

    public Location getLocation() {
        return this.h;
    }

    public boolean getManualImpressionsEnabled() {
        return this.on;
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> class_) {
        return (T)this.op.get(class_);
    }

    public Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> class_) {
        return this.oo.getBundle(class_.getName());
    }

    public String getPublisherProvidedId() {
        return this.oq;
    }

    public boolean isTestDevice(Context context) {
        return this.ot.contains(gr.v(context));
    }

    public static final class a {
        private Date d;
        private Location h;
        private String ol;
        private int om = -1;
        private boolean on = false;
        private final Bundle oo = new Bundle();
        private String oq;
        private int os = -1;
        private final HashSet<String> ou = new HashSet();
        private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> ov = new HashMap();
        private final HashSet<String> ow = new HashSet();

        public void a(Location location) {
            this.h = location;
        }

        @Deprecated
        public void a(NetworkExtras networkExtras) {
            if (networkExtras instanceof AdMobExtras) {
                this.a(AdMobAdapter.class, ((AdMobExtras)networkExtras).getExtras());
                return;
            }
            this.ov.put(networkExtras.getClass(), networkExtras);
        }

        public void a(Class<? extends MediationAdapter> class_, Bundle bundle) {
            this.oo.putBundle(class_.getName(), bundle);
        }

        public void a(Date date) {
            this.d = date;
        }

        public void b(Class<? extends CustomEvent> class_, Bundle bundle) {
            if (this.oo.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
                this.oo.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
            }
            this.oo.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(class_.getName(), bundle);
        }

        public void g(int n) {
            this.om = n;
        }

        public void g(boolean bl) {
            this.on = bl;
        }

        /*
         * Enabled aggressive block sorting
         */
        public void h(boolean bl) {
            int n = bl ? 1 : 0;
            this.os = n;
        }

        public void r(String string) {
            this.ou.add(string);
        }

        public void s(String string) {
            this.ow.add(string);
        }

        public void t(String string) {
            this.ol = string;
        }

        public void u(String string) {
            this.oq = string;
        }
    }

}

