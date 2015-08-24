/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.iw;
import com.google.android.gms.internal.ix;
import com.google.android.gms.internal.iy;
import com.google.android.gms.internal.iz;

public abstract class a {
    final a KH;
    protected int KI = 0;
    protected int KJ = 0;
    protected ImageManager.OnImageLoadedListener KK;
    private boolean KL = true;
    private boolean KM = false;
    protected int KN;

    public a(Uri uri, int n) {
        this.KH = new a(uri);
        this.KJ = n;
    }

    private Drawable a(Context object, iz iz, int n) {
        Resources resources = object.getResources();
        if (this.KN > 0) {
            Drawable drawable;
            iz.a a = new iz.a(n, this.KN);
            object = drawable = (Drawable)iz.get(a);
            if (drawable == null) {
                object = drawable = resources.getDrawable(n);
                if ((this.KN & 1) != 0) {
                    object = this.a(resources, drawable);
                }
                iz.put(a, object);
            }
            return object;
        }
        return resources.getDrawable(n);
    }

    protected Drawable a(Resources resources, Drawable drawable) {
        return ix.a(resources, drawable);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected iw a(Drawable drawable, Drawable drawable2) {
        Drawable drawable3;
        if (drawable != null) {
            drawable3 = drawable;
            if (drawable instanceof iw) {
                drawable3 = ((iw)drawable).gK();
            }
            do {
                return new iw(drawable3, drawable2);
                break;
            } while (true);
        }
        drawable3 = null;
        return new iw(drawable3, drawable2);
    }

    void a(Context object, Bitmap bitmap, boolean bl) {
        com.google.android.gms.common.internal.a.f(bitmap);
        Bitmap bitmap2 = bitmap;
        if ((this.KN & 1) != 0) {
            bitmap2 = ix.a(bitmap);
        }
        object = new BitmapDrawable(object.getResources(), bitmap2);
        if (this.KK != null) {
            this.KK.onImageLoaded(this.KH.uri, (Drawable)object, true);
        }
        this.a((Drawable)object, bl, false, true);
    }

    void a(Context context, iz iz) {
        Drawable drawable = null;
        if (this.KI != 0) {
            drawable = this.a(context, iz, this.KI);
        }
        this.a(drawable, false, true, false);
    }

    void a(Context context, iz iz, boolean bl) {
        Drawable drawable = null;
        if (this.KJ != 0) {
            drawable = this.a(context, iz, this.KJ);
        }
        if (this.KK != null) {
            this.KK.onImageLoaded(this.KH.uri, drawable, false);
        }
        this.a(drawable, bl, false, false);
    }

    protected abstract void a(Drawable var1, boolean var2, boolean var3, boolean var4);

    public void aw(int n) {
        this.KJ = n;
    }

    protected boolean b(boolean bl, boolean bl2) {
        if (this.KL && !bl2 && (!bl || this.KM)) {
            return true;
        }
        return false;
    }

    static final class a {
        public final Uri uri;

        public a(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object object) {
            if (!(object instanceof a)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            return n.equal(((a)object).uri, this.uri);
        }

        public int hashCode() {
            return n.hashCode(this.uri);
        }
    }

    public static final class b
    extends a {
        private WeakReference<ImageView> KO;

        public b(ImageView imageView, int n) {
            super(null, n);
            com.google.android.gms.common.internal.a.f(imageView);
            this.KO = new WeakReference<ImageView>(imageView);
        }

        public b(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.a.f(imageView);
            this.KO = new WeakReference<ImageView>(imageView);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private void a(ImageView object, Drawable drawable, boolean bl, boolean bl2, boolean bl3) {
            int n = !bl2 && !bl3 ? 1 : 0;
            if (n != 0 && object instanceof iy) {
                int n2 = ((iy)object).gM();
                if (this.KJ != 0 && n2 == this.KJ) {
                    return;
                }
            }
            if (bl = this.b(bl, bl2)) {
                drawable = this.a(object.getDrawable(), drawable);
            }
            object.setImageDrawable(drawable);
            if (object instanceof iy) {
                iy iy = (iy)object;
                object = bl3 ? this.KH.uri : null;
                iy.g((Uri)object);
                n = n != 0 ? this.KJ : 0;
                iy.ay(n);
            }
            if (!bl) return;
            ((iw)drawable).startTransition(250);
        }

        @Override
        protected void a(Drawable drawable, boolean bl, boolean bl2, boolean bl3) {
            ImageView imageView = this.KO.get();
            if (imageView != null) {
                this.a(imageView, drawable, bl, bl2, bl3);
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            if (!(object instanceof b)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            Object object2 = (b)object;
            object = this.KO.get();
            object2 = object2.KO.get();
            if (object2 == null) return false;
            if (object == null) return false;
            if (!n.equal(object2, object)) return false;
            return true;
        }

        public int hashCode() {
            return 0;
        }
    }

    public static final class c
    extends a {
        private WeakReference<ImageManager.OnImageLoadedListener> KP;

        public c(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.a.f(onImageLoadedListener);
            this.KP = new WeakReference<ImageManager.OnImageLoadedListener>(onImageLoadedListener);
        }

        @Override
        protected void a(Drawable drawable, boolean bl, boolean bl2, boolean bl3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (!(bl2 || (onImageLoadedListener = this.KP.get()) == null)) {
                onImageLoadedListener.onImageLoaded(this.KH.uri, drawable, bl3);
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            if (!(object instanceof c)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (c)object;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.KP.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = object.KP.get();
            if (onImageLoadedListener2 == null) return false;
            if (onImageLoadedListener == null) return false;
            if (!n.equal(onImageLoadedListener2, onImageLoadedListener)) return false;
            if (!n.equal(object.KH, this.KH)) return false;
            return true;
        }

        public int hashCode() {
            return n.hashCode(this.KH);
        }
    }

}

