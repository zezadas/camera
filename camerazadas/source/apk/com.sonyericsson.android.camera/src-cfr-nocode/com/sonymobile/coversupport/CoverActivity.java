/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.coversupport;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import com.sonymobile.coversupport.CoverModeHandler;
import com.sonymobile.coversupport.OnCoverModeChangedListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class CoverActivity
extends Activity
implements OnCoverModeChangedListener {
    private CoverModeHandler mCoverModeHandler;

    public CoverActivity();

    public final CoverModeHandler.WindowInfo getWindowInfo();

    protected boolean isCoverMode();

    @Override
    public void onConfigurationChanged(Configuration var1);

    @Override
    protected void onCreate(Bundle var1);

    @Override
    protected void onStart();

    @Override
    protected void onStop();

    protected void setBackground(int var1);
}

