/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;

public final class BitmapImageManager {
    private static final String TAG = "BitmapImageManager";
    private ArrayList<BitmapItem> mThumbnails = new ArrayList();

    public BitmapImageManager() {
        this.mThumbnails.clear();
    }

    private void dump() {
    }

    private BitmapItem getItem(Bitmap bitmap) {
        if (!(bitmap == null || bitmap.isRecycled())) {
            for (BitmapItem bitmapItem : this.mThumbnails) {
                if (!bitmapItem.equal(bitmap)) continue;
                return bitmapItem;
            }
        }
        return null;
    }

    private BitmapItem getItem(ImageView imageView) {
        if (imageView != null) {
            for (BitmapItem bitmapItem : this.mThumbnails) {
                if (!bitmapItem.contains(imageView)) continue;
                return bitmapItem;
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void add(Bitmap object) {
        if (object == null) {
            return;
        }
        ArrayList<BitmapItem> arrayList = this.mThumbnails;
        synchronized (arrayList) {
            BitmapItem bitmapItem = this.getItem((Bitmap)object);
            if (bitmapItem != null) {
                bitmapItem.add();
            } else {
                object = new BitmapItem((Bitmap)object);
                this.mThumbnails.add((BitmapItem)object);
            }
            this.dump();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void add(Bitmap object, ImageView imageView) {
        if (object == null) {
            return;
        }
        ArrayList<BitmapItem> arrayList = this.mThumbnails;
        synchronized (arrayList) {
            BitmapItem bitmapItem = this.getItem(imageView);
            if (bitmapItem != null) {
                bitmapItem.remove(imageView);
            }
            if ((bitmapItem = this.getItem((Bitmap)object)) != null) {
                bitmapItem.add(imageView);
            } else {
                object = new BitmapItem((Bitmap)object, imageView);
                this.mThumbnails.add((BitmapItem)object);
            }
            this.dump();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void clear() {
        ArrayList<BitmapItem> arrayList = this.mThumbnails;
        synchronized (arrayList) {
            Iterator<BitmapItem> iterator = this.mThumbnails.iterator();
            while (iterator.hasNext()) {
                iterator.next().init();
                iterator.remove();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void remove(Bitmap object) {
        if (object == null) {
            return;
        }
        ArrayList<BitmapItem> arrayList = this.mThumbnails;
        synchronized (arrayList) {
            object = this.getItem((Bitmap)object);
            if (object != null) {
                object.subtract();
            }
            this.dump();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void remove(ImageView imageView) {
        ArrayList<BitmapItem> arrayList = this.mThumbnails;
        synchronized (arrayList) {
            BitmapItem bitmapItem = this.getItem(imageView);
            if (bitmapItem != null) {
                bitmapItem.remove(imageView);
                imageView.setImageDrawable(null);
            }
            this.dump();
            return;
        }
    }

    private class BitmapItem {
        private static final String TAG = "BitmapItem";
        private Bitmap mImage;
        private int mRefCount;
        private ArrayList<ImageView> mViews;

        public BitmapItem(Bitmap bitmap) {
            this.mViews = new ArrayList();
            this.mImage = bitmap;
            this.mRefCount = 1;
            this.mViews.clear();
        }

        public BitmapItem(Bitmap bitmap, ImageView imageView) {
            this(bitmap);
            this.mViews.add(imageView);
        }

        private void clear() {
            synchronized (this) {
                this.init();
                BitmapImageManager.this.mThumbnails.remove(this);
                return;
            }
        }

        public void add() {
            synchronized (this) {
                if (this.mRefCount < Integer.MAX_VALUE) {
                    ++this.mRefCount;
                }
                return;
            }
        }

        public void add(ImageView imageView) {
            synchronized (this) {
                this.add();
                this.mViews.add(imageView);
                return;
            }
        }

        public boolean contains(ImageView imageView) {
            synchronized (this) {
                boolean bl = this.mViews.contains(imageView);
                return bl;
            }
        }

        public void dump() {
            synchronized (this) {
                boolean bl;
                Iterator<ImageView> iterator = this.mViews.iterator();
                while (bl = iterator.hasNext()) {
                }
                return;
            }
        }

        public boolean equal(Bitmap bitmap) {
            if (this.mImage == bitmap) {
                return true;
            }
            return false;
        }

        public void init() {
            synchronized (this) {
                if (!this.mImage.isRecycled()) {
                    this.mImage.recycle();
                }
                this.mImage = null;
                this.mRefCount = 0;
                return;
            }
        }

        public void remove(ImageView imageView) {
            synchronized (this) {
                if (this.mViews.contains(imageView)) {
                    this.mViews.remove(imageView);
                    this.subtract();
                }
                return;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        public void subtract() {
            synchronized (this) {
                if (this.mRefCount > 1) {
                    --this.mRefCount;
                } else if (this.mRefCount != 0) {
                    this.clear();
                }
                return;
            }
        }
    }

}

