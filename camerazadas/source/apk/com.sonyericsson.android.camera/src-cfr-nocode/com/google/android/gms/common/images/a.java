/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.internal.iw;
import com.google.android.gms.internal.iz;

/*
 * Exception performing whole class analysis.
 */
public abstract class a {
    final a KH;
    protected int KI;
    protected int KJ;
    protected ImageManager.OnImageLoadedListener KK;
    private boolean KL;
    private boolean KM;
    protected int KN;

    public a(Uri var1, int var2);

    private Drawable a(Context var1, iz var2, int var3);

    protected Drawable a(Resources var1, Drawable var2);

    protected iw a(Drawable var1, Drawable var2);

    void a(Context var1, Bitmap var2, boolean var3);

    void a(Context var1, iz var2);

    void a(Context var1, iz var2, boolean var3);

    protected abstract void a(Drawable var1, boolean var2, boolean var3, boolean var4);

    public void aw(int var1);

    protected boolean b(boolean var1, boolean var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class a {
        public final Uri uri;

        public a(Uri var1);

        public boolean equals(Object var1);

        public int hashCode();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class b
    extends a {
        private WeakReference<ImageView> KO;

        public b(ImageView var1, int var2);

        public b(ImageView var1, Uri var2);

        private void a(ImageView var1, Drawable var2, boolean var3, boolean var4, boolean var5);

        @Override
        protected void a(Drawable var1, boolean var2, boolean var3, boolean var4);

        public boolean equals(Object var1);

        public int hashCode();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class c
    extends a {
        private WeakReference<ImageManager.OnImageLoadedListener> KP;

        public c(ImageManager.OnImageLoadedListener var1, Uri var2);

        @Override
        protected void a(Drawable var1, boolean var2, boolean var3, boolean var4);

        public boolean equals(Object var1);

        public int hashCode();
    }

}

