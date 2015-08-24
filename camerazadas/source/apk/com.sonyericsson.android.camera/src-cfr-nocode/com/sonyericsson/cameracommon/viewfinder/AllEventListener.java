/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.activity.BaseActivity;

/*
 * Exception performing whole class analysis.
 */
public class AllEventListener
extends View {
    private static final String TAG = "AllEventListener";
    private WeakReference<BaseActivity> mBaseActivity;
    boolean mTouchEventConsumed;

    public AllEventListener(Context var1);

    public AllEventListener(Context var1, AttributeSet var2);

    public AllEventListener(Context var1, AttributeSet var2, int var3);

    public void disableTouchEvent();

    public void enableTouchEvent();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void setActivity(BaseActivity var1);
}

