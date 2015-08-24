/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings.executor;

import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/*
 * Exception performing whole class analysis.
 */
public class GeotagOnExecutor
extends SettingChangeExecutor<ParameterValue> {
    private final ExtendedActivity mActivity;
    private final SettingController mSettingController;

    public GeotagOnExecutor(ExtendedActivity var1, SettingChangerInterface<ParameterValue> var2, SettingController var3);

    static /* synthetic */ ExtendedActivity access$100(GeotagOnExecutor var0);

    static /* synthetic */ SettingController access$200(GeotagOnExecutor var0);

    @Override
    public void onExecute(TypedSettingItem<ParameterValue> var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class GeotagDialogListener
    implements GeotagSettingListener {
        final /* synthetic */ GeotagOnExecutor this$0;

        private GeotagDialogListener(GeotagOnExecutor var1);

        /* synthetic */ GeotagDialogListener(GeotagOnExecutor var1,  var2);

        @Override
        public void onSet(boolean var1);
    }

}

