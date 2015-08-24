/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import java.util.ArrayList;
import java.util.List;

public class LayoutAsyncInflateItems {
    private static final List<InflateItem> INFLATE_ITEMS_FOR_LAUNCH = new ArrayList<InflateItem>();

    public static List<InflateItem> getItems() {
        if (INFLATE_ITEMS_FOR_LAUNCH.size() == 0) {
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.RECTANGLE_SINGLE);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.RECTANGLE_TOUCH);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.RECTANGLE_FACE);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.RECTANGLE_OBJECT_TRACKING);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.HEAD_UP_DISPLAY);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.SPECIFIC_VIEWFIDER_LAYOUT);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.NOTIFICATION);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.CAMERA_INDICATORS);
            INFLATE_ITEMS_FOR_LAUNCH.add(CameraInflateItem.AUTO_REVIEW);
        }
        return INFLATE_ITEMS_FOR_LAUNCH;
    }

    public static enum CameraInflateItem implements InflateItem
    {
        HEAD_UP_DISPLAY(2130903090, 1),
        RECTANGLE_SINGLE(2130903040, 1),
        RECTANGLE_TOUCH(2130903040, 1),
        RECTANGLE_FACE(2130903056, 5),
        RECTANGLE_OBJECT_TRACKING(2130903040, 1),
        RECTANGLE_FAST_SINGLE(2130903057, 1),
        RECTANGLE_FAST_TOUCH(2130903057, 1),
        RECTANGLE_FAST_OBJECT_TRACKING(2130903056, 1),
        SPECIFIC_VIEWFIDER_LAYOUT(2130903082, 1),
        NOTIFICATION(2130903063, 1),
        CAMERA_INDICATORS(2130903045, 1),
        AUTO_REVIEW(2130903041, 1),
        FAST_CAPTURING_VIEWFINDER_ITEMS(2130903058, 1),
        SMART_COVER_VIEWFINDER_ITEMS(2130903081, 1);
        
        protected final int mInflateId;
        protected final int mViewCount;

        private CameraInflateItem(int n2, int n3) {
            this.mInflateId = n2;
            this.mViewCount = n3;
        }

        @Override
        public int getLayoutId() {
            return this.mInflateId;
        }

        @Override
        public int getViewCount() {
            return this.mViewCount;
        }
    }

}

