/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.view.ViewGroup;
import android.view.animation.Animation;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 */
public abstract class FocusRectangle {
    private final HashMap<TaggedRectangle, Animation> mMapFadeOutAnimation;
    protected final ViewGroup mParentView;

    public FocusRectangle(ViewGroup var1);

    static /* synthetic */ HashMap access$100(FocusRectangle var0);

    protected abstract void finish();

    public void release();

    protected void startFadeoutAnimation(TaggedRectangle var1);

    protected void stopAnimation(TaggedRectangle var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FadeOutAnimationListener
    implements Animation.AnimationListener {
        final /* synthetic */ FocusRectangle this$0;

        private FadeOutAnimationListener(FocusRectangle var1);

        /* synthetic */ FadeOutAnimationListener(FocusRectangle var1,  var2);

        @Override
        public void onAnimationEnd(Animation var1);

        @Override
        public void onAnimationRepeat(Animation var1);

        @Override
        public void onAnimationStart(Animation var1);
    }

}

