/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.ActivityOptions;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;

/*
 * Exception performing whole class analysis.
 */
class ActivityOptionsCompatJB {
    private final ActivityOptions mActivityOptions;

    private ActivityOptionsCompatJB(ActivityOptions var1);

    public static ActivityOptionsCompatJB makeCustomAnimation(Context var0, int var1, int var2);

    public static ActivityOptionsCompatJB makeScaleUpAnimation(View var0, int var1, int var2, int var3, int var4);

    public static ActivityOptionsCompatJB makeThumbnailScaleUpAnimation(View var0, Bitmap var1, int var2, int var3);

    public Bundle toBundle();

    public void update(ActivityOptionsCompatJB var1);
}

