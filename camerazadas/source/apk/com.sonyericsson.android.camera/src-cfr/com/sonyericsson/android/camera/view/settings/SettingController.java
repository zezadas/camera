/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import android.content.Context;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.android.camera.view.settings.SettingList;
import com.sonyericsson.android.camera.view.settings.SettingUtil;
import com.sonyericsson.android.camera.view.settings.executor.SettingExecutorFactory;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class SettingController
implements SettingTabs.OnTabSelectedListener {
    private static final String TAG = SettingController.class.getSimpleName();
    private final CameraActivity mActivity;
    private final SettingDialogItemFactory mDialogItemFactory;
    private final View.OnKeyListener mInterceptSettingDialogKeyListener;
    private boolean mIsClosedTemporaryControlDialog = false;
    private KeyEventTranslator mKeyEventTranslator;
    private SettingDialogController mSettingDialogController;
    private final SettingDialogStack mSettingDialogStack;

    public SettingController(CameraActivity cameraActivity, SettingDialogStack settingDialogStack) {
        this.mSettingDialogController = new SettingDialogControllerImpl(this);
        this.mInterceptSettingDialogKeyListener = new View.OnKeyListener(){

            /*
             * Exception decompiling
             */
            @Override
            public boolean onKey(View var1_1, int var2_2, KeyEvent var3_3) {
                // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
                // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[CASE]], but top level block is 3[SWITCH]
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
                // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
                // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
                // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
                // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
                // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
                // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
                // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
                // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
                // org.benf.cfr.reader.Main.doJar(Main.java:126)
                // org.benf.cfr.reader.Main.main(Main.java:178)
                throw new IllegalStateException("Decompilation failed");
            }
        };
        this.mActivity = cameraActivity;
        this.mDialogItemFactory = new SettingDialogItemFactory();
        this.mSettingDialogStack = settingDialogStack;
        this.mKeyEventTranslator = new KeyEventTranslator(this.mActivity.getCommonSettings());
        this.mSettingDialogStack.setOnInterceptKeyListener(this.mInterceptSettingDialogKeyListener);
    }

    static /* synthetic */ KeyEventTranslator access$200(SettingController settingController) {
        return settingController.mKeyEventTranslator;
    }

    static /* synthetic */ CameraActivity access$300(SettingController settingController) {
        return settingController.mActivity;
    }

    /*
     * Exception decompiling
     */
    private boolean checkValueIsSelectable(ParameterKey var1_1, ParameterManager var2_2, ParameterValue var3_3, boolean var4_4) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:436)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    private List<SettingItem> generateChildrenSettingItem(Context context, ParameterKey parameterKey, SettingGroup settingGroup, ParameterManager parameterManager, boolean bl) {
        ArrayList<SettingItem> arrayList = new ArrayList<SettingItem>();
        ParameterValue[] arrparameterValue = parameterManager.getOptions(parameterKey);
        ParameterValue parameterValue = parameterManager.get(parameterKey);
        for (ParameterValue parameterValue2 : arrparameterValue) {
            if (parameterValue2 == null) continue;
            SettingExecutorInterface<ParameterValue> settingExecutorInterface = SettingExecutorFactory.createSettingChangeExecutor(context, parameterKey, parameterValue2, parameterManager, this, bl);
            boolean bl2 = parameterValue == parameterValue2;
            boolean bl3 = this.checkValueIsSelectable(parameterKey, parameterManager, parameterValue2, bl2);
            arrayList.add(SettingItemBuilder.build(parameterValue2).iconId(parameterValue2.getIconId()).textId(parameterValue2.getTextId()).dialogItemType(this.getChildDialogItemType(parameterKey, settingGroup)).executor(settingExecutorInterface).selected(bl2).selectable(bl3).commit());
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     */
    private SettingAdapter generateGroupItemAdapter(SettingGroup arrparameterKey) {
        Object object;
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory);
        if (this.mActivity.isOneShotPhoto() && !arrparameterKey.equals((Object)SettingGroup.COMMON)) {
            object = SettingGroup.PHOTO;
        } else {
            object = arrparameterKey;
            if (this.mActivity.isOneShotVideo()) {
                object = arrparameterKey;
                if (!arrparameterKey.equals((Object)SettingGroup.COMMON)) {
                    object = SettingGroup.VIDEO;
                }
            }
        }
        this.updateStorageSetting();
        for (ParameterKey parameterKey : object.getSettingItemList()) {
            if (!this.isVisible(parameterKey, (SettingGroup)object)) continue;
            settingAdapter.add(this.generateParameterKeyItem(parameterKey, (SettingGroup)object, SettingExecutorFactory.createSelectMenuItemExecutor(this.mActivity, parameterKey, (SettingGroup)object, this)));
        }
        return settingAdapter;
    }

    /*
     * Enabled aggressive block sorting
     */
    private SettingItem generateParameterKeyItem(ParameterKey iterator, SettingGroup settingItemBuilder, SettingExecutorInterface<ParameterKey> settingExecutorInterface) {
        Object object;
        List<SettingItem> list = this.generateChildrenSettingItem(this.mActivity, (ParameterKey)iterator, (SettingGroup)settingItemBuilder, this.mActivity.getParameterManager(), false);
        Object object2 = this.getSelectedSettingItem(list);
        int n = -1;
        settingItemBuilder = "";
        if (object2 != null) {
            int n2 = object2.getIconId();
            object = object2.getText(this.mActivity.getResources());
            object2 = object2.getSubText(this.mActivity.getResources());
            n = n2;
            settingItemBuilder = object;
            if (object2 != null) {
                settingItemBuilder = (String)object + " " + (String)object2;
                n = n2;
            }
        }
        boolean bl = iterator.isSelectable() || iterator == ParameterKey.DESTINATION_TO_SAVE;
        object = this.mActivity.getParameterManager().getParameters().capturingMode;
        settingItemBuilder = SettingItemBuilder.build(iterator).iconId(n).textId(iterator.getTitleTextId((CapturingMode)object)).text(iterator.getTitleText((Context)this.mActivity)).additionalTextForAccessibility((String)settingItemBuilder).dialogItemType(this.getDialogItemType((ParameterKey)iterator)).selectable(bl).executor(settingExecutorInterface);
        if (iterator != ParameterKey.AUTO_UPLOAD && iterator != ParameterKey.TOUCH_BLOCK) {
            iterator = list.iterator();
            while (iterator.hasNext()) {
                settingItemBuilder.item(iterator.next());
            }
        }
        return settingItemBuilder.commit();
    }

    private SettingAdapter generateShortcutItemAdapter() {
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory);
        Iterator<SettingList.Shortcut> iterator = SettingList.getSettingShortcutList(this.mActivity.getParameterManager().getParameters().capturingMode, this.mActivity).iterator();
        while (iterator.hasNext()) {
            settingAdapter.add(this.generateShortcutSettingItem(iterator.next()));
        }
        return settingAdapter;
    }

    /*
     * Enabled aggressive block sorting
     */
    private SettingItem generateShortcutSettingItem(SettingList.Shortcut enum_) {
        Object object = this.mActivity.getParameterManager().getParameters();
        ParameterValue parameterValue = object.capturingMode;
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut[enum_.ordinal()]) {
            default: {
                throw new IllegalArgumentException("Shortcut type[ " + enum_ + "] is not supported.");
            }
            case 1: {
                enum_ = object.getFacing();
                if (!this.isVisible(enum_.getParameterKey(), null)) return SettingUtil.getBlankItem();
                return SettingItemBuilder.build(enum_).iconId(2130837600).textId(enum_.getTextId()).dialogItemType(0).selectable(ParameterKey.FACING.isSelectable()).executor(SettingExecutorFactory.createSettingChangeExecutor(this.mActivity, ParameterKey.FACING, (ParameterValue)enum_, this.mActivity.getParameterManager(), this)).commit();
            }
            case 2: {
                if (!this.isVisible(ParameterKey.FLASH, null) && !this.isVisible(ParameterKey.PHOTO_LIGHT, null)) return SettingUtil.getBlankItem();
                {
                    if (!(parameterValue == CapturingMode.VIDEO || this.mActivity.isOneShotVideo())) {
                        parameterValue = object.getFlash();
                        return SettingItemBuilder.build(enum_.getGroup()).iconId(parameterValue.getIconId()).textId(parameterValue.getParameterKeyTextId()).dialogItemType(0).executor(SettingExecutorFactory.createSelectShortcutExecutor(this, enum_.getGroup())).selectable(parameterValue.getParameterKey().isSelectable()).commit();
                    }
                    parameterValue = object.getPhotoLight();
                    return SettingItemBuilder.build(enum_.getGroup()).iconId(parameterValue.getIconId()).textId(parameterValue.getParameterKeyTextId()).dialogItemType(0).executor(SettingExecutorFactory.createSelectShortcutExecutor(this, enum_.getGroup())).selectable(parameterValue.getParameterKey().isSelectable()).commit();
                }
            }
            case 3: {
                if (!this.isVisible(enum_.getGroup())) return SettingUtil.getBlankItem();
                {
                    parameterValue = object.getEv();
                    object = object.getWhiteBalance();
                    int n = parameterValue == Ev.ZERO && object == WhiteBalance.AUTO ? 2130837582 : 2130837581;
                    object = this.mActivity.getResources().getString(2131296347);
                    return SettingItemBuilder.build(enum_.getGroup()).iconId(n).textId(parameterValue.getParameterKeyTextId()).additionalTextForAccessibility((String)object).dialogItemType(0).executor(SettingExecutorFactory.createSelectShortcutExecutor(this, enum_.getGroup())).selected(this.mSettingDialogStack.isControlDialogOpened()).selectable(parameterValue.getParameterKey().isSelectable()).commit();
                }
            }
            case 4: {
                enum_ = object.getScene();
                if (!this.isVisible(enum_.getParameterKey(), null)) return SettingUtil.getBlankItem();
                return SettingItemBuilder.build(ParameterKey.SCENE).iconId(enum_.getIconId()).textId(enum_.getParameterKeyTextId()).dialogItemType(0).executor(SettingExecutorFactory.createSelectShortcutExecutor(this, ParameterKey.SCENE)).selectable(ParameterKey.SCENE.isSelectable()).commit();
            }
            case 5: {
                return SettingItemBuilder.build(SettingList.getDefaultTab((CapturingMode)parameterValue)).iconId(2130837605).textId(2131296461).dialogItemType(6).executor(SettingExecutorFactory.createSelectMenuShortcutExecutor(this)).selected(this.mSettingDialogStack.isMenuDialogOpened()).commit();
            }
            case 6: {
                enum_ = object.getSelfTimer();
                if (this.isVisible(enum_.getParameterKey(), null)) return SettingItemBuilder.build(ParameterKey.SELF_TIMER).iconId(enum_.getIconId()).textId(enum_.getParameterKeyTextId()).dialogItemType(0).executor(SettingExecutorFactory.createSelectShortcutExecutor(this, ParameterKey.SELF_TIMER)).selectable(ParameterKey.SELF_TIMER.isSelectable()).commit();
                return SettingUtil.getBlankItem();
            }
            case 7: 
        }
        return SettingUtil.getBlankItem();
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getChildDialogItemType(ParameterKey parameterKey, SettingGroup settingGroup) {
        int n;
        int n2 = n = 1;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            default: {
                n2 = 2;
            }
            case 1: 
            case 15: 
            case 16: {
                return n2;
            }
            case 17: {
                return 5;
            }
            case 18: {
                return 7;
            }
            case 2: {
                n2 = n;
                if (!this.isInMenuDialog(settingGroup)) return n2;
                return 2;
            }
        }
    }

    private int getControlDialogItemType(ParameterKey parameterKey) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            default: {
                return 2;
            }
            case 17: {
                return 5;
            }
            case 18: 
        }
        return 7;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private int getDialogItemType(ParameterKey parameterKey) {
        int n;
        int n2 = n = 4;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
            default: {
                n2 = 3;
            }
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: 
            case 12: {
                return n2;
            }
            case 13: {
                n2 = n;
                if (!HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 7)) return n2;
                return 3;
            }
            case 1: 
            case 14: 
        }
        return 0;
    }

    private SettingItem getSelectedSettingItem(List<SettingItem> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("The specified list is empty.");
        }
        for (SettingItem settingItem : list) {
            if (!settingItem.isSelected() || !settingItem.isSelectable()) continue;
            return settingItem;
        }
        return list.get(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    private SettingTabs.Tab[] getTabs() {
        CapturingMode capturingMode = this.mActivity.getParameterManager().getParameters().capturingMode;
        if (this.mActivity.isOneShotPhoto()) {
            capturingMode = CapturingMode.NORMAL;
            return SettingList.getSettingTabList(capturingMode);
        }
        if (!this.mActivity.isOneShotVideo()) return SettingList.getSettingTabList(capturingMode);
        capturingMode = CapturingMode.VIDEO;
        return SettingList.getSettingTabList(capturingMode);
    }

    private boolean isInMenuDialog(SettingGroup settingGroup) {
        if (settingGroup == null) {
            return false;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingGroup[settingGroup.ordinal()]) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
            case 3: 
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean isShortcutIconShown(ParameterKey enum_) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[enum_.ordinal()]) {
            default: {
                return false;
            }
            case 1: {
                enum_ = SettingList.Shortcut.SCENE;
                break;
            }
            case 2: {
                enum_ = SettingList.Shortcut.SELF_TIMER;
            }
        }
        Iterator<SettingList.Shortcut> iterator = SettingList.getSettingShortcutList(this.mActivity.getParameterManager().getParameters().capturingMode, this.mActivity).iterator();
        do {
            if (!iterator.hasNext()) return false;
        } while (!enum_.equals((Object)iterator.next()));
        return true;
    }

    private boolean isShortcutIconShown(SettingGroup settingGroup) {
        Iterator<SettingList.Shortcut> iterator = SettingList.getSettingShortcutList(this.mActivity.getParameterManager().getParameters().capturingMode, this.mActivity).iterator();
        while (iterator.hasNext()) {
            if (!settingGroup.equals((Object)iterator.next().getGroup())) continue;
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isVisible(ParameterKey enum_, SettingGroup settingGroup) {
        if (this.mActivity.getParameterManager().getOptions((ParameterKey)enum_).length <= 1 || ParameterKey.FAST_CAPTURE.equals(enum_) && this.mActivity.isOneShot() || ParameterKey.FAST_CAPTURE.equals(enum_) && !CommonUtility.isSystemApp(this.mActivity) || ParameterKey.SELF_TIMER.equals(enum_) && this.mActivity.isOneShotVideo() || this.isInMenuDialog(settingGroup) && ParameterKey.SELF_TIMER.equals(enum_) && this.mActivity.getParameterManager().getParameters().capturingMode.isFront() || (enum_ = enum_.getSelectability()) != ParameterSelectability.SELECTABLE && enum_ != ParameterSelectability.UNAVAILABLE) {
            return false;
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean isVisible(SettingGroup settingGroup) {
        if (settingGroup == null) {
            return false;
        }
        ParameterKey[] arrparameterKey = settingGroup.getSettingItemList();
        int n = arrparameterKey.length;
        for (int i = 0; i < n; ++i) {
            if (!this.isVisible(arrparameterKey[i], settingGroup)) continue;
            return true;
        }
        return false;
    }

    private int itemCount(SettingGroup settingGroup) {
        int n = 0;
        int n2 = 0;
        if (settingGroup != null) {
            ParameterKey[] arrparameterKey = settingGroup.getSettingItemList();
            int n3 = arrparameterKey.length;
            int n4 = 0;
            do {
                n = n2;
                if (n4 >= n3) break;
                n = n2;
                if (this.isVisible(arrparameterKey[n4], settingGroup)) {
                    n = n2 + 1;
                }
                ++n4;
                n2 = n;
            } while (true);
        }
        return n;
    }

    private int menuDialogMaxItemCount() {
        CapturingMode capturingMode = this.mActivity.getParameterManager().getParameters().capturingMode;
        int n = this.itemCount(SettingGroup.COMMON);
        if (capturingMode == CapturingMode.NORMAL) {
            return Math.max(n, this.itemCount(SettingGroup.PHOTO));
        }
        if (capturingMode == CapturingMode.VIDEO) {
            return Math.max(n, this.itemCount(SettingGroup.VIDEO));
        }
        int n2 = this.itemCount(SettingGroup.PHOTO);
        int n3 = this.itemCount(SettingGroup.VIDEO);
        return Math.max(Math.max(n, n2), n3);
    }

    private void updateStorageSetting() {
        if (this.mActivity.hasExtraOutputPath()) {
            ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.FIXED);
            return;
        }
        if (this.mActivity.getStorageManager().isToggledStorageReady()) {
            ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.SELECTABLE);
            this.mActivity.getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, true);
            return;
        }
        ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.UNAVAILABLE);
        this.mActivity.getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, false);
    }

    public void clearShortcutTray() {
        this.mSettingDialogStack.updateShortcutTray(new SettingAdapter(this.mActivity, this.mDialogItemFactory));
    }

    public void closeDialogTemporary() {
        boolean bl = this.mSettingDialogStack.isControlDialogOpened();
        this.mSettingDialogStack.closeDialogs();
        this.mIsClosedTemporaryControlDialog = bl;
    }

    public void closeDialogs() {
        this.mSettingDialogStack.closeDialogs();
    }

    public void closeDialogsWithAnimation() {
        this.mSettingDialogStack.closeDialogs(true);
    }

    public CommonSettingKey findCommonSettingKeyShownBySettingDialog() {
        for (CommonSettingKey commonSettingKey : CommonSettingKey.values()) {
            if (!this.mSettingDialogStack.isOpened(commonSettingKey)) continue;
            return commonSettingKey;
        }
        return null;
    }

    public void forgetTemporaryClosedDialog() {
        this.mIsClosedTemporaryControlDialog = false;
    }

    public SettingAdapter generateParameterItemAdapter(ParameterKey parameterKey, SettingGroup settingGroup) {
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory);
        settingAdapter.addAll(this.generateChildrenSettingItem(this.mActivity, parameterKey, settingGroup, this.mActivity.getParameterManager(), true));
        return settingAdapter;
    }

    public SettingDialogController getSettingDialogController() {
        return this.mSettingDialogController;
    }

    public SettingDialogStack getSettingDialogStack() {
        return this.mSettingDialogStack;
    }

    public void hideShortcutTray() {
        this.mSettingDialogStack.hideShortcutTray();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onCaptureButtonEvent(int n, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {
                do {
                    return false;
                    break;
                } while (true);
            }
            case 0: 
        }
        this.mSettingDialogStack.closeDialogs();
        return false;
    }

    @Override
    public void onTabSelected(SettingTabs.Tab tab) {
        this.updateSettingMenu(true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void openControlDialog(SettingGroup settingGroup) {
        if (!this.isShortcutIconShown(settingGroup)) {
            this.mSettingDialogStack.clearShortcutSelected();
            return;
        }
        if (!ControllerManager.isMenuAvailable()) {
            this.mSettingDialogStack.clearShortcutSelected();
            return;
        }
        this.mSettingDialogStack.updateShortcutSelected(settingGroup);
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory);
        ParameterKey[] arrparameterKey = settingGroup.getSettingItemList();
        int n = arrparameterKey.length;
        int n2 = 0;
        do {
            if (n2 >= n) {
                if (settingAdapter.getCount() == 0) return;
                if (this.mSettingDialogStack.openControlDialog(settingAdapter)) return;
                this.mSettingDialogStack.closeCurrentDialog();
                return;
            }
            ParameterKey parameterKey = arrparameterKey[n2];
            if (this.isVisible(parameterKey, settingGroup)) {
                SettingItemBuilder<ParameterKey> settingItemBuilder = SettingItemBuilder.build(parameterKey).dialogItemType(this.getControlDialogItemType(parameterKey)).selectable(parameterKey.isSelectable());
                ParameterManager parameterManager = this.mActivity.getParameterManager();
                Iterator<SettingItem> iterator = this.generateChildrenSettingItem(this.mActivity, parameterKey, settingGroup, parameterManager, false).iterator();
                while (iterator.hasNext()) {
                    settingItemBuilder.item(iterator.next());
                }
                settingAdapter.add(settingItemBuilder.commit());
            }
            ++n2;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void openMenuDialog(SettingGroup object) {
        if (!ControllerManager.isMenuAvailable()) {
            this.mSettingDialogStack.clearShortcutSelected();
            return;
        } else {
            if (!this.mSettingDialogStack.isMenuDialogOpened()) {
                this.mSettingDialogStack.updateShortcutSelected(object);
            }
            object = this.generateGroupItemAdapter((SettingGroup)object);
            boolean bl = this.mSettingDialogStack.openMenuDialog((SettingAdapter)object, this.getTabs(), this, null, this.menuDialogMaxItemCount());
            if (this.mSettingDialogStack.getSecondLayerDialog() != null) {
                this.mSettingDialogStack.closeCurrentDialog();
            }
            if (bl) return;
            {
                this.mSettingDialogStack.closeCurrentDialog();
                return;
            }
        }
    }

    public void openSecondLayerDialog(SettingAdapter settingAdapter, Object object) {
        this.mSettingDialogStack.openSecondLayerDialog(settingAdapter, object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void openShortcutDialog(ParameterKey parameterKey) {
        if (!this.isShortcutIconShown(parameterKey)) {
            this.mSettingDialogStack.clearShortcutSelected();
            return;
        } else {
            if (!ControllerManager.isMenuAvailable()) {
                this.mSettingDialogStack.clearShortcutSelected();
                return;
            }
            if (this.getSettingDialogStack().openShortcutDialog(this.generateParameterItemAdapter(parameterKey, null), parameterKey.getTitleTextId(this.mActivity.getParameterManager().getParameters().capturingMode))) return;
            {
                this.mSettingDialogStack.closeCurrentDialog();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void openShortcutDialog(SettingGroup settingGroup) {
        if (!this.isShortcutIconShown(settingGroup)) {
            this.mSettingDialogStack.clearShortcutSelected();
            return;
        }
        if (!ControllerManager.isMenuAvailable()) {
            this.mSettingDialogStack.clearShortcutSelected();
            return;
        }
        ParameterKey parameterKey = null;
        SettingAdapter settingAdapter = new SettingAdapter(this.mActivity, this.mDialogItemFactory);
        block0 : for (ParameterKey parameterKey2 : settingGroup.getSettingItemList()) {
            if (!this.isVisible(parameterKey2, settingGroup)) continue;
            ParameterKey parameterKey3 = parameterKey;
            if (parameterKey == null) {
                parameterKey3 = parameterKey2;
            }
            Iterator<SettingItem> iterator = this.generateChildrenSettingItem(this.mActivity, parameterKey2, settingGroup, this.mActivity.getParameterManager(), true).iterator();
            do {
                parameterKey = parameterKey3;
                if (!iterator.hasNext()) continue block0;
                settingAdapter.add(iterator.next());
            } while (true);
        }
        int n = parameterKey != null ? parameterKey.getTitleTextId(this.mActivity.getParameterManager().getParameters().capturingMode) : settingGroup.getTextId();
        if (this.mSettingDialogStack.openShortcutDialog(settingAdapter, n)) return;
        this.mSettingDialogStack.closeCurrentDialog();
    }

    public void reopenTemporaryClosedDialog() {
        if (this.mIsClosedTemporaryControlDialog) {
            this.updateShortcutTray();
            this.openControlDialog(SettingGroup.CONTROL);
            this.mIsClosedTemporaryControlDialog = false;
        }
    }

    public void setSensorOrientation(int n) {
        this.mSettingDialogStack.setUiOrientation(n);
    }

    public void showShortcutTray() {
        this.mSettingDialogStack.showShortcutTray();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updatSecondLayerDialog(boolean bl) {
        int n;
        SettingAdapter settingAdapter;
        Object object = this.mSettingDialogStack.getSecondLayerDialog();
        if (object == null || (settingAdapter = object.getAdapter()) == null) {
            return;
        }
        settingAdapter.clear();
        object = null;
        ParameterKey[] arrparameterKey = ParameterKey.values();
        int n2 = arrparameterKey.length;
        for (n = 0; n < n2; ++n) {
            ParameterKey parameterKey = arrparameterKey[n];
            if (!this.mSettingDialogStack.isOpened((Object)parameterKey)) continue;
            object = this.generateParameterItemAdapter(parameterKey, null);
        }
        if (object != null) {
            for (n = 0; n < object.getCount(); ++n) {
                settingAdapter.add(object.getItem(n));
            }
        }
        if (bl) {
            settingAdapter.notifyDataSetInvalidated();
            return;
        }
        settingAdapter.notifyDataSetChanged();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void updateSettingMenu(boolean bl) {
        Object object = this.mSettingDialogStack.getMenuDialog();
        if (object == null) {
            return;
        }
        SettingAdapter settingAdapter = object.getAdapter();
        object = object.getSelectedTab();
        if (settingAdapter == null) return;
        if (object == null) return;
        this.updateStorageSetting();
        settingAdapter.clear();
        switch (.$SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab[object.ordinal()]) {
            default: {
                object = null;
                break;
            }
            case 1: {
                object = SettingGroup.PHOTO;
                break;
            }
            case 2: {
                object = SettingGroup.VIDEO;
                break;
            }
            case 3: {
                object = SettingGroup.COMMON;
            }
        }
        if (object != null) {
            for (ParameterKey parameterKey : object.getSettingItemList()) {
                if (!this.isVisible(parameterKey, (SettingGroup)object)) continue;
                settingAdapter.add(this.generateParameterKeyItem(parameterKey, (SettingGroup)object, SettingExecutorFactory.createSelectMenuItemExecutor(this.mActivity, parameterKey, (SettingGroup)object, this)));
            }
        }
        if (bl) {
            settingAdapter.notifyDataSetInvalidated();
            return;
        }
        settingAdapter.notifyDataSetChanged();
    }

    public void updateShortcutTray() {
        this.mSettingDialogStack.clearShortcutSelected();
        this.mSettingDialogStack.updateShortcutTray(this.generateShortcutItemAdapter());
    }

    private static class SettingDialogControllerImpl
    implements SettingDialogController {
        SettingController mController;

        private SettingDialogControllerImpl(SettingController settingController) {
            this.mController = settingController;
        }

        @Override
        public void closeCurrentDialog() {
            this.mController.mSettingDialogStack.closeCurrentDialog();
        }

        @Override
        public void closeDialogs(boolean bl) {
            this.mController.mSettingDialogStack.closeDialogs(bl);
        }

        @Override
        public void openSecondLayerDialog(SettingAdapter settingAdapter, Object object) {
            this.mController.openSecondLayerDialog(settingAdapter, object);
        }
    }

}

