/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.support.v4.widget.AutoScrollHelper;
import android.widget.ListView;

/*
 * Exception performing whole class analysis.
 */
public class ListViewAutoScrollHelper
extends AutoScrollHelper {
    private final ListView mTarget;

    public ListViewAutoScrollHelper(ListView var1);

    @Override
    public boolean canTargetScrollHorizontally(int var1);

    @Override
    public boolean canTargetScrollVertically(int var1);

    @Override
    public void scrollTargetBy(int var1, int var2);
}

