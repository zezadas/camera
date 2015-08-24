/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.k;
import java.util.Map;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 */
@ez
public class gv
extends WebView
implements DownloadListener {
    private final WindowManager mG;
    private final Object mw;
    private ay qr;
    private final gt qs;
    private final k sX;
    private final gw wH;
    private final a wI;
    private dk wJ;
    private boolean wK;
    private boolean wL;
    private boolean wM;
    private boolean wN;

    protected gv(a var1, ay var2, boolean var3, boolean var4, k var5, gt var6);

    public static gv a(Context var0, ay var1, boolean var2, boolean var3, k var4, gt var5);

    private void dA();

    private void dB();

    private void dC();

    protected void X(String var1);

    public ay Y();

    public void a(Context var1, ay var2);

    public void a(ay var1);

    public void a(dk var1);

    public void a(String var1, Map<String, ?> var2);

    public void a(String var1, JSONObject var2);

    public void b(String var1, JSONObject var2);

    public void bS();

    public void bZ();

    public void ca();

    @Override
    public void destroy();

    public dk dt();

    public gw du();

    public boolean dv();

    public k dw();

    public gt dx();

    public boolean dy();

    public Context dz();

    @Override
    public void evaluateJavascript(String var1, ValueCallback<String> var2);

    public boolean isDestroyed();

    public void o(boolean var1);

    @Override
    public void onDownloadStart(String var1, String var2, String var3, String var4, long var5);

    @Override
    protected void onMeasure(int var1, int var2);

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void setContext(Context var1);

    public void x(boolean var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    @ez
    protected static class a
    extends MutableContextWrapper {
        private Context mD;
        private Activity wO;

        public a(Context var1);

        public Context dz();

        @Override
        public void setBaseContext(Context var1);

        @Override
        public void startActivity(Intent var1);
    }

}

