/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ai;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fp;
import com.google.android.gms.internal.fq;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.go;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.jy;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.u;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class fo
implements Callable<fz> {
    private final Context mContext;
    private final Object mw = new Object();
    private final u pw;
    private final go tX;
    private final ai tY;
    private boolean tZ;
    private int tc;
    private final fz.a tn;
    private List<String> ua;

    public fo(Context context, u u, ai ai, go go, fz.a a) {
        this.mContext = context;
        this.pw = u;
        this.tX = go;
        this.tY = ai;
        this.tn = a;
        this.tZ = false;
        this.tc = -2;
        this.ua = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private bq.a a(ah ah, a a, JSONObject jSONObject) throws ExecutionException, InterruptedException, JSONException {
        void var3_4;
        if (this.cH()) {
            return null;
        }
        String[] arrstring = this.b(var3_4.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
        arrstring = arrstring == null ? null : Arrays.asList(arrstring);
        this.ua = arrstring;
        Object t = a.a(this, (JSONObject)var3_4);
        if (t == null) {
            gs.T("Failed to retrieve ad assets.");
            return null;
        }
        t.a(new bq(this.pw, ah, (JSONObject)var3_4));
        return t;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private fz a(bq.a a) {
        int n;
        Object object = this.mw;
        // MONITORENTER : object
        int n2 = n = this.tc;
        if (a == null) {
            n2 = n;
            if (this.tc == -2) {
                n2 = 0;
            }
        }
        // MONITOREXIT : object
        if (n2 == -2) return new fz(this.tn.vv.tx, null, this.tn.vw.qf, n2, this.tn.vw.qg, this.ua, this.tn.vw.orientation, this.tn.vw.qj, this.tn.vv.tA, false, null, null, null, null, null, 0, this.tn.lH, this.tn.vw.tH, this.tn.vs, this.tn.vt, this.tn.vw.tN, this.tn.vp, a);
        a = null;
        return new fz(this.tn.vv.tx, null, this.tn.vw.qf, n2, this.tn.vw.qg, this.ua, this.tn.vw.orientation, this.tn.vw.qj, this.tn.vv.tA, false, null, null, null, null, null, 0, this.tn.lH, this.tn.vw.tH, this.tn.vs, this.tn.vt, this.tn.vw.tN, this.tn.vp, a);
    }

    private String[] b(JSONObject object, String arrstring) throws JSONException {
        if ((object = object.optJSONArray((String)arrstring)) == null) {
            return null;
        }
        arrstring = new String[object.length()];
        for (int i = 0; i < object.length(); ++i) {
            arrstring[i] = object.getString(i);
        }
        return arrstring;
    }

    private JSONObject c(final ah ah) throws TimeoutException, JSONException {
        if (this.cH()) {
            return null;
        }
        final gk gk = new gk();
        ah.a("/nativeAdPreProcess", new by(){

            @Override
            public void a(gv object, Map<String, String> map) {
                ah.g("/nativeAdPreProcess");
                try {
                    object = map.get("success");
                    if (!TextUtils.isEmpty((CharSequence)object)) {
                        gk.a(new JSONObject((String)object).getJSONArray("ads").getJSONObject(0));
                        return;
                    }
                }
                catch (JSONException var1_2) {
                    gs.b("Malformed native JSON response.", var1_2);
                }
                fo.this.s(0);
                o.a(fo.this.cH(), "Unable to set the ad state error!");
                gk.a(null);
            }
        });
        ah.a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(this.tn.vw.tG));
        return (JSONObject)gk.get();
    }

    private ah cG() throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        if (this.cH()) {
            return null;
        }
        ah ah = this.tY.a(this.mContext, this.tn.vv.lD, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html").get();
        ah.a(this.pw, this.pw, this.pw, this.pw, false, this.pw);
        return ah;
    }

    /*
     * Enabled aggressive block sorting
     */
    public Future<Drawable> a(JSONObject object, String object2, final boolean bl) throws JSONException {
        object = bl ? object.getJSONObject((String)object2) : object.optJSONObject((String)object2);
        object2 = object;
        if (object == null) {
            object2 = new JSONObject();
        }
        object = bl ? object2.getString("url") : object2.optString("url");
        if (TextUtils.isEmpty((CharSequence)object)) {
            this.a(0, bl);
            return new gl<Object>(null);
        }
        return this.tX.a((String)object, new go.a<Drawable>(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            public Drawable a(InputStream object) {
                try {
                    object = jy.d((InputStream)object);
                }
                catch (IOException var1_2) {
                    object = null;
                }
                if (object == null) {
                    fo.this.a(2, bl);
                    return null;
                }
                if ((object = BitmapFactory.decodeByteArray((byte[])object, 0, object.length)) == null) {
                    fo.this.a(2, bl);
                    return null;
                }
                return new BitmapDrawable(Resources.getSystem(), (Bitmap)object);
            }

            @Override
            public /* synthetic */ Object b(InputStream inputStream) {
                return this.a(inputStream);
            }

            public Drawable cI() {
                fo.this.a(2, bl);
                return null;
            }

            @Override
            public /* synthetic */ Object cJ() {
                return this.cI();
            }
        });
    }

    public void a(int n, boolean bl) {
        if (bl) {
            this.s(n);
        }
    }

    protected a b(JSONObject object) throws JSONException {
        if (this.cH()) {
            return null;
        }
        if ("2".equals(object = object.getString("template_id"))) {
            return new fp();
        }
        if ("1".equals(object)) {
            return new fq();
        }
        this.s(0);
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public fz cF() {
        try {
            var1_1 = this.cG();
            var2_7 = this.c((ah)var1_1);
            return this.a(this.a((ah)var1_1, this.b(var2_7), var2_7));
        }
        catch (JSONException var1_2) {
            block6 : {
                gs.d("Malformed native JSON response.", var1_2);
                ** GOTO lbl16
                catch (TimeoutException var1_3) {
                    gs.d("Timeout when loading native ad.", var1_3);
                    break block6;
                }
                catch (InterruptedException var1_4) {
                    break block6;
                }
                catch (ExecutionException var1_5) {
                    break block6;
                }
                catch (CancellationException var1_6) {}
            }
            if (this.tZ != false) return this.a(null);
            this.s(0);
            return this.a(null);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean cH() {
        Object object = this.mw;
        synchronized (object) {
            return this.tZ;
        }
    }

    @Override
    public /* synthetic */ Object call() throws Exception {
        return this.cF();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void s(int n) {
        Object object = this.mw;
        synchronized (object) {
            this.tZ = true;
            this.tc = n;
            return;
        }
    }

    public static interface a<T extends bq.a> {
        public T a(fo var1, JSONObject var2) throws JSONException, InterruptedException, ExecutionException;
    }

}

