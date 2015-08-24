/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingItemResolver;
import com.sonyericsson.cameracommon.viewfinder.setting.OnChangedCommonSettingListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingUi
implements OnChangedCommonSettingListener,
SettingTabs.OnTabSelectedListener,
SettingDialogController {
    private static final String TAG;
    protected final CommonSettingItemResolver mCommonItemResolver;
    protected final Context mContext;
    protected final SettingDialogStack mDialogStack;
    private final View.OnKeyListener mInterceptSettingDialogKeyListener;
    private final KeyEventTranslator mKeyEventTranslator;
    private SettingAdapter mMenuItemAdapter;
    private SettingTabs.Tab mSelectedTab;
    private SettingAdapter mSettingItemAdapter;
    private final SettingAdapter mShortcutItemAdapter;

    static;

    public SettingUi(Context var1, SettingDialogStack var2, CommonSettings var3, CommonSettingKey[] var4);

    public SettingUi(BaseActivity var1, SettingDialogStack var2, CommonSettingKey[] var3);

    static /* synthetic */ KeyEventTranslator access$000(SettingUi var0);

    private void copy(SettingAdapter var1, SettingAdapter var2);

    private static CommonSettingKey[] getVisibleCommonKeys(CommonSettingKey[] var0, BaseActivity var1);

    public void clearShortcutSelected();

    public void clearShortcutTray(Context var1);

    @Override
    public void closeCurrentDialog();

    @Override
    public void closeDialogs(boolean var1);

    protected CommonSettingKey findCommonSettingKeyShownBySettingDialog();

    public SettingTabs.Tab getSelectedTab();

    public void hideShortcutTray();

    public boolean isOpened();

    @Override
    public void onSettingChanged(CommonSettingValue var1);

    @Override
    public void onTabSelected(SettingTabs.Tab var1);

    public void openControlDialog(SettingAdapter var1, Object var2);

    public void openMenuDialog(SettingAdapter var1, SettingTabs.Tab[] var2, SettingTabs.Tab var3, Object var4, int var5);

    @Override
    public void openSecondLayerDialog(SettingAdapter var1, Object var2);

    public void openShortcutDialog(SettingAdapter var1, int var2, Object var3);

    public void selectShortcut(Object var1);

    public void setSensorOrientation(int var1);

    public void setup();

    public void showShortcutTray();

    protected void updateMenuItems(SettingAdapter var1, boolean var2);

    protected void updateSettingItems(SettingAdapter var1);

    protected void updateShortcutItems(SettingAdapter var1);

}

