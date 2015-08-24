/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.ActivityOptionsCompatJB;
import android.view.View;

public class ActivityOptionsCompat {
    protected ActivityOptionsCompat();

    public static ActivityOptionsCompat makeCustomAnimation(Context var0, int var1, int var2);

    public static ActivityOptionsCompat makeScaleUpAnimation(View var0, int var1, int var2, int var3, int var4);

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View var0, Bitmap var1, int var2, int var3);

    public Bundle toBundle();

    public void update(ActivityOptionsCompat var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ActivityOptionsImplJB
    extends ActivityOptionsCompat {
        private final ActivityOptionsCompatJB mImpl;

        ActivityOptionsImplJB(ActivityOptionsCompatJB var1);

        @Override
        public Bundle toBundle();

        @Override
        public void update(ActivityOptionsCompat var1);
    }

}

