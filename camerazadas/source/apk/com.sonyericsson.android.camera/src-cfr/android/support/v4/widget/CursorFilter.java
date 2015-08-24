/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

class CursorFilter
extends Filter {
    CursorFilterClient mClient;

    CursorFilter(CursorFilterClient cursorFilterClient) {
        this.mClient = cursorFilterClient;
    }

    @Override
    public CharSequence convertResultToString(Object object) {
        return this.mClient.convertToString((Cursor)object);
    }

    @Override
    protected Filter.FilterResults performFiltering(CharSequence object) {
        object = this.mClient.runQueryOnBackgroundThread((CharSequence)object);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (object != null) {
            filterResults.count = object.getCount();
            filterResults.values = object;
            return filterResults;
        }
        filterResults.count = 0;
        filterResults.values = null;
        return filterResults;
    }

    @Override
    protected void publishResults(CharSequence object, Filter.FilterResults filterResults) {
        object = this.mClient.getCursor();
        if (filterResults.values != null && filterResults.values != object) {
            this.mClient.changeCursor((Cursor)filterResults.values);
        }
    }

    static interface CursorFilterClient {
        public void changeCursor(Cursor var1);

        public CharSequence convertToString(Cursor var1);

        public Cursor getCursor();

        public Cursor runQueryOnBackgroundThread(CharSequence var1);
    }

}

