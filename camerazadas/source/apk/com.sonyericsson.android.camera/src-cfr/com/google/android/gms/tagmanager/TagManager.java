/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.ce;
import com.google.android.gms.tagmanager.cx;
import com.google.android.gms.tagmanager.cy;
import com.google.android.gms.tagmanager.d;
import com.google.android.gms.tagmanager.n;
import com.google.android.gms.tagmanager.o;
import com.google.android.gms.tagmanager.r;
import com.google.android.gms.tagmanager.v;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TagManager {
    private static TagManager arN;
    private final DataLayer aod;
    private final r aqu;
    private final a arK;
    private final cx arL;
    private final ConcurrentMap<n, Boolean> arM;
    private final Context mContext;

    TagManager(Context context, a a, DataLayer dataLayer, cx cx) {
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
        this.arL = cx;
        this.arK = a;
        this.arM = new ConcurrentHashMap<n, Boolean>();
        this.aod = dataLayer;
        this.aod.a(new DataLayer.b(){

            @Override
            public void D(Map<String, Object> object) {
                if ((object = object.get("event")) != null) {
                    TagManager.this.cT(object.toString());
                }
            }
        });
        this.aod.a(new d(this.mContext));
        this.aqu = new r();
        this.py();
    }

    private void cT(String string) {
        Iterator<n> iterator = this.arM.keySet().iterator();
        while (iterator.hasNext()) {
            iterator.next().cp(string);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static TagManager getInstance(Context object) {
        synchronized (TagManager.class) {
            if (arN != null) return arN;
            if (object == null) {
                bh.T("TagManager.getInstance requires non-null context.");
                throw new NullPointerException();
            }
            arN = new TagManager((Context)object, new a(){

                @Override
                public o a(Context context, TagManager tagManager, Looper looper, String string, int n, r r) {
                    return new o(context, tagManager, looper, string, n, r);
                }
            }, new DataLayer(new v((Context)object)), cy.pw());
            return arN;
        }
    }

    private void py() {
        if (Build.VERSION.SDK_INT >= 14) {
            this.mContext.registerComponentCallbacks(new ComponentCallbacks2(){

                @Override
                public void onConfigurationChanged(Configuration configuration) {
                }

                @Override
                public void onLowMemory() {
                }

                @Override
                public void onTrimMemory(int n) {
                    if (n == 20) {
                        TagManager.this.dispatch();
                    }
                }
            });
        }
    }

    void a(n n) {
        this.arM.put(n, true);
    }

    boolean b(n n) {
        if (this.arM.remove(n) != null) {
            return true;
        }
        return false;
    }

    public void dispatch() {
        this.arL.dispatch();
    }

    public DataLayer getDataLayer() {
        return this.aod;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    boolean i(Uri object) {
        synchronized (this) {
            Object object2 = ce.oJ();
            if (!object2.i((Uri)object)) return false;
            object = object2.getContainerId();
            int n = .arP[object2.oK().ordinal()];
            switch (n) {
                case 1: {
                    object2 = this.arM.keySet().iterator();
                    while (object2.hasNext()) {
                        n n2 = (n)object2.next();
                        if (!n2.getContainerId().equals(object)) continue;
                        n2.cr(null);
                        n2.refresh();
                    }
                    return true;
                }
                default: {
                    return true;
                }
                case 2: 
                case 3: 
            }
            Iterator<n> iterator = this.arM.keySet().iterator();
            while (iterator.hasNext()) {
                n n3 = iterator.next();
                if (n3.getContainerId().equals(object)) {
                    n3.cr(object2.oL());
                    n3.refresh();
                    continue;
                }
                if (n3.nU() == null) continue;
                n3.cr(null);
                n3.refresh();
            }
            return true;
        }
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String object, int n) {
        object = this.arK.a(this.mContext, this, null, (String)object, n, this.aqu);
        object.nX();
        return object;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String object, int n, Handler handler) {
        object = this.arK.a(this.mContext, this, handler.getLooper(), (String)object, n, this.aqu);
        object.nX();
        return object;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String object, int n) {
        object = this.arK.a(this.mContext, this, null, (String)object, n, this.aqu);
        object.nZ();
        return object;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String object, int n, Handler handler) {
        object = this.arK.a(this.mContext, this, handler.getLooper(), (String)object, n, this.aqu);
        object.nZ();
        return object;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String object, int n) {
        object = this.arK.a(this.mContext, this, null, (String)object, n, this.aqu);
        object.nY();
        return object;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String object, int n, Handler handler) {
        object = this.arK.a(this.mContext, this, handler.getLooper(), (String)object, n, this.aqu);
        object.nY();
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setVerboseLoggingEnabled(boolean bl) {
        int n = bl ? 2 : 5;
        bh.setLogLevel(n);
    }

    static interface a {
        public o a(Context var1, TagManager var2, Looper var3, String var4, int var5, r var6);
    }

}

