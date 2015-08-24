/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import android.net.Uri;
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
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingChanger;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingExecutorFactory;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingItemResolver;
import com.sonyericsson.cameracommon.viewfinder.setting.OnChangedCommonSettingListener;
import java.util.ArrayList;

public class SettingUi
implements OnChangedCommonSettingListener,
SettingTabs.OnTabSelectedListener,
SettingDialogController {
    private static final String TAG = SettingUi.class.getSimpleName();
    protected final CommonSettingItemResolver mCommonItemResolver;
    protected final Context mContext;
    protected final SettingDialogStack mDialogStack;
    private final View.OnKeyListener mInterceptSettingDialogKeyListener;
    private final KeyEventTranslator mKeyEventTranslator;
    private SettingAdapter mMenuItemAdapter;
    private SettingTabs.Tab mSelectedTab;
    private SettingAdapter mSettingItemAdapter;
    private final SettingAdapter mShortcutItemAdapter;

    public SettingUi(Context context, SettingDialogStack settingDialogStack, CommonSettings commonSettings, CommonSettingKey[] arrcommonSettingKey) {
        this.mInterceptSettingDialogKeyListener = new View.OnKeyListener(){

            @Override
            public boolean onKey(View object, int n, KeyEvent keyEvent) {
                object = SettingUi.this.mKeyEventTranslator.translateKeyCode(keyEvent.getKeyCode());
                switch (.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[object.ordinal()]) {
                    default: {
                        return false;
                    }
                    case 1: 
                    case 2: 
                }
                if (SettingUi.this.mDialogStack.isDialogOpened()) {
                    SettingUi.this.mDialogStack.closeDialogs();
                }
                return true;
            }
        };
        this.mContext = context;
        this.mDialogStack = settingDialogStack;
        this.mKeyEventTranslator = new KeyEventTranslator(commonSettings);
        this.mCommonItemResolver = new CommonSettingItemResolver(context, commonSettings, new CommonSettingExecutorFactory(context, this, new CommonSettingChanger(commonSettings, this)), arrcommonSettingKey);
        this.mShortcutItemAdapter = new SettingAdapter(this.mContext);
        this.mMenuItemAdapter = null;
        this.mSettingItemAdapter = null;
        this.mSelectedTab = null;
        this.mDialogStack.setOnInterceptKeyListener(this.mInterceptSettingDialogKeyListener);
    }

    public SettingUi(BaseActivity baseActivity, SettingDialogStack settingDialogStack, CommonSettingKey[] arrcommonSettingKey) {
        this(baseActivity, settingDialogStack, baseActivity.getCommonSettings(), SettingUi.getVisibleCommonKeys(arrcommonSettingKey, baseActivity));
    }

    private void copy(SettingAdapter settingAdapter, SettingAdapter settingAdapter2) {
        settingAdapter.clear();
        for (int i = 0; i < settingAdapter2.getCount(); ++i) {
            settingAdapter.add(settingAdapter2.getItem(i));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static CommonSettingKey[] getVisibleCommonKeys(CommonSettingKey[] arrcommonSettingKey, BaseActivity baseActivity) {
        ArrayList<CommonSettingKey> arrayList = new ArrayList<CommonSettingKey>();
        block4 : for (CommonSettingKey commonSettingKey : arrcommonSettingKey) {
            switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[commonSettingKey.ordinal()]) {
                default: {
                    arrayList.add(commonSettingKey);
                    continue block4;
                }
                case 1: {
                    if (baseActivity.getExtraOutput() != null) continue block4;
                    arrayList.add(commonSettingKey);
                    continue block4;
                }
                case 2: {
                    if (!CommonUtility.isSystemApp(baseActivity)) continue block4;
                    arrayList.add(commonSettingKey);
                }
            }
        }
        return arrayList.toArray(new CommonSettingKey[0]);
    }

    public void clearShortcutSelected() {
        this.mDialogStack.clearShortcutSelected();
    }

    public void clearShortcutTray(Context context) {
        this.updateShortcutItems(new SettingAdapter(context));
    }

    @Override
    public void closeCurrentDialog() {
        this.mDialogStack.closeCurrentDialog();
    }

    @Override
    public void closeDialogs(boolean bl) {
        this.mDialogStack.closeDialogs(bl);
    }

    protected CommonSettingKey findCommonSettingKeyShownBySettingDialog() {
        for (CommonSettingKey commonSettingKey : CommonSettingKey.values()) {
            if (!this.mDialogStack.isOpened(commonSettingKey)) continue;
            return commonSettingKey;
        }
        return null;
    }

    public SettingTabs.Tab getSelectedTab() {
        return this.mSelectedTab;
    }

    public void hideShortcutTray() {
        this.mDialogStack.hideShortcutTray();
    }

    public boolean isOpened() {
        return this.mDialogStack.isDialogOpened();
    }

    @Override
    public void onSettingChanged(CommonSettingValue commonSettingValue) {
    }

    @Override
    public void onTabSelected(SettingTabs.Tab tab) {
        this.mSelectedTab = tab;
    }

    public void openControlDialog(SettingAdapter settingAdapter, Object object) {
        this.mSettingItemAdapter = settingAdapter;
        this.mDialogStack.openControlDialog(settingAdapter, object);
    }

    public void openMenuDialog(SettingAdapter settingAdapter, SettingTabs.Tab[] arrtab, SettingTabs.Tab tab, Object object, int n) {
        if (this.mDialogStack.openMenuDialog(settingAdapter, arrtab, this, object, n)) {
            this.mMenuItemAdapter = settingAdapter;
            this.mSelectedTab = tab;
            this.mDialogStack.getMenuDialog().setSelectedTab(this.mSelectedTab);
        }
    }

    @Override
    public void openSecondLayerDialog(SettingAdapter settingAdapter, Object object) {
        this.mSettingItemAdapter = settingAdapter;
        this.mDialogStack.openSecondLayerDialog(this.mSettingItemAdapter, object);
    }

    public void openShortcutDialog(SettingAdapter settingAdapter, int n, Object object) {
        this.mSettingItemAdapter = settingAdapter;
        this.mDialogStack.openShortcutDialog(this.mSettingItemAdapter, n, object);
    }

    public void selectShortcut(Object object) {
        if (this.mShortcutItemAdapter != null) {
            this.mShortcutItemAdapter.selectByData(object);
            this.mShortcutItemAdapter.notifyDataSetChanged();
        }
    }

    public void setSensorOrientation(int n) {
        this.mDialogStack.setUiOrientation(n);
    }

    public void setup() {
        this.mDialogStack.updateShortcutTray(this.mShortcutItemAdapter);
    }

    public void showShortcutTray() {
        this.mDialogStack.showShortcutTray();
    }

    protected void updateMenuItems(SettingAdapter settingAdapter, boolean bl) {
        if (this.mMenuItemAdapter != null) {
            this.copy(this.mMenuItemAdapter, settingAdapter);
            if (bl) {
                this.mMenuItemAdapter.notifyDataSetInvalidated();
            }
        } else {
            return;
        }
        this.mMenuItemAdapter.notifyDataSetChanged();
    }

    protected void updateSettingItems(SettingAdapter settingAdapter) {
        if (this.mSettingItemAdapter != null) {
            this.copy(this.mSettingItemAdapter, settingAdapter);
            this.mSettingItemAdapter.notifyDataSetChanged();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateShortcutItems(SettingAdapter settingAdapter) {
        if (this.mShortcutItemAdapter != null) {
            if (settingAdapter.getSelected() == null) {
                SettingItem settingItem = this.mShortcutItemAdapter.getSelected();
                this.copy(this.mShortcutItemAdapter, settingAdapter);
                this.mShortcutItemAdapter.selectByItem(settingItem);
            } else {
                this.copy(this.mShortcutItemAdapter, settingAdapter);
            }
            this.mShortcutItemAdapter.notifyDataSetChanged();
        }
    }

}

