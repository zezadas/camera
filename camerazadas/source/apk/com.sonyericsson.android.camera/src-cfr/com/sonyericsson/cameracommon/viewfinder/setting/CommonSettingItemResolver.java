/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import com.sonyericsson.cameracommon.viewfinder.setting.CommonSettingExecutorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CommonSettingItemResolver {
    private final Context mContext;
    private final SettingDialogItemFactory mDialogItemFactory;
    private final CommonSettingExecutorFactory mExecutorFactory;
    private final CommonSettingKey[] mItems;
    private final CommonSettings mSettings;

    public CommonSettingItemResolver(Context context, CommonSettings commonSettings, CommonSettingExecutorFactory commonSettingExecutorFactory, CommonSettingKey[] arrcommonSettingKey) {
        this.mContext = context;
        this.mSettings = commonSettings;
        this.mExecutorFactory = commonSettingExecutorFactory;
        this.mDialogItemFactory = new SettingDialogItemFactory();
        this.mItems = arrcommonSettingKey;
    }

    private int getDialogItemType(CommonSettingKey commonSettingKey) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[commonSettingKey.ordinal()]) {
            default: {
                return 3;
            }
            case 2: 
            case 6: 
            case 7: 
        }
        return 4;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private SettingItem getSettingItem(CommonSettingValue commonSettingValue, SettingExecutorInterface<CommonSettingValue> settingExecutorInterface) {
        boolean bl;
        CommonSettingKey commonSettingKey = commonSettingValue.getCommonSettingKey();
        boolean bl2 = commonSettingValue.equals(this.mSettings.get(commonSettingKey));
        if (bl2 || this.mSettings.isSelectable(commonSettingKey)) {
            bl = true;
            do {
                return SettingItemBuilder.build(commonSettingValue).iconId(commonSettingValue.getIconId()).textId(commonSettingValue.getTextId()).dialogItemType(2).executor(settingExecutorInterface).selected(bl2).selectable(bl).commit();
                break;
            } while (true);
        }
        bl = false;
        return SettingItemBuilder.build(commonSettingValue).iconId(commonSettingValue.getIconId()).textId(commonSettingValue.getTextId()).dialogItemType(2).executor(settingExecutorInterface).selected(bl2).selectable(bl).commit();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean isTouchBlockSupported() {
        ServiceInfo serviceInfo;
        if (!CommonUtility.isPackageExist("com.sonymobile.touchblocker", this.mContext)) {
            return false;
        }
        Object object = this.mContext.getPackageManager();
        if (object == null) return false;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.sonymobile.touchblocker", "com.sonymobile.touchblocker.TouchBlockerService"));
        intent.putExtra("launched_from_smallapp", false);
        object = object.queryIntentServices(intent, 4).iterator();
        do {
            if (!object.hasNext()) return false;
        } while ((serviceInfo = ((ResolveInfo)object.next()).serviceInfo) == null || !"com.sonymobile.touchblocker".equals(serviceInfo.packageName));
        return serviceInfo.exported;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean isVisible(CommonSettingKey commonSettingKey) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[commonSettingKey.ordinal()]) {
            case 1: {
                return AutoUploadSettings.getInstance().isAvailable();
            }
            case 2: {
                if (!StaticConfigurationUtil.isForceSound()) return true;
                return false;
            }
            case 3: {
                if (!CommonUtility.isSystemApp(this.mContext)) return true;
                return false;
            }
            default: {
                return true;
            }
            case 4: {
                return this.isTouchBlockSupported();
            }
            case 5: 
        }
        if (!CommonUtility.shouldStorageForceInternal(this.mContext)) return true;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public SettingAdapter generateItemAdapter() {
        SettingAdapter settingAdapter = new SettingAdapter(this.mContext, this.mDialogItemFactory);
        Object object = new ArrayList();
        for (CommonSettingKey commonSettingKey : this.mItems) {
            if (!this.isVisible(commonSettingKey)) continue;
            object.add(commonSettingKey);
        }
        object = object.iterator();
        while (object.hasNext()) {
            CommonSettingValue[] arrcommonSettingValue = (CommonSettingValue[])object.next();
            int n = this.getDialogItemType((CommonSettingKey)arrcommonSettingValue);
            Object object2 = SettingItemBuilder.build(arrcommonSettingValue).iconId(this.mSettings.get((CommonSettingKey)arrcommonSettingValue).getIconId()).textId(arrcommonSettingValue.getTitleId()).text(arrcommonSettingValue.getTitle(this.mContext)).dialogItemType(n).executor(this.mExecutorFactory.getExecutor((CommonSettingKey)arrcommonSettingValue, this.mDialogItemFactory));
            if (!arrcommonSettingValue.equals(CommonSettingKey.AUTO_UPLOAD)) {
                SettingExecutorInterface<CommonSettingValue> settingExecutorInterface = this.mExecutorFactory.getChangeValueExecutor(n);
                arrcommonSettingValue = arrcommonSettingValue.getValues();
                int n2 = arrcommonSettingValue.length;
                for (n = 0; n < n2; ++n) {
                    object2.item(this.getSettingItem(arrcommonSettingValue[n], settingExecutorInterface));
                }
            }
            settingAdapter.add(object2.commit());
        }
        return settingAdapter;
    }

    public SettingAdapter generateItemAdapter(CommonSettingKey arrcommonSettingValue) {
        SettingAdapter settingAdapter = new SettingAdapter(this.mContext, this.mDialogItemFactory);
        int n = this.getDialogItemType((CommonSettingKey)arrcommonSettingValue);
        SettingExecutorInterface<CommonSettingValue> settingExecutorInterface = this.mExecutorFactory.getChangeValueExecutor(n);
        arrcommonSettingValue = arrcommonSettingValue.getValues();
        int n2 = arrcommonSettingValue.length;
        for (n = 0; n < n2; ++n) {
            settingAdapter.add(this.getSettingItem(arrcommonSettingValue[n], settingExecutorInterface));
        }
        return settingAdapter;
    }

}

