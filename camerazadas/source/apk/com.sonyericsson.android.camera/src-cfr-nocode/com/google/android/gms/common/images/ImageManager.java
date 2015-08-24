/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import com.google.android.gms.common.images.a;
import com.google.android.gms.internal.iz;
import com.google.android.gms.internal.ja;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ImageManager {
    private static final Object Ks;
    private static HashSet<Uri> Kt;
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

    static;

    private ImageManager(Context var1, boolean var2);

    static /* synthetic */ Bitmap a(ImageManager var0, a.a var1);

    private Bitmap a(a.a var1);

    static /* synthetic */ Map a(ImageManager var0);

    static /* synthetic */ Context b(ImageManager var0);

    public static ImageManager c(Context var0, boolean var1);

    static /* synthetic */ iz c(ImageManager var0);

    public static ImageManager create(Context var0);

    static /* synthetic */ Map d(ImageManager var0);

    static /* synthetic */ Map e(ImageManager var0);

    static /* synthetic */ ExecutorService f(ImageManager var0);

    static /* synthetic */ Handler g(ImageManager var0);

    private void gG();

    static /* synthetic */ Object gH();

    static /* synthetic */ HashSet gI();

    static /* synthetic */ b h(ImageManager var0);

    public void a(com.google.android.gms.common.images.a var1);

    public void loadImage(ImageView var1, int var2);

    public void loadImage(ImageView var1, Uri var2);

    public void loadImage(ImageView var1, Uri var2, int var3);

    public void loadImage(OnImageLoadedListener var1, Uri var2);

    public void loadImage(OnImageLoadedListener var1, Uri var2, int var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class ImageReceiver
    extends ResultReceiver {
        private final ArrayList<com.google.android.gms.common.images.a> KC;
        final /* synthetic */ ImageManager KD;
        private final Uri mUri;

        ImageReceiver(ImageManager var1, Uri var2);

        static /* synthetic */ ArrayList a(ImageReceiver var0);

        public void b(com.google.android.gms.common.images.a var1);

        public void c(com.google.android.gms.common.images.a var1);

        public void gJ();

        @Override
        public void onReceiveResult(int var1, Bundle var2);
    }

    public static interface OnImageLoadedListener {
        public void onImageLoaded(Uri var1, Drawable var2, boolean var3);
    }

    private static final class a {
        static int a(ActivityManager var0);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static final class b
    extends ja<a.a, Bitmap> {
        public b(Context var1);

        private static int I(Context var0);

        protected int a(a.a var1, Bitmap var2);

        protected void a(boolean var1, a.a var2, Bitmap var3, Bitmap var4);

        @Override
        protected /* synthetic */ void entryRemoved(boolean var1, Object var2, Object var3, Object var4);

        @Override
        protected /* synthetic */ int sizeOf(Object var1, Object var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class c
    implements Runnable {
        final /* synthetic */ ImageManager KD;
        private final ParcelFileDescriptor KE;
        private final Uri mUri;

        public c(ImageManager var1, Uri var2, ParcelFileDescriptor var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class d
    implements Runnable {
        final /* synthetic */ ImageManager KD;
        private final com.google.android.gms.common.images.a KF;

        public d(ImageManager var1, com.google.android.gms.common.images.a var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class e
    implements ComponentCallbacks2 {
        private final b Kx;

        public e(b var1);

        @Override
        public void onConfigurationChanged(Configuration var1);

        @Override
        public void onLowMemory();

        @Override
        public void onTrimMemory(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private final class f
    implements Runnable {
        final /* synthetic */ ImageManager KD;
        private boolean KG;
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch mg;

        public f(ImageManager var1, Uri var2, Bitmap var3, boolean var4, CountDownLatch var5);

        private void a(ImageReceiver var1, boolean var2);

        @Override
        public void run();
    }

}

