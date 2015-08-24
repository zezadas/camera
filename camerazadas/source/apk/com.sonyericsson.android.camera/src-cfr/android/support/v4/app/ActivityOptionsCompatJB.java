/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.ActivityOptions;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;

class ActivityOptionsCompatJB {
    private final ActivityOptions mActivityOptions;

    private ActivityOptionsCompatJB(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
    }

    public static ActivityOptionsCompatJB makeCustomAnimation(Context context, int n, int n2) {
        return new ActivityOptionsCompatJB(ActivityOptions.makeCustomAnimation(context, n, n2));
    }

    public static ActivityOptionsCompatJB makeScaleUpAnimation(View view, int n, int n2, int n3, int n4) {
        return new ActivityOptionsCompatJB(ActivityOptions.makeScaleUpAnimation(view, n, n2, n3, n4));
    }

    public static ActivityOptionsCompatJB makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int n, int n2) {
        return new ActivityOptionsCompatJB(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, n, n2));
    }

    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }

    public void update(ActivityOptionsCompatJB activityOptionsCompatJB) {
        this.mActivityOptions.update(activityOptionsCompatJB.mActivityOptions);
    }
}

