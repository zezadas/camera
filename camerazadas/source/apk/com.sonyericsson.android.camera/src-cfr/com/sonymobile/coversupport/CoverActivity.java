/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.coversupport;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import com.sonymobile.coversupport.CoverModeHandler;
import com.sonymobile.coversupport.OnCoverModeChangedListener;

public abstract class CoverActivity
extends Activity
implements OnCoverModeChangedListener {
    private CoverModeHandler mCoverModeHandler;

    public final CoverModeHandler.WindowInfo getWindowInfo() {
        return this.mCoverModeHandler.getWindowInfo();
    }

    protected boolean isCoverMode() {
        return this.mCoverModeHandler.isCoverModeActive();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mCoverModeHandler.updateCoverModePadding();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCoverModeHandler = new CoverModeHandler(this, this, true);
    }

    @Override
    protected void onStart() {
        super.onStart();
        this.mCoverModeHandler.start();
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.mCoverModeHandler.stop();
    }

    protected void setBackground(int n) {
        this.mCoverModeHandler.setBackground(n);
    }
}

