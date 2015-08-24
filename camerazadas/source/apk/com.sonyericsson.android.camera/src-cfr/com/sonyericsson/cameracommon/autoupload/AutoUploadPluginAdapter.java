/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.autoupload.AutoUploadPluginItem;
import java.util.List;

public class AutoUploadPluginAdapter
extends ArrayAdapter<AutoUploadPluginItem> {
    public AutoUploadPluginAdapter(Context context, int n, List<AutoUploadPluginItem> list) {
        super(context, n, list);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public View getView(int n, View view, ViewGroup object) {
        AutoUploadPluginItem autoUploadPluginItem = (AutoUploadPluginItem)this.getItem(n);
        if (view == null) {
            view = ((LayoutInflater)this.getContext().getSystemService("layout_inflater")).inflate(R.layout.auto_upload_plugin_list_item, null);
            object = new ViewHolder();
            object.icon = (ImageView)view.findViewById(R.id.auto_upload_plugin_list_item_icon);
            object.title = (TextView)view.findViewById(R.id.auto_upload_plugin_list_item_title);
            object.checkMark = (ImageView)view.findViewById(R.id.auto_upload_plugin_list_item_check_mark);
            view.setTag(object);
        } else {
            object = (ViewHolder)view.getTag();
        }
        object.icon.setImageDrawable(autoUploadPluginItem.getIcon());
        object.title.setText((CharSequence)autoUploadPluginItem.getTitle());
        object = object.checkMark;
        n = autoUploadPluginItem.isChecked() ? R.drawable.cam_auto_upload_enable_icn : R.drawable.cam_auto_upload_disable_icn;
        object.setImageResource(n);
        return view;
    }

    private static class ViewHolder {
        public ImageView checkMark;
        public ImageView icon;
        public TextView title;

        private ViewHolder() {
        }
    }

}

