/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.widget.ResourceCursorAdapter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class SimpleCursorAdapter
extends ResourceCursorAdapter {
    private CursorToStringConverter mCursorToStringConverter;
    protected int[] mFrom;
    String[] mOriginalFrom;
    private int mStringConversionColumn = -1;
    protected int[] mTo;
    private ViewBinder mViewBinder;

    @Deprecated
    public SimpleCursorAdapter(Context context, int n, Cursor cursor, String[] arrstring, int[] arrn) {
        super(context, n, cursor);
        this.mTo = arrn;
        this.mOriginalFrom = arrstring;
        this.findColumns(arrstring);
    }

    public SimpleCursorAdapter(Context context, int n, Cursor cursor, String[] arrstring, int[] arrn, int n2) {
        super(context, n, cursor, n2);
        this.mTo = arrn;
        this.mOriginalFrom = arrstring;
        this.findColumns(arrstring);
    }

    private void findColumns(String[] arrstring) {
        if (this.mCursor != null) {
            int n = arrstring.length;
            if (this.mFrom == null || this.mFrom.length != n) {
                this.mFrom = new int[n];
            }
            for (int i = 0; i < n; ++i) {
                this.mFrom[i] = this.mCursor.getColumnIndexOrThrow(arrstring[i]);
            }
        } else {
            this.mFrom = null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void bindView(View view, Context object, Cursor cursor) {
        ViewBinder viewBinder = this.mViewBinder;
        int n = this.mTo.length;
        int[] arrn = this.mFrom;
        int[] arrn2 = this.mTo;
        for (int i = 0; i < n; ++i) {
            String string;
            View view2 = view.findViewById(arrn2[i]);
            if (view2 == null) continue;
            boolean bl = false;
            if (viewBinder != null && (bl = viewBinder.setViewValue(view2, cursor, arrn[i]))) continue;
            object = string = cursor.getString(arrn[i]);
            if (string == null) {
                object = "";
            }
            if (view2 instanceof TextView) {
                this.setViewText((TextView)view2, (String)object);
                continue;
            }
            if (!(view2 instanceof ImageView)) {
                throw new IllegalStateException(view2.getClass().getName() + " is not a " + " view that can be bounds by this SimpleCursorAdapter");
            }
            this.setViewImage((ImageView)view2, (String)object);
        }
    }

    public void changeCursorAndColumns(Cursor cursor, String[] arrstring, int[] arrn) {
        this.mOriginalFrom = arrstring;
        this.mTo = arrn;
        super.changeCursor(cursor);
        this.findColumns(this.mOriginalFrom);
    }

    @Override
    public CharSequence convertToString(Cursor cursor) {
        if (this.mCursorToStringConverter != null) {
            return this.mCursorToStringConverter.convertToString(cursor);
        }
        if (this.mStringConversionColumn > -1) {
            return cursor.getString(this.mStringConversionColumn);
        }
        return super.convertToString(cursor);
    }

    public CursorToStringConverter getCursorToStringConverter() {
        return this.mCursorToStringConverter;
    }

    public int getStringConversionColumn() {
        return this.mStringConversionColumn;
    }

    public ViewBinder getViewBinder() {
        return this.mViewBinder;
    }

    public void setCursorToStringConverter(CursorToStringConverter cursorToStringConverter) {
        this.mCursorToStringConverter = cursorToStringConverter;
    }

    public void setStringConversionColumn(int n) {
        this.mStringConversionColumn = n;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.mViewBinder = viewBinder;
    }

    public void setViewImage(ImageView imageView, String string) {
        try {
            imageView.setImageResource(Integer.parseInt(string));
            return;
        }
        catch (NumberFormatException var3_3) {
            imageView.setImageURI(Uri.parse(string));
            return;
        }
    }

    public void setViewText(TextView textView, String string) {
        textView.setText((CharSequence)string);
    }

    @Override
    public Cursor swapCursor(Cursor cursor) {
        cursor = super.swapCursor(cursor);
        this.findColumns(this.mOriginalFrom);
        return cursor;
    }

    public static interface CursorToStringConverter {
        public CharSequence convertToString(Cursor var1);
    }

    public static interface ViewBinder {
        public boolean setViewValue(View var1, Cursor var2, int var3);
    }

}

