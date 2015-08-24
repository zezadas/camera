/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

/*
 * Exception performing whole class analysis.
 */
class CursorFilter
extends Filter {
    CursorFilterClient mClient;

    CursorFilter(CursorFilterClient var1);

    @Override
    public CharSequence convertResultToString(Object var1);

    @Override
    protected Filter.FilterResults performFiltering(CharSequence var1);

    @Override
    protected void publishResults(CharSequence var1, Filter.FilterResults var2);

    static interface CursorFilterClient {
        public void changeCursor(Cursor var1);

        public CharSequence convertToString(Cursor var1);

        public Cursor getCursor();

        public Cursor runQueryOnBackgroundThread(CharSequence var1);
    }

}

