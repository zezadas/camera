/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.support.v4.widget.AutoScrollHelper;
import android.view.View;
import android.widget.ListView;

public class ListViewAutoScrollHelper
extends AutoScrollHelper {
    private final ListView mTarget;

    public ListViewAutoScrollHelper(ListView listView) {
        super(listView);
        this.mTarget = listView;
    }

    @Override
    public boolean canTargetScrollHorizontally(int n) {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean canTargetScrollVertically(int n) {
        ListView listView = this.mTarget;
        int n2 = listView.getCount();
        if (n2 == 0) return false;
        int n3 = listView.getChildCount();
        int n4 = listView.getFirstVisiblePosition();
        if (n > 0) {
            if (n4 + n3 < n2) return true;
            if (listView.getChildAt(n3 - 1).getBottom() <= listView.getHeight()) return false;
            return true;
        }
        if (n >= 0) {
            return false;
        }
        if (n4 <= 0 && listView.getChildAt(0).getTop() >= 0) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void scrollTargetBy(int n, int n2) {
        View view;
        ListView listView = this.mTarget;
        n = listView.getFirstVisiblePosition();
        if (n == -1 || (view = listView.getChildAt(0)) == null) {
            return;
        }
        listView.setSelectionFromTop(n, view.getTop() - n2);
    }
}

