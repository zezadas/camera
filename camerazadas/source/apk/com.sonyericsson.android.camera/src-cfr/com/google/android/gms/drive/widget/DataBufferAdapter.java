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
import android.widget.TextView;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.drive.internal.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class DataBufferAdapter<T>
extends BaseAdapter {
    private final int RR;
    private int RS;
    private final int RT;
    private final List<DataBuffer<T>> RU;
    private final LayoutInflater RV;
    private boolean RW = true;
    private final Context mContext;

    public DataBufferAdapter(Context context, int n) {
        this(context, n, 0, new ArrayList<DataBuffer<T>>());
    }

    public DataBufferAdapter(Context context, int n, int n2) {
        this(context, n, n2, new ArrayList<DataBuffer<T>>());
    }

    public DataBufferAdapter(Context context, int n, int n2, List<DataBuffer<T>> list) {
        this.mContext = context;
        this.RS = n;
        this.RR = n;
        this.RT = n2;
        this.RU = list;
        this.RV = (LayoutInflater)context.getSystemService("layout_inflater");
    }

    public /* varargs */ DataBufferAdapter(Context context, int n, int n2, DataBuffer<T> ... arrdataBuffer) {
        this(context, n, n2, Arrays.asList(arrdataBuffer));
    }

    public DataBufferAdapter(Context context, int n, List<DataBuffer<T>> list) {
        this(context, n, 0, list);
    }

    public /* varargs */ DataBufferAdapter(Context context, int n, DataBuffer<T> ... arrdataBuffer) {
        this(context, n, 0, Arrays.asList(arrdataBuffer));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private View a(int n, View view, ViewGroup view2, int n2) {
        void var3_6;
        T t;
        block6 : {
            if (view == null) {
                void var4_8;
                view = this.RV.inflate((int)var4_8, (ViewGroup)view2, false);
            }
            try {
                if (this.RT == 0) {
                    TextView textView = (TextView)view;
                    break block6;
                }
                TextView textView = (TextView)view.findViewById(this.RT);
            }
            catch (ClassCastException var2_3) {
                v.a("DataBufferAdapter", var2_3, "You must supply a resource ID for a TextView");
                throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", var2_3);
            }
        }
        if ((t = this.getItem(n)) instanceof CharSequence) {
            var3_6.setText((CharSequence)t);
            return view;
        }
        var3_6.setText((CharSequence)t.toString());
        return view;
    }

    public void append(DataBuffer<T> dataBuffer) {
        this.RU.add(dataBuffer);
        if (this.RW) {
            this.notifyDataSetChanged();
        }
    }

    public void clear() {
        Iterator<DataBuffer<T>> iterator = this.RU.iterator();
        while (iterator.hasNext()) {
            iterator.next().release();
        }
        this.RU.clear();
        if (this.RW) {
            this.notifyDataSetChanged();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override
    public int getCount() {
        Iterator<DataBuffer<T>> iterator = this.RU.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            n = iterator.next().getCount() + n;
        }
        return n;
    }

    @Override
    public View getDropDownView(int n, View view, ViewGroup viewGroup) {
        return this.a(n, view, viewGroup, this.RS);
    }

    public T getItem(int n) throws CursorIndexOutOfBoundsException {
        Iterator iterator = this.RU.iterator();
        int n2 = n;
        while (iterator.hasNext()) {
            DataBuffer<T> dataBuffer = iterator.next();
            int n3 = dataBuffer.getCount();
            if (n3 <= n2) {
                n2-=n3;
                continue;
            }
            try {
                iterator = dataBuffer.get(n2);
            }
            catch (CursorIndexOutOfBoundsException var4_3) {
                throw new CursorIndexOutOfBoundsException(n, this.getCount());
            }
            return (T)iterator;
        }
        throw new CursorIndexOutOfBoundsException(n, this.getCount());
    }

    @Override
    public long getItemId(int n) {
        return n;
    }

    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        return this.a(n, view, viewGroup, this.RR);
    }

    @Override
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.RW = true;
    }

    public void setDropDownViewResource(int n) {
        this.RS = n;
    }

    public void setNotifyOnChange(boolean bl) {
        this.RW = bl;
    }
}

