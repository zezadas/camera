/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LayoutAsyncInflateItems {
    private static final List<InflateItem> INFLATE_ITEMS_FOR_LAUNCH;

    static;

    public LayoutAsyncInflateItems();

    public static List<InflateItem> getItems();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class CameraInflateItem
    extends Enum<CameraInflateItem>
    implements InflateItem {
        private static final /* synthetic */ CameraInflateItem[] $VALUES;
        public static final /* enum */ CameraInflateItem AUTO_REVIEW;
        public static final /* enum */ CameraInflateItem CAMERA_INDICATORS;
        public static final /* enum */ CameraInflateItem FAST_CAPTURING_VIEWFINDER_ITEMS;
        public static final /* enum */ CameraInflateItem HEAD_UP_DISPLAY;
        public static final /* enum */ CameraInflateItem NOTIFICATION;
        public static final /* enum */ CameraInflateItem RECTANGLE_FACE;
        public static final /* enum */ CameraInflateItem RECTANGLE_FAST_OBJECT_TRACKING;
        public static final /* enum */ CameraInflateItem RECTANGLE_FAST_SINGLE;
        public static final /* enum */ CameraInflateItem RECTANGLE_FAST_TOUCH;
        public static final /* enum */ CameraInflateItem RECTANGLE_OBJECT_TRACKING;
        public static final /* enum */ CameraInflateItem RECTANGLE_SINGLE;
        public static final /* enum */ CameraInflateItem RECTANGLE_TOUCH;
        public static final /* enum */ CameraInflateItem SMART_COVER_VIEWFINDER_ITEMS;
        public static final /* enum */ CameraInflateItem SPECIFIC_VIEWFIDER_LAYOUT;
        protected final int mInflateId;
        protected final int mViewCount;

        static;

        private CameraInflateItem(int var3, int var4);

        public static CameraInflateItem valueOf(String var0);

        public static CameraInflateItem[] values();

        @Override
        public int getLayoutId();

        @Override
        public int getViewCount();
    }

}

