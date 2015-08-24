/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.text.Editable;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;

@ez
public class gx
extends WebChromeClient {
    private final gv md;

    public gx(gv gv) {
        this.md = gv;
    }

    private static void a(AlertDialog.Builder builder, String string, final JsResult jsResult) {
        builder.setMessage((CharSequence)string).setPositiveButton(17039370, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                jsResult.confirm();
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                jsResult.cancel();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(){

            @Override
            public void onCancel(DialogInterface dialogInterface) {
                jsResult.cancel();
            }
        }).create().show();
    }

    private static void a(Context object, AlertDialog.Builder builder, String string, String string2, final JsPromptResult jsPromptResult) {
        LinearLayout linearLayout = new LinearLayout((Context)object);
        linearLayout.setOrientation(1);
        TextView textView = new TextView((Context)object);
        textView.setText((CharSequence)string);
        object = new EditText((Context)object);
        object.setText((CharSequence)string2);
        linearLayout.addView(textView);
        linearLayout.addView((View)object);
        builder.setView(linearLayout).setPositiveButton(17039370, new DialogInterface.OnClickListener((EditText)object){
            final /* synthetic */ EditText xa;

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                jsPromptResult.confirm(this.xa.getText().toString());
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialogInterface, int n) {
                jsPromptResult.cancel();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(){

            @Override
            public void onCancel(DialogInterface dialogInterface) {
                jsPromptResult.cancel();
            }
        }).create().show();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private final Context c(WebView object) {
        Context context;
        if (!(object instanceof gv)) {
            return object.getContext();
        }
        gv gv = (gv)object;
        object = context = gv.dz();
        if (context != null) return object;
        return gv.getContext();
    }

    protected final void a(View view, int n, WebChromeClient.CustomViewCallback customViewCallback) {
        dk dk = this.md.dt();
        if (dk == null) {
            gs.W("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        dk.a(view, customViewCallback);
        dk.setRequestedOrientation(n);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected boolean a(Context context, String string, String string2, String string3, JsResult jsResult, JsPromptResult jsPromptResult, boolean bl) {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle((CharSequence)string);
            if (bl) {
                gx.a(context, builder, string2, string3, jsPromptResult);
                return true;
            }
            gx.a(builder, string2, jsResult);
            return true;
        }
        catch (WindowManager.BadTokenException var1_2) {
            gs.d("Fail to display Dialog.", var1_2);
        }
        return true;
    }

    @Override
    public final void onCloseWindow(WebView object) {
        if (!(object instanceof gv)) {
            gs.W("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        if ((object = ((gv)object).dt()) == null) {
            gs.W("Tried to close an AdWebView not associated with an overlay.");
            return;
        }
        object.close();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String string = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
        if (string.contains((CharSequence)"Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (.xb[consoleMessage.messageLevel().ordinal()]) {
            default: {
                gs.U(string);
                do {
                    return super.onConsoleMessage(consoleMessage);
                    break;
                } while (true);
            }
            case 1: {
                gs.T(string);
                return super.onConsoleMessage(consoleMessage);
            }
            case 2: {
                gs.W(string);
                return super.onConsoleMessage(consoleMessage);
            }
            case 3: 
            case 4: {
                gs.U(string);
                return super.onConsoleMessage(consoleMessage);
            }
            case 5: 
        }
        gs.S(string);
        return super.onConsoleMessage(consoleMessage);
    }

    @Override
    public final boolean onCreateWindow(WebView webView, boolean bl, boolean bl2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport)message.obj;
        webView = new WebView(webView.getContext());
        webView.setWebViewClient(this.md.du());
        webViewTransport.setWebView(webView);
        message.sendToTarget();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onExceededDatabaseQuota(String string, String string2, long l, long l2, long l3, WebStorage.QuotaUpdater quotaUpdater) {
        long l4 = 0x500000 - l3;
        if (l4 <= 0) {
            quotaUpdater.updateQuota(l);
            return;
        }
        if (l == 0) {
            if (l2 > l4 || l2 > 0x100000) {
                l2 = 0;
            }
        } else if (l2 == 0) {
            l2 = Math.min(Math.min(131072, l4) + l, 0x100000);
        } else {
            l3 = l;
            if (l2 <= Math.min(0x100000 - l, l4)) {
                l3 = l + l2;
            }
            l2 = l3;
        }
        quotaUpdater.updateQuota(l2);
    }

    @Override
    public final void onHideCustomView() {
        dk dk = this.md.dt();
        if (dk == null) {
            gs.W("Could not get ad overlay when hiding custom view.");
            return;
        }
        dk.bW();
    }

    @Override
    public final boolean onJsAlert(WebView webView, String string, String string2, JsResult jsResult) {
        return this.a(this.c(webView), string, string2, null, jsResult, null, false);
    }

    @Override
    public final boolean onJsBeforeUnload(WebView webView, String string, String string2, JsResult jsResult) {
        return this.a(this.c(webView), string, string2, null, jsResult, null, false);
    }

    @Override
    public final boolean onJsConfirm(WebView webView, String string, String string2, JsResult jsResult) {
        return this.a(this.c(webView), string, string2, null, jsResult, null, false);
    }

    @Override
    public final boolean onJsPrompt(WebView webView, String string, String string2, String string3, JsPromptResult jsPromptResult) {
        return this.a(this.c(webView), string, string2, string3, null, jsPromptResult, true);
    }

    @Override
    public final void onReachedMaxAppCacheSize(long l, long l2, WebStorage.QuotaUpdater quotaUpdater) {
        if (0x500000 - l2 < (l = 131072 + l)) {
            quotaUpdater.updateQuota(0);
            return;
        }
        quotaUpdater.updateQuota(l);
    }

    @Override
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.a(view, -1, customViewCallback);
    }

}

