/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.images.a;
import com.google.android.gms.internal.iz;
import com.google.android.gms.internal.ja;
import com.google.android.gms.internal.kc;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
    private static final Object Ks = new Object();
    private static HashSet<Uri> Kt = new HashSet();
    private static ImageManager Ku;
    private static ImageManager Kv;
    private final Map<Uri, ImageReceiver> KA;
    private final Map<Uri, Long> KB;
    private final ExecutorService Kw;
    private final b Kx;
    private final iz Ky;
    private final Map<com.google.android.gms.common.images.a, ImageReceiver> Kz;
    private final Context mContext;
    private final Handler mHandler;

    /*
     * Enabled aggressive block sorting
     */
    private ImageManager(Context context, boolean bl) {
        this.mContext = context.getApplicationContext();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.Kw = Executors.newFixedThreadPool(4);
        if (bl) {
            this.Kx = new b(this.mContext);
            if (kc.hE()) {
                this.gG();
            }
        } else {
            this.Kx = null;
        }
        this.Ky = new iz();
        this.Kz = new HashMap<com.google.android.gms.common.images.a, ImageReceiver>();
        this.KA = new HashMap<Uri, ImageReceiver>();
        this.KB = new HashMap<Uri, Long>();
    }

    private Bitmap a(a.a a) {
        if (this.Kx == null) {
            return null;
        }
        return (Bitmap)this.Kx.get(a);
    }

    public static ImageManager c(Context context, boolean bl) {
        if (bl) {
            if (Kv == null) {
                Kv = new ImageManager(context, true);
            }
            return Kv;
        }
        if (Ku == null) {
            Ku = new ImageManager(context, false);
        }
        return Ku;
    }

    public static ImageManager create(Context context) {
        return ImageManager.c(context, false);
    }

    private void gG() {
        this.mContext.registerComponentCallbacks(new e(this.Kx));
    }

    public void a(com.google.android.gms.common.images.a a) {
        com.google.android.gms.common.internal.a.aT("ImageManager.loadImage() must be called in the main thread");
        new d(a).run();
    }

    public void loadImage(ImageView imageView, int n) {
        this.a(new a.b(imageView, n));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        this.a(new a.b(imageView, uri));
    }

    public void loadImage(ImageView object, Uri uri, int n) {
        object = new a.b((ImageView)object, uri);
        object.aw(n);
        this.a((com.google.android.gms.common.images.a)object);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        this.a(new a.c(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener object, Uri uri, int n) {
        object = new a.c((OnImageLoadedListener)object, uri);
        object.aw(n);
        this.a((com.google.android.gms.common.images.a)object);
    }

    private final class ImageReceiver
    extends ResultReceiver {
        private final ArrayList<com.google.android.gms.common.images.a> KC;
        private final Uri mUri;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.KC = new ArrayList();
        }

        public void b(com.google.android.gms.common.images.a a) {
            com.google.android.gms.common.internal.a.aT("ImageReceiver.addImageRequest() must be called in the main thread");
            this.KC.add(a);
        }

        public void c(com.google.android.gms.common.images.a a) {
            com.google.android.gms.common.internal.a.aT("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.KC.remove(a);
        }

        public void gJ() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        @Override
        public void onReceiveResult(int n, Bundle parcelable) {
            parcelable = (ParcelFileDescriptor)parcelable.getParcelable("com.google.android.gms.extra.fileDescriptor");
            ImageManager.this.Kw.execute(new c(this.mUri, (ParcelFileDescriptor)parcelable));
        }
    }

    public static interface OnImageLoadedListener {
        public void onImageLoaded(Uri var1, Drawable var2, boolean var3);
    }

    private static final class a {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    private static final class b
    extends ja<a.a, Bitmap> {
        public b(Context context) {
            super(b.I(context));
        }

        /*
         * Enabled aggressive block sorting
         */
        private static int I(Context context) {
            ActivityManager activityManager = (ActivityManager)context.getSystemService("activity");
            int n = (context.getApplicationInfo().flags & 1048576) != 0 ? 1 : 0;
            if (n != 0 && kc.hB()) {
                n = a.a(activityManager);
                return (int)((float)(n * 1048576) * 0.33f);
            }
            n = activityManager.getMemoryClass();
            return (int)((float)(n * 1048576) * 0.33f);
        }

        protected int a(a.a a, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        protected void a(boolean bl, a.a a, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(bl, a, bitmap, bitmap2);
        }

        @Override
        protected /* synthetic */ void entryRemoved(boolean bl, Object object, Object object2, Object object3) {
            this.a(bl, (a.a)object, (Bitmap)object2, (Bitmap)object3);
        }

        @Override
        protected /* synthetic */ int sizeOf(Object object, Object object2) {
            return this.a((a.a)object, (Bitmap)object2);
        }
    }

    private final class c
    implements Runnable {
        private final ParcelFileDescriptor KE;
        private final Uri mUri;

        public c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.KE = parcelFileDescriptor;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            com.google.android.gms.common.internal.a.aU("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean bl = false;
            boolean bl2 = false;
            Object object = null;
            CountDownLatch countDownLatch = null;
            if (this.KE != null) {
                try {
                    object = BitmapFactory.decodeFileDescriptor(this.KE.getFileDescriptor());
                    bl = bl2;
                }
                catch (OutOfMemoryError var3_4) {
                    Log.e("ImageManager", "OOM while loading bitmap for uri: " + this.mUri, var3_4);
                    bl = true;
                    object = countDownLatch;
                }
                try {
                    this.KE.close();
                }
                catch (IOException var4_7) {
                    Log.e("ImageManager", "closed failed", var4_7);
                }
            }
            countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(new f(this.mUri, (Bitmap)object, bl, countDownLatch));
            try {
                countDownLatch.await();
                return;
            }
            catch (InterruptedException var3_5) {
                Log.w("ImageManager", "Latch interrupted while posting " + this.mUri);
                return;
            }
        }
    }

    private final class d
    implements Runnable {
        private final com.google.android.gms.common.images.a KF;

        public d(com.google.android.gms.common.images.a a) {
            this.KF = a;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            Object object;
            com.google.android.gms.common.internal.a.aT("LoadImageRunnable must be executed on the main thread");
            Object object2 = (ImageReceiver)ImageManager.this.Kz.get(this.KF);
            if (object2 != null) {
                ImageManager.this.Kz.remove(this.KF);
                object2.c(this.KF);
            }
            a.a a = this.KF.KH;
            if (a.uri == null) {
                this.KF.a(ImageManager.this.mContext, ImageManager.this.Ky, true);
                return;
            }
            object2 = ImageManager.this.a(a);
            if (object2 != null) {
                this.KF.a(ImageManager.this.mContext, (Bitmap)object2, true);
                return;
            }
            object2 = (Long)ImageManager.this.KB.get(a.uri);
            if (object2 != null) {
                if (SystemClock.elapsedRealtime() - object2.longValue() < 3600000) {
                    this.KF.a(ImageManager.this.mContext, ImageManager.this.Ky, true);
                    return;
                }
                ImageManager.this.KB.remove(a.uri);
            }
            this.KF.a(ImageManager.this.mContext, ImageManager.this.Ky);
            object2 = object = (ImageReceiver)ImageManager.this.KA.get(a.uri);
            if (object == null) {
                object2 = new ImageReceiver(a.uri);
                ImageManager.this.KA.put(a.uri, object2);
            }
            object2.b(this.KF);
            if (!(this.KF instanceof a.c)) {
                ImageManager.this.Kz.put(this.KF, object2);
            }
            object = Ks;
            synchronized (object) {
                if (!Kt.contains(a.uri)) {
                    Kt.add(a.uri);
                    object2.gJ();
                }
                return;
            }
        }
    }

    private static final class e
    implements ComponentCallbacks2 {
        private final b Kx;

        public e(b b) {
            this.Kx = b;
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override
        public void onLowMemory() {
            this.Kx.evictAll();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onTrimMemory(int n) {
            if (n >= 60) {
                this.Kx.evictAll();
                return;
            } else {
                if (n < 20) return;
                {
                    this.Kx.trimToSize(this.Kx.size() / 2);
                    return;
                }
            }
        }
    }

    private final class f
    implements Runnable {
        private boolean KG;
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch mg;

        public f(Uri uri, Bitmap bitmap, boolean bl, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.KG = bl;
            this.mg = countDownLatch;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void a(ImageReceiver object, boolean bl) {
            object = ((ImageReceiver)object).KC;
            int n = object.size();
            for (int i = 0; i < n; ++i) {
                com.google.android.gms.common.images.a a = (com.google.android.gms.common.images.a)object.get(i);
                if (bl) {
                    a.a(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    ImageManager.this.KB.put(this.mUri, SystemClock.elapsedRealtime());
                    a.a(ImageManager.this.mContext, ImageManager.this.Ky, false);
                }
                if (a instanceof a.c) continue;
                ImageManager.this.Kz.remove(a);
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            Object object;
            com.google.android.gms.common.internal.a.aT("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean bl = this.mBitmap != null;
            if (ImageManager.this.Kx != null) {
                if (this.KG) {
                    ImageManager.this.Kx.evictAll();
                    System.gc();
                    this.KG = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                }
                if (bl) {
                    ImageManager.this.Kx.put(new a.a(this.mUri), this.mBitmap);
                }
            }
            if ((object = (ImageReceiver)ImageManager.this.KA.remove(this.mUri)) != null) {
                this.a((ImageReceiver)object, bl);
            }
            this.mg.countDown();
            object = Ks;
            synchronized (object) {
                Kt.remove(this.mUri);
                return;
            }
        }
    }

}

