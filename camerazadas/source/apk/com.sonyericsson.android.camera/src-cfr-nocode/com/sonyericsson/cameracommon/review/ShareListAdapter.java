/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ShareListAdapter
extends BaseAdapter {
    private static final String TAG;
    Context mContext;
    private final LayoutInflater mInflater;
    List<ResolveInfo> mResolveInfoList;

    static;

    public ShareListAdapter(Context var1, List<ResolveInfo> var2);

    private void bindView(View var1, ResolveInfo var2);

    @Override
    public int getCount();

    @Override
    public Object getItem(int var1);

    @Override
    public long getItemId(int var1);

    @Override
    public View getView(int var1, View var2, ViewGroup var3);
}

