/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.ResourceCursorAdapter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 */
public class SimpleCursorAdapter
extends ResourceCursorAdapter {
    private CursorToStringConverter mCursorToStringConverter;
    protected int[] mFrom;
    String[] mOriginalFrom;
    private int mStringConversionColumn;
    protected int[] mTo;
    private ViewBinder mViewBinder;

    @Deprecated
    public SimpleCursorAdapter(Context var1, int var2, Cursor var3, String[] var4, int[] var5);

    public SimpleCursorAdapter(Context var1, int var2, Cursor var3, String[] var4, int[] var5, int var6);

    private void findColumns(String[] var1);

    @Override
    public void bindView(View var1, Context var2, Cursor var3);

    public void changeCursorAndColumns(Cursor var1, String[] var2, int[] var3);

    @Override
    public CharSequence convertToString(Cursor var1);

    public CursorToStringConverter getCursorToStringConverter();

    public int getStringConversionColumn();

    public ViewBinder getViewBinder();

    public void setCursorToStringConverter(CursorToStringConverter var1);

    public void setStringConversionColumn(int var1);

    public void setViewBinder(ViewBinder var1);

    public void setViewImage(ImageView var1, String var2);

    public void setViewText(TextView var1, String var2);

    @Override
    public Cursor swapCursor(Cursor var1);

    public static interface CursorToStringConverter {
        public CharSequence convertToString(Cursor var1);
    }

    public static interface ViewBinder {
        public boolean setViewValue(View var1, Cursor var2, int var3);
    }

}

