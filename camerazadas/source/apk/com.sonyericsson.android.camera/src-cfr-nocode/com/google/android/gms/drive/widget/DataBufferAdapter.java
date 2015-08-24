/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.widget;

import android.content.Context;
import android.database.CursorIndexOutOfBoundsException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.android.gms.common.data.DataBuffer;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class DataBufferAdapter<T>
extends BaseAdapter {
    private final int RR;
    private int RS;
    private final int RT;
    private final List<DataBuffer<T>> RU;
    private final LayoutInflater RV;
    private boolean RW;
    private final Context mContext;

    public DataBufferAdapter(Context var1, int var2);

    public DataBufferAdapter(Context var1, int var2, int var3);

    public DataBufferAdapter(Context var1, int var2, int var3, List<DataBuffer<T>> var4);

    public /* varargs */ DataBufferAdapter(Context var1, int var2, int var3, DataBuffer<T> ... var4);

    public DataBufferAdapter(Context var1, int var2, List<DataBuffer<T>> var3);

    public /* varargs */ DataBufferAdapter(Context var1, int var2, DataBuffer<T> ... var3);

    private View a(int var1, View var2, ViewGroup var3, int var4);

    public void append(DataBuffer<T> var1);

    public void clear();

    public Context getContext();

    @Override
    public int getCount();

    @Override
    public View getDropDownView(int var1, View var2, ViewGroup var3);

    public T getItem(int var1) throws CursorIndexOutOfBoundsException;

    @Override
    public long getItemId(int var1);

    @Override
    public View getView(int var1, View var2, ViewGroup var3);

    @Override
    public void notifyDataSetChanged();

    public void setDropDownViewResource(int var1);

    public void setNotifyOnChange(boolean var1);
}

