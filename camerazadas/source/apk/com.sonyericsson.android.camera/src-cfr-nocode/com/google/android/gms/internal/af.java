/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.ad;
import com.google.android.gms.internal.ag;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class af
implements ViewTreeObserver.OnGlobalLayoutListener,
ViewTreeObserver.OnScrollChangedListener {
    private static final long mK;
    private WeakReference<ViewTreeObserver> mA;
    private final WeakReference<View> mB;
    private final ad mC;
    private final Context mD;
    private final ah mE;
    private boolean mF;
    private final WindowManager mG;
    private final PowerManager mH;
    private final KeyguardManager mI;
    private ag mJ;
    private boolean mL;
    private final BlockingQueue<Runnable> mM;
    private long mN;
    private boolean mO;
    private boolean mP;
    private BroadcastReceiver mQ;
    private final HashSet<ac> mR;
    private boolean mn;
    private final Object mw;
    private final WeakReference<fz> mz;

    static;

    public af(Context var1, ay var2, fz var3, View var4, gt var5);

    public af(ay var1, fz var2, gt var3, View var4, ah var5);

    static /* synthetic */ ad b(af var0);

    static /* synthetic */ boolean b(af var0, boolean var1);

    protected int a(int var1, DisplayMetrics var2);

    protected void a(View var1, Map<String, String> var2);

    public void a(ac var1);

    public void a(ag var1);

    protected void a(ah var1);

    protected void a(JSONObject var1);

    protected boolean a(Map<String, String> var1);

    protected void aD();

    protected void aE();

    public void aF();

    protected void aG();

    public boolean aH();

    protected void aI();

    protected void aJ();

    protected JSONObject aK() throws JSONException;

    protected JSONObject aL() throws JSONException;

    protected void b(ah var1);

    protected void d(View var1);

    protected void d(boolean var1);

    protected void destroy();

    protected JSONObject e(View var1) throws JSONException;

    protected void e(boolean var1);

    protected boolean f(View var1);

    @Override
    public void onGlobalLayout();

    @Override
    public void onScrollChanged();

    public void pause();

    public void resume();

    public void stop();

}

