/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;

@ez
public final class dp
extends FrameLayout
implements View.OnClickListener {
    private final Activity nr;
    private final ImageButton sg;

    public dp(Activity activity, int n) {
        super(activity);
        this.nr = activity;
        this.setOnClickListener(this);
        this.sg = new ImageButton(activity);
        this.sg.setImageResource(17301527);
        this.sg.setBackgroundColor(0);
        this.sg.setOnClickListener(this);
        this.sg.setPadding(0, 0, 0, 0);
        this.sg.setContentDescription((CharSequence)"Interstitial close button");
        n = gr.a(activity, n);
        this.addView((View)this.sg, new FrameLayout.LayoutParams(n, n, 17));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void o(boolean bl) {
        ImageButton imageButton = this.sg;
        int n = bl ? 4 : 0;
        imageButton.setVisibility(n);
    }

    @Override
    public void onClick(View view) {
        this.nr.finish();
    }
}

