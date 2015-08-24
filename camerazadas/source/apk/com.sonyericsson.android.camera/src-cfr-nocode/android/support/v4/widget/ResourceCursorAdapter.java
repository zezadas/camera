/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/*
 * Exception performing whole class analysis.
 */
public abstract class ResourceCursorAdapter
extends CursorAdapter {
    private int mDropDownLayout;
    private LayoutInflater mInflater;
    private int mLayout;

    @Deprecated
    public ResourceCursorAdapter(Context var1, int var2, Cursor var3);

    public ResourceCursorAdapter(Context var1, int var2, Cursor var3, int var4);

    public ResourceCursorAdapter(Context var1, int var2, Cursor var3, boolean var4);

    @Override
    public View newDropDownView(Context var1, Cursor var2, ViewGroup var3);

    @Override
    public View newView(Context var1, Cursor var2, ViewGroup var3);

    public void setDropDownViewResource(int var1);

    public void setViewResource(int var1);
}

