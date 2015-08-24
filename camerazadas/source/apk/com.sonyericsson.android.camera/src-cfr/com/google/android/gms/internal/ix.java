/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public final class ix {
    /*
     * Enabled aggressive block sorting
     */
    public static Bitmap a(Bitmap bitmap) {
        int n;
        int n2;
        int n3 = 0;
        if (bitmap == null) {
            return null;
        }
        int n4 = bitmap.getWidth();
        if (n4 >= (n = bitmap.getHeight())) {
            n3 = n4 / 2 - n / 2;
            n2 = 0;
        } else {
            n2 = n / 2 - n4 / 2;
            n = n4;
        }
        Bitmap bitmap2 = Bitmap.createBitmap(n, n, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint(1);
        paint.setColor(-16777216);
        canvas.drawCircle(n / 2, n / 2, n / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, n3, n2, paint);
        return bitmap2;
    }

    private static Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable)drawable).getBitmap();
        }
        Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmap;
    }

    public static Drawable a(Resources resources, Drawable drawable) {
        return new BitmapDrawable(resources, ix.a(ix.a(drawable)));
    }
}

