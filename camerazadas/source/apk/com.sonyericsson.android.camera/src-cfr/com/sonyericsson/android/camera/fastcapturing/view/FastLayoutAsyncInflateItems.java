/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing.view;

import com.sonyericsson.android.camera.view.LayoutAsyncInflateItems;
import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import java.util.ArrayList;
import java.util.List;

public class FastLayoutAsyncInflateItems {
    private static final List<InflateItem> INFLATE_ITEMS_FOR_FAST = new ArrayList<InflateItem>();

    public static List<InflateItem> getInflateItemsForFast() {
        if (INFLATE_ITEMS_FOR_FAST.size() == 0) {
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.HEAD_UP_DISPLAY);
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FACE);
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FAST_SINGLE);
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FAST_TOUCH);
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FAST_OBJECT_TRACKING);
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.FAST_CAPTURING_VIEWFINDER_ITEMS);
            INFLATE_ITEMS_FOR_FAST.add(LayoutAsyncInflateItems.CameraInflateItem.SMART_COVER_VIEWFINDER_ITEMS);
        }
        return INFLATE_ITEMS_FOR_FAST;
    }
}

