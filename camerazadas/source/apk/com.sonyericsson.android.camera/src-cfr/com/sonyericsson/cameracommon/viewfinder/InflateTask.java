/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public class InflateTask
implements Callable<Map<InflateItem, List<View>>> {
    private static final String TAG = InflateTask.class.getSimpleName();
    private final List<InflateItem> mInflateItemList;
    private Map<InflateItem, List<View>> mInflatedItemMap;
    private LayoutInflater mLayoutInflater;

    public InflateTask(LayoutInflater layoutInflater, List<InflateItem> list) {
        this.mLayoutInflater = layoutInflater;
        this.mInflateItemList = list;
        this.mInflatedItemMap = new HashMap<InflateItem, List<View>>();
    }

    private void register(InflateItem inflateItem) {
        ArrayList<View> arrayList = new ArrayList<View>();
        for (int i = 0; i < inflateItem.getViewCount(); ++i) {
            arrayList.add(this.mLayoutInflater.inflate(inflateItem.getLayoutId(), null));
        }
        this.mInflatedItemMap.put(inflateItem, arrayList);
    }

    @Override
    public Map<InflateItem, List<View>> call() {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.INFLATE_VIEWS, true);
        Iterator<InflateItem> iterator = this.mInflateItemList.iterator();
        while (iterator.hasNext()) {
            this.register(iterator.next());
        }
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.INFLATE_VIEWS, false);
        return this.mInflatedItemMap;
    }
}

