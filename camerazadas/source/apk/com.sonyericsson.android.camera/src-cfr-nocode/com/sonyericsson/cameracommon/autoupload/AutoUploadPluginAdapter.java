/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.cameracommon.autoupload.AutoUploadPluginItem;
import java.util.List;

public class AutoUploadPluginAdapter
extends ArrayAdapter<AutoUploadPluginItem> {
    public AutoUploadPluginAdapter(Context var1, int var2, List<AutoUploadPluginItem> var3);

    @Override
    public View getView(int var1, View var2, ViewGroup var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ViewHolder {
        public ImageView checkMark;
        public ImageView icon;
        public TextView title;

        private ViewHolder();

        /* synthetic */ ViewHolder( var1);
    }

}

