/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.view.LayoutInflater;
import android.view.View;
import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class InflateTask
implements Callable<Map<InflateItem, List<View>>> {
    private static final String TAG;
    private final List<InflateItem> mInflateItemList;
    private Map<InflateItem, List<View>> mInflatedItemMap;
    private LayoutInflater mLayoutInflater;

    static;

    public InflateTask(LayoutInflater var1, List<InflateItem> var2);

    private void register(InflateItem var1);

    @Override
    public Map<InflateItem, List<View>> call();
}

