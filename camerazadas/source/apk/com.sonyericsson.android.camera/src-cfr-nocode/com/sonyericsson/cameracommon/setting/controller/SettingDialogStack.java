/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogAnimation;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogListener;
import com.sonyericsson.cameracommon.setting.controller.SettingLayoutCoordinatorFactory;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut;
import java.util.HashMap;
import java.util.Stack;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingDialogStack {
    private static final View.OnKeyListener DUMMY_ON_INTERCEPT_KEY_LISTENER;
    private static final String TAG;
    private final Context mContext;
    private SettingControlDialog mControlDialog;
    private final ViewGroup mDialogBackground;
    private final HashMap<SettingDialogInterface, Object> mDialogTags;
    private boolean mIsMenuDialogOpened;
    private SettingTabDialogBasic mMenuDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mMenuDialogCoordinateData;
    private int mMenuDialogRowCount;
    private View.OnKeyListener mOnInterceptKeyListener;
    private int mOrientation;
    private SettingDialogBasic mSecondLayerDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mSecondLayerDialogCoordinateData;
    private SettingDialogAnimation mSettingAnimation;
    private final SettingDialogListener mSettingDialogListener;
    private SettingDialogBasic mShortcutDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mShortcutDialogCoordinateData;
    private int mShortcutDialotTitleId;
    private final SettingShortcut mShortcutTray;
    private Stack<Rect> mTargetAreaList;

    static;

    public SettingDialogStack(Context var1, SettingDialogListener var2, ViewGroup var3, ViewGroup var4);

    public SettingDialogStack(Context var1, SettingDialogListener var2, ViewGroup var3, ViewGroup var4, ListView var5);

    static /* synthetic */ SettingDialogInterface access$000(SettingDialogStack var0);

    static /* synthetic */ View.OnKeyListener access$100(SettingDialogStack var0);

    static /* synthetic */ SettingControlDialog access$200(SettingDialogStack var0);

    private boolean closeControlDialog(boolean var1);

    private boolean closeMenuDialog(boolean var1);

    private boolean closeSecondLayerDialog(boolean var1);

    private boolean closeShortcutDialog(boolean var1);

    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateMenuDialogLayoutCoordinateData();

    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateSecondLayerDialogLayoutCoordinateData();

    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateShortcutLayoutCoordinateData();

    private Rect getContainerRect();

    private SettingDialogInterface getCurrentDialog();

    private SettingDialogInterface[] getDialogList();

    private void removeLastRectList();

    private void resetEnabledOfDialogs();

    public void clearShortcutSelected();

    public boolean closeCurrentDialog();

    public void closeDialogs();

    public void closeDialogs(boolean var1);

    public Stack<Rect> getBlurTargetAreaList();

    public SettingTabDialogBasic getMenuDialog();

    public SettingDialogBasic getSecondLayerDialog();

    public void hideShortcutTray();

    public boolean isControlDialogOpened();

    public boolean isDialogOpened();

    public boolean isMenuDialogOpened();

    public boolean isOpened(Object var1);

    public boolean openControlDialog(SettingAdapter var1);

    public boolean openControlDialog(SettingAdapter var1, Object var2);

    public boolean openMenuDialog(SettingAdapter var1, boolean var2);

    public boolean openMenuDialog(SettingAdapter var1, SettingTabs.Tab[] var2, SettingTabs.OnTabSelectedListener var3, Object var4, int var5);

    public boolean openSecondLayerDialog(SettingAdapter var1);

    public boolean openSecondLayerDialog(SettingAdapter var1, Object var2);

    public boolean openShortcutDialog(SettingAdapter var1, int var2);

    public boolean openShortcutDialog(SettingAdapter var1, int var2, Object var3);

    public void setOnInterceptKeyListener(View.OnKeyListener var1);

    public void setUiOrientation(int var1);

    public void setupShortcutTray(SettingAdapter var1);

    public void showShortcutTray();

    public void updateMenuDialog(SettingAdapter var1);

    public <T> void updateShortcutSelected(T var1);

    public void updateShortcutTray(SettingAdapter var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class Background
    extends FrameLayout {
        final /* synthetic */ SettingDialogStack this$0;

        public Background(SettingDialogStack var1, Context var2);

        @Override
        public boolean onKeyDown(int var1, KeyEvent var2);

        @Override
        public boolean onKeyUp(int var1, KeyEvent var2);

        @Override
        public boolean onTouchEvent(MotionEvent var1);
    }

}

