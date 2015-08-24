/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.coversupport;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import com.sonymobile.coversupport.OnCoverModeChangedListener;

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
    private boolean mDoAdjustPadding = false;
    private int mInitialUiOptions = 0;
    private boolean mIsCoverMode = false;
    private final OnCoverModeChangedListener mOnCoverModeChangedListener;
    private Sensor mOrientationSensor;
    private int[] mPaddings = new int[4];
    private SensorManager mSensorManager;
    private WindowInfo mWindowInfo;

    public CoverModeHandler(Activity object, OnCoverModeChangedListener onCoverModeChangedListener, boolean bl) {
        this.mCoverModeReceiver = new BroadcastReceiver(){

            @Override
            public void onReceive(Context context, Intent intent) {
                CoverModeHandler.this.setCoverMode(intent, true);
            }
        };
        this.mActivity = object;
        this.mOnCoverModeChangedListener = onCoverModeChangedListener;
        this.mDoAdjustPadding = bl;
        this.mDecorView = (ViewGroup)object.getWindow().getDecorView();
        this.mDecorView.setBackgroundColor(-16777216);
        this.mInitialUiOptions = this.mDecorView.getSystemUiVisibility();
        this.mWindowInfo = new WindowInfo();
        this.mSensorManager = (SensorManager)object.getSystemService("sensor");
        this.mOrientationSensor = this.mSensorManager.getDefaultSensor(3);
        this.mDisplay = ((WindowManager)object.getSystemService("window")).getDefaultDisplay();
        this.mCurrentOrientation = this.mDisplay.getRotation();
        object = object.registerReceiver(null, new IntentFilter("com.sonymobile.covermode.intent.action.ACTION_COVER_MODE_CHANGED"));
        if (object != null) {
            this.setCoverMode((Intent)object, false);
        }
    }

    private int getNavigationBarHeight() {
        Resources resources = this.mActivity.getResources();
        int n = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (n > 0) {
            return resources.getDimensionPixelSize(n);
        }
        return 0;
    }

    private boolean isTalkBackEnabled() {
        AccessibilityManager accessibilityManager = (AccessibilityManager)this.mActivity.getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setCoverMode(Intent intent, boolean bl) {
        boolean bl2 = intent.getBooleanExtra("com.sonymobile.covermode.intent.extra.COVER_MODE_ACTIVE", false);
        int n = intent.getIntExtra("com.sonymobile.covermode.intent.extra.COVER_WINDOW_RIGHT", 0);
        int n2 = intent.getIntExtra("com.sonymobile.covermode.intent.extra.COVER_WINDOW_BOTTOM", 0);
        this.mPaddings[0] = intent.getIntExtra("com.sonymobile.covermode.intent.extra.COVER_WINDOW_LEFT", 0);
        this.mPaddings[1] = intent.getIntExtra("com.sonymobile.covermode.intent.extra.COVER_WINDOW_TOP", 0);
        Point point = new Point();
        this.mDisplay.getRealSize(point);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mDisplay.getRealMetrics(displayMetrics);
        this.mWindowInfo.appPadding = (int)(12.0f * displayMetrics.density);
        int[] arrn = this.mPaddings;
        arrn[1] = arrn[1] - this.mWindowInfo.appPadding;
        int[] arrn2 = this.mPaddings;
        arrn2[0] = arrn2[0] - this.mWindowInfo.appPadding;
        switch (this.mDisplay.getRotation()) {
            case 0: 
            case 2: {
                this.mPaddings[3] = point.y - n2 - this.mWindowInfo.appPadding;
                this.mPaddings[2] = point.x - n - this.mWindowInfo.appPadding;
            }
            default: {
                break;
            }
            case 1: 
            case 3: {
                this.mPaddings[3] = point.x - n2 - this.mWindowInfo.appPadding;
                this.mPaddings[2] = point.y - n - this.mWindowInfo.appPadding;
            }
        }
        this.mWindowInfo.width = n - this.mPaddings[0];
        this.mWindowInfo.height = n2 - this.mPaddings[1];
        if (this.mIsCoverMode != bl2) {
            void var2_3;
            this.mIsCoverMode = bl2;
            if (this.mDoAdjustPadding) {
                this.updateCoverModePadding();
            }
            if (var2_3 != false && this.mOnCoverModeChangedListener != null) {
                this.mOnCoverModeChangedListener.onCoverModeChanged(this.mIsCoverMode);
            }
        }
    }

    public final WindowInfo getWindowInfo() {
        return this.mWindowInfo;
    }

    public boolean isCoverModeActive() {
        return this.mIsCoverMode;
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int n) {
    }

    @Override
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.mCurrentOrientation != this.mDisplay.getRotation()) {
            this.mCurrentOrientation = this.mDisplay.getRotation();
            this.updateCoverModePadding();
        }
    }

    public void setBackground(int n) {
        if (n == 1) {
            this.mDecorView.setBackground(null);
            return;
        }
        this.mDecorView.setBackgroundColor(-16777216);
    }

    public void start() {
        this.mSensorManager.registerListener(this, this.mOrientationSensor, 3);
        this.mActivity.registerReceiver(this.mCoverModeReceiver, new IntentFilter("com.sonymobile.covermode.intent.action.ACTION_COVER_MODE_CHANGED"));
    }

    public void stop() {
        this.mSensorManager.unregisterListener(this);
        this.mActivity.unregisterReceiver(this.mCoverModeReceiver);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateCoverModePadding() {
        int n;
        if (!this.mIsCoverMode) {
            this.mDecorView.setSystemUiVisibility(this.mInitialUiOptions);
            this.mDecorView.setPadding(0, 0, 0, 0);
            return;
        }
        this.mDecorView.setSystemUiVisibility(7687);
        int n2 = ((WindowManager)this.mActivity.getSystemService("window")).getDefaultDisplay().getRotation();
        this.mWindowInfo.paddingLeft = this.mPaddings[(n2 + 0) % 4];
        this.mWindowInfo.paddingTop = this.mPaddings[(n2 + 1) % 4];
        this.mWindowInfo.paddingRight = this.mPaddings[(n2 + 2) % 4];
        this.mWindowInfo.paddingBottom = this.mPaddings[(n2 + 3) % 4];
        int n3 = this.mWindowInfo.paddingRight;
        int n4 = n = this.mWindowInfo.paddingBottom;
        int n5 = n3;
        if (this.isTalkBackEnabled()) {
            n4 = this.getNavigationBarHeight();
            switch (n2) {
                default: {
                    n5 = n3;
                    n4 = n;
                    break;
                }
                case 0: 
                case 2: {
                    n4 = n - n4;
                    n5 = n3;
                    break;
                }
                case 1: 
                case 3: {
                    n5 = n3 - n4;
                    n4 = n;
                }
            }
        }
        this.mDecorView.setPadding(this.mWindowInfo.paddingLeft, this.mWindowInfo.paddingTop, n5, n4);
    }

    public static final class WindowInfo {
        public int appPadding = 0;
        public int height = 0;
        public int paddingBottom = 0;
        public int paddingLeft = 0;
        public int paddingRight = 0;
        public int paddingTop = 0;
        public int width = 0;

        private WindowInfo() {
        }
    }

}

