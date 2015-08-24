/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import java.util.Collections;
import java.util.List;

public class ShareListAdapter
extends BaseAdapter {
    private static final String TAG = ShareListAdapter.class.getSimpleName();
    Context mContext;
    private final LayoutInflater mInflater;
    List<ResolveInfo> mResolveInfoList;

    public ShareListAdapter(Context object, List<ResolveInfo> object2) {
        int n;
        this.mContext = object;
        this.mInflater = (LayoutInflater)this.mContext.getSystemService("layout_inflater");
        this.mResolveInfoList = object2;
        if (this.mResolveInfoList != null && (n = this.mResolveInfoList.size()) > 1) {
            object = this.mResolveInfoList.get(0);
            for (int i = 1; i < n; ++i) {
                int n2;
                object2 = this.mResolveInfoList.get(i);
                int n3 = n;
                if (object.priority == object2.priority) {
                    n2 = n;
                    if (object.isDefault != object2.isDefault) {
                        n3 = n;
                    }
                } else {
                    do {
                        n2 = n3;
                        if (i >= n3) break;
                        this.mResolveInfoList.remove(i);
                        --n3;
                    } while (true);
                }
                n = n2;
            }
            Collections.sort(this.mResolveInfoList, new ResolveInfo.DisplayNameComparator(this.mContext.getPackageManager()));
        }
    }

    private void bindView(View object, ResolveInfo resolveInfo) {
        CharSequence charSequence;
        TextView textView = (TextView)object.findViewById(R.id.text);
        ImageView imageView = (ImageView)object.findViewById(R.id.icon);
        PackageManager packageManager = this.mContext.getPackageManager();
        object = charSequence = resolveInfo.loadLabel(packageManager);
        if (charSequence == null) {
            object = resolveInfo.activityInfo.name;
        }
        textView.setText((CharSequence)object);
        imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
    }

    @Override
    public int getCount() {
        if (this.mResolveInfoList != null) {
            return this.mResolveInfoList.size();
        }
        return 0;
    }

    @Override
    public Object getItem(int n) {
        return this.mResolveInfoList.get(n);
    }

    @Override
    public long getItemId(int n) {
        return n;
    }

    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(R.layout.list_item, viewGroup, false);
        }
        this.bindView(view, this.mResolveInfoList.get(n));
        return view;
    }
}

