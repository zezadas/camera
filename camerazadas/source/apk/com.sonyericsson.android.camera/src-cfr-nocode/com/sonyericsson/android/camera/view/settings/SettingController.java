/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.android.camera.view.settings.SettingList;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingController
implements SettingTabs.OnTabSelectedListener {
    private static final String TAG;
    private final CameraActivity mActivity;
    private final SettingDialogItemFactory mDialogItemFactory;
    private final View.OnKeyListener mInterceptSettingDialogKeyListener;
    private boolean mIsClosedTemporaryControlDialog;
    private KeyEventTranslator mKeyEventTranslator;
    private SettingDialogController mSettingDialogController;
    private final SettingDialogStack mSettingDialogStack;

    static;

    public SettingController(CameraActivity var1, SettingDialogStack var2);

    static /* synthetic */ SettingDialogStack access$100(SettingController var0);

    static /* synthetic */ KeyEventTranslator access$200(SettingController var0);

    static /* synthetic */ CameraActivity access$300(SettingController var0);

    private boolean checkValueIsSelectable(ParameterKey var1, ParameterManager var2, ParameterValue var3, boolean var4);

    private List<SettingItem> generateChildrenSettingItem(Context var1, ParameterKey var2, SettingGroup var3, ParameterManager var4, boolean var5);

    private SettingAdapter generateGroupItemAdapter(SettingGroup var1);

    private SettingItem generateParameterKeyItem(ParameterKey var1, SettingGroup var2, SettingExecutorInterface<ParameterKey> var3);

    private SettingAdapter generateShortcutItemAdapter();

    private SettingItem generateShortcutSettingItem(SettingList.Shortcut var1);

    private int getChildDialogItemType(ParameterKey var1, SettingGroup var2);

    private int getControlDialogItemType(ParameterKey var1);

    private int getDialogItemType(ParameterKey var1);

    private SettingItem getSelectedSettingItem(List<SettingItem> var1);

    private SettingTabs.Tab[] getTabs();

    private boolean isInMenuDialog(SettingGroup var1);

    private boolean isShortcutIconShown(ParameterKey var1);

    private boolean isShortcutIconShown(SettingGroup var1);

    private boolean isVisible(ParameterKey var1, SettingGroup var2);

    private boolean isVisible(SettingGroup var1);

    private int itemCount(SettingGroup var1);

    private int menuDialogMaxItemCount();

    private void updateStorageSetting();

    public void clearShortcutTray();

    public void closeDialogTemporary();

    public void closeDialogs();

    public void closeDialogsWithAnimation();

    public CommonSettingKey findCommonSettingKeyShownBySettingDialog();

    public void forgetTemporaryClosedDialog();

    public SettingAdapter generateParameterItemAdapter(ParameterKey var1, SettingGroup var2);

    public SettingDialogController getSettingDialogController();

    public SettingDialogStack getSettingDialogStack();

    public void hideShortcutTray();

    public boolean onCaptureButtonEvent(int var1, MotionEvent var2);

    @Override
    public void onTabSelected(SettingTabs.Tab var1);

    public void openControlDialog(SettingGroup var1);

    public void openMenuDialog(SettingGroup var1);

    public void openSecondLayerDialog(SettingAdapter var1, Object var2);

    public void openShortcutDialog(ParameterKey var1);

    public void openShortcutDialog(SettingGroup var1);

    public void reopenTemporaryClosedDialog();

    public void setSensorOrientation(int var1);

    public void showShortcutTray();

    public void updatSecondLayerDialog(boolean var1);

    public void updateSettingMenu(boolean var1);

    public void updateShortcutTray();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SettingDialogControllerImpl
    implements SettingDialogController {
        SettingController mController;

        private SettingDialogControllerImpl(SettingController var1);

        /* synthetic */ SettingDialogControllerImpl(SettingController var1,  var2);

        @Override
        public void closeCurrentDialog();

        @Override
        public void closeDialogs(boolean var1);

        @Override
        public void openSecondLayerDialog(SettingAdapter var1, Object var2);
    }

}

