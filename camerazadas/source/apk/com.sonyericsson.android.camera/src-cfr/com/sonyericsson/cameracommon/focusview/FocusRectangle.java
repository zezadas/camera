/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import java.util.HashMap;
import java.util.Set;

public abstract class FocusRectangle {
    private final HashMap<TaggedRectangle, Animation> mMapFadeOutAnimation;
    protected final ViewGroup mParentView;

    public FocusRectangle(ViewGroup viewGroup) {
        this.mParentView = viewGroup;
        this.mMapFadeOutAnimation = new HashMap();
    }

    protected abstract void finish();

    public void release() {
        this.mParentView.removeAllViews();
        this.finish();
    }

    protected void startFadeoutAnimation(TaggedRectangle taggedRectangle) {
        AlphaAnimation alphaAnimation;
        View view = taggedRectangle.findViewById(R.id.rect_image);
        AlphaAnimation alphaAnimation2 = alphaAnimation = (AlphaAnimation)this.mMapFadeOutAnimation.get(taggedRectangle);
        if (alphaAnimation == null) {
            alphaAnimation2 = (AlphaAnimation)AnimationUtils.loadAnimation(this.mParentView.getContext(), R.anim.focus_indicator_fade_out);
            alphaAnimation2.setAnimationListener(new FadeOutAnimationListener());
            this.mMapFadeOutAnimation.put(taggedRectangle, alphaAnimation2);
        }
        view.startAnimation(alphaAnimation2);
    }

    protected void stopAnimation(TaggedRectangle view) {
        if ((view = view.findViewById(R.id.rect_image)).getAnimation() != null) {
            view.clearAnimation();
            view.setAnimation(null);
        }
    }

    private class FadeOutAnimationListener
    implements Animation.AnimationListener {
        private FadeOutAnimationListener() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            if (FocusRectangle.this.mMapFadeOutAnimation.containsValue(animation)) {
                for (TaggedRectangle taggedRectangle : FocusRectangle.this.mMapFadeOutAnimation.keySet()) {
                    if (!((Animation)FocusRectangle.this.mMapFadeOutAnimation.get(taggedRectangle)).equals(animation)) continue;
                    taggedRectangle.setVisibility(4);
                }
            }
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

}

