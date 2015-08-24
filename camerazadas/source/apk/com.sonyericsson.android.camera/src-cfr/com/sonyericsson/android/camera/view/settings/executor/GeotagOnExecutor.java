/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.utility.RegionConfig;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;

public class GeotagOnExecutor
extends SettingChangeExecutor<ParameterValue> {
    private final ExtendedActivity mActivity;
    private final SettingController mSettingController;

    public GeotagOnExecutor(ExtendedActivity extendedActivity, SettingChangerInterface<ParameterValue> settingChangerInterface, SettingController settingController) {
        super(settingChangerInterface);
        this.mActivity = extendedActivity;
        this.mSettingController = settingController;
    }

    @Override
    public void onExecute(TypedSettingItem<ParameterValue> typedSettingItem) {
        if (RegionConfig.isChinaRegion(this.mActivity)) {
            this.mSettingController.closeDialogs();
        }
        this.mActivity.getGeoTagManager().setGeotag(Geotag.ON, this.mActivity, this.mSettingController.getSettingDialogController(), new GeotagDialogListener());
        GoogleAnalyticsUtil.getInstance().sendEvent(Event.Category.SETTINGS_COMMON, ParameterKey.GEO_TAG.toString(), com.sonyericsson.android.camera.configuration.parameters.Geotag.ON.toString());
    }

    private class GeotagDialogListener
    implements GeotagSettingListener {
        private GeotagDialogListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onSet(boolean bl) {
            com.sonyericsson.android.camera.configuration.parameters.Geotag geotag = bl ? com.sonyericsson.android.camera.configuration.parameters.Geotag.ON : com.sonyericsson.android.camera.configuration.parameters.Geotag.OFF;
            GeotagOnExecutor.this.mActivity.getParameterManager().set(geotag);
            if (RegionConfig.isChinaRegion(GeotagOnExecutor.this.mActivity) && !bl) {
                GeotagOnExecutor.this.mSettingController.openMenuDialog(SettingGroup.COMMON);
                GeotagOnExecutor.this.mSettingController.getSettingDialogStack().getMenuDialog().setSelectedTab(SettingTabs.Tab.Common);
            }
        }
    }

}

