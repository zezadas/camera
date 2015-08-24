/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.coversupport;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.ViewGroup;
import com.sonymobile.coversupport.OnCoverModeChangedListener;

/*
 * Exception performing whole class analysis.
 */
public class CoverModeHandler
implements SensorEventListener {
    private static final int APP_PADDING = 12;
    public static final int BACKGROUND_BLACK = 0;
    public static final int BACKGROUND_TRANSPARENT = 1;
    private static final int PADDING_BOTTOM = 3;
    private static final int PADDING_LEFT = 0;
    private static final int PADDING_RIGHT = 2;
    private static final int PADDING_TOP = 1;
    private final Activity mActivity;
    private final BroadcastReceiver mCoverModeReceiver;
    private int mCurrentOrientation;
    private final ViewGroup mDecorView;
    private Display mDisplay;
    private boolean mDoAdjustPadding;
    private int mInitialUiOptions;
    private boolean mIsCoverMode;
    private final OnCoverModeChangedListener mOnCoverModeChangedListener;
    private Sensor mOrientationSensor;
    private int[] mPaddings;
    private SensorManager mSensorManager;
    private WindowInfo mWindowInfo;

    public CoverModeHandler(Activity var1, OnCoverModeChangedListener var2, boolean var3);

    static /* synthetic */ void access$000(CoverModeHandler var0, Intent var1, boolean var2);

    private int getNavigationBarHeight();

    private boolean isTalkBackEnabled();

    private void setCoverMode(Intent var1, boolean var2);

    public final WindowInfo getWindowInfo();

    public boolean isCoverModeActive();

    @Override
    public void onAccuracyChanged(Sensor var1, int var2);

    @Override
    public void onSensorChanged(SensorEvent var1);

    public void setBackground(int var1);

    public void start();

    public void stop();

    public void updateCoverModePadding();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class WindowInfo {
        public int appPadding;
        public int height;
        public int paddingBottom;
        public int paddingLeft;
        public int paddingRight;
        public int paddingTop;
        public int width;

        private WindowInfo();

        /* synthetic */ WindowInfo( var1);
    }

}

