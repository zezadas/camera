/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.autoupload.AutoUploadPluginAdapter;
import com.sonyericsson.cameracommon.autoupload.AutoUploadPluginItem;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettingNotifyListener;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class AutoUploadPluginListActivity
extends ListActivity
implements AutoUploadSettingNotifyListener {
    private static final String ACTION_NAME = "com.sonymobile.camera.autoupload.PLUGIN_UPLOAD_SETTING";
    private static final String META_DATA_ICON = "com.sonymobile.camera.autoupload.icon";
    private static final String META_DATA_TITLE = "com.sonymobile.camera.autoupload.title";
    private static final String TAG = "AutoUploadPluginListActivity";
    private AutoUploadPluginAdapter mAutoUploadPluginAdapter;
    private List<AutoUploadPluginItem> mPlugins = new ArrayList<AutoUploadPluginItem>();

    @Override
    public void onAutoUploadSettingNotified(Context object, String string, AutoUploadSettings.AutoUploadSetting autoUploadSetting) {
        object = this.mPlugins.iterator();
        while (object.hasNext()) {
            AutoUploadPluginItem autoUploadPluginItem = (AutoUploadPluginItem)object.next();
            if (!autoUploadPluginItem.getPackageClassName().equals(string)) continue;
            if (autoUploadSetting == AutoUploadSettings.AutoUploadSetting.ON) {
                autoUploadPluginItem.setChecked(true);
                continue;
            }
            if (autoUploadSetting == AutoUploadSettings.AutoUploadSetting.OFF) {
                autoUploadPluginItem.setChecked(false);
                continue;
            }
            object.remove();
        }
        this.mAutoUploadPluginAdapter.notifyDataSetChanged();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        this.setContentView(R.layout.auto_upload_plugin_list);
        object = new Intent("com.sonymobile.camera.autoupload.PLUGIN_UPLOAD_SETTING");
        object = this.getPackageManager().queryIntentActivities((Intent)object, 128);
        this.mPlugins.clear();
        Iterator<ResolveInfo> iterator = object.iterator();
        do {
            if (!iterator.hasNext()) {
                this.mAutoUploadPluginAdapter = new AutoUploadPluginAdapter(this, 0, this.mPlugins);
                this.mAutoUploadPluginAdapter.sort(new Comparator<AutoUploadPluginItem>(){

                    @Override
                    public int compare(AutoUploadPluginItem autoUploadPluginItem, AutoUploadPluginItem autoUploadPluginItem2) {
                        return autoUploadPluginItem.getTitle().compareToIgnoreCase(autoUploadPluginItem2.getTitle());
                    }
                });
                this.setListAdapter(this.mAutoUploadPluginAdapter);
                return;
            }
            ActivityInfo activityInfo = iterator.next().activityInfo;
            Object var2_4 = null;
            try {
                Resources resources = this.getPackageManager().getResourcesForApplication(activityInfo.packageName);
                Bundle bundle = activityInfo.metaData;
                object = var2_4;
                if (resources != null) {
                    object = var2_4;
                    if (bundle != null) {
                        object = new AutoUploadPluginItem(resources.getString(bundle.getInt("com.sonymobile.camera.autoupload.title")), resources.getDrawable(bundle.getInt("com.sonymobile.camera.autoupload.icon"), null), activityInfo.name);
                    }
                }
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                var1_2.printStackTrace();
                object = var2_4;
            }
            this.mPlugins.add((AutoUploadPluginItem)object);
        } while (true);
    }

    @Override
    protected void onListItemClick(ListView object, View view, int n, long l) {
        super.onListItemClick((ListView)object, view, n, l);
        object = (AutoUploadPluginItem)object.getItemAtPosition(n);
        if (object != null) {
            AutoUploadSettings.getInstance().startPluginActivity(this, object.getPackageClassName());
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        AutoUploadSettings.getInstance().cancel(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        AutoUploadSettings.getInstance().request(this, this);
    }

}

