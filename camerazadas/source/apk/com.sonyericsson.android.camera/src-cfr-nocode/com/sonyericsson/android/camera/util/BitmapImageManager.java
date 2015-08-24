/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.graphics.Bitmap;
import android.widget.ImageView;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class BitmapImageManager {
    private static final String TAG = "BitmapImageManager";
    private ArrayList<BitmapItem> mThumbnails;

    public BitmapImageManager();

    static /* synthetic */ ArrayList access$000(BitmapImageManager var0);

    private void dump();

    private BitmapItem getItem(Bitmap var1);

    private BitmapItem getItem(ImageView var1);

    public void add(Bitmap var1);

    public void add(Bitmap var1, ImageView var2);

    public void clear();

    public void remove(Bitmap var1);

    public void remove(ImageView var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class BitmapItem {
        private static final String TAG = "BitmapItem";
        private Bitmap mImage;
        private int mRefCount;
        private ArrayList<ImageView> mViews;
        final /* synthetic */ BitmapImageManager this$0;

        public BitmapItem(BitmapImageManager var1, Bitmap var2);

        public BitmapItem(BitmapImageManager var1, Bitmap var2, ImageView var3);

        private void clear();

        public void add();

        public void add(ImageView var1);

        public boolean contains(ImageView var1);

        public void dump();

        public boolean equal(Bitmap var1);

        public void init();

        public void remove(ImageView var1);

        public void subtract();
    }

}

