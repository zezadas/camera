/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;

/*
 * Exception performing whole class analysis.
 */
@ez
public class gx
extends WebChromeClient {
    private final gv md;

    public gx(gv var1);

    private static void a(AlertDialog.Builder var0, String var1, JsResult var2);

    private static void a(Context var0, AlertDialog.Builder var1, String var2, String var3, JsPromptResult var4);

    private final Context c(WebView var1);

    protected final void a(View var1, int var2, WebChromeClient.CustomViewCallback var3);

    protected boolean a(Context var1, String var2, String var3, String var4, JsResult var5, JsPromptResult var6, boolean var7);

    @Override
    public final void onCloseWindow(WebView var1);

    @Override
    public final boolean onConsoleMessage(ConsoleMessage var1);

    @Override
    public final boolean onCreateWindow(WebView var1, boolean var2, boolean var3, Message var4);

    @Override
    public final void onExceededDatabaseQuota(String var1, String var2, long var3, long var5, long var7, WebStorage.QuotaUpdater var9);

    @Override
    public final void onHideCustomView();

    @Override
    public final boolean onJsAlert(WebView var1, String var2, String var3, JsResult var4);

    @Override
    public final boolean onJsBeforeUnload(WebView var1, String var2, String var3, JsResult var4);

    @Override
    public final boolean onJsConfirm(WebView var1, String var2, String var3, JsResult var4);

    @Override
    public final boolean onJsPrompt(WebView var1, String var2, String var3, String var4, JsPromptResult var5);

    @Override
    public final void onReachedMaxAppCacheSize(long var1, long var3, WebStorage.QuotaUpdater var5);

    @Override
    public final void onShowCustomView(View var1, WebChromeClient.CustomViewCallback var2);

}

