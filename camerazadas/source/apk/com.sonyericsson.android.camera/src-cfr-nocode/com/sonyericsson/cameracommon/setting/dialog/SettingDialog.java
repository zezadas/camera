/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogStateListener;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/*
 * Exception performing whole class analysis.
 */
public abstract class SettingDialog
extends RelativeLayout
implements SettingDialogInterface {
    private Animation mCloseAnimation;
    private boolean mIsNested;
    private LayoutCoordinator mLayoutCoordinator;
    protected int mOrientation;
    private ViewGroup mParentView;
    private SettingDialogStateListener mStateListener;

    public SettingDialog(Context var1, AttributeSet var2);

    static /* synthetic */ ViewGroup access$000(SettingDialog var0);

    protected void cancelAnimation();

    @Override
    public void close();

    @Override
    public LayoutCoordinator getLayoutCoordinator();

    @Override
    public boolean hitTest(int var1, int var2);

    @Override
    public boolean isNested();

    protected void notifyItemSelected(SettingItem var1);

    protected void notifyItemUpdated(SettingItem var1);

    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    public void open(ViewGroup var1);

    @Override
    public void open(ViewGroup var1, boolean var2);

    @Override
    public abstract void setAdapter(SettingAdapter var1);

    @Override
    public void setCloseAnimation(Animation var1);

    @Override
    public void setLayoutCoordinator(LayoutCoordinator var1);

    @Override
    public void setSensorOrientation(int var1);

    @Override
    public void setStateListener(SettingDialogStateListener var1);

    protected void startAnimation();

    protected void updateSelectItem(SettingAdapter var1, SettingItem var2);

}

