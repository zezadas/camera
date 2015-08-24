/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.app.ListActivity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.sonyericsson.cameracommon.autoupload.AutoUploadPluginAdapter;
import com.sonyericsson.cameracommon.autoupload.AutoUploadPluginItem;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import java.util.Comparator;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AutoUploadPluginListActivity
extends ListActivity
implements AutoUploadSettingNotifyListener {
    private static final String ACTION_NAME = "com.sonymobile.camera.autoupload.PLUGIN_UPLOAD_SETTING";
    private static final String META_DATA_ICON = "com.sonymobile.camera.autoupload.icon";
    private static final String META_DATA_TITLE = "com.sonymobile.camera.autoupload.title";
    private static final String TAG = "AutoUploadPluginListActivity";
    private AutoUploadPluginAdapter mAutoUploadPluginAdapter;
    private List<AutoUploadPluginItem> mPlugins;

    public AutoUploadPluginListActivity();

    @Override
    public void onAutoUploadSettingNotified(Context var1, String var2, AutoUploadSettings.AutoUploadSetting var3);

    @Override
    protected void onCreate(Bundle var1);

    @Override
    protected void onListItemClick(ListView var1, View var2, int var3, long var4);

    @Override
    protected void onPause();

    @Override
    protected void onResume();

}

