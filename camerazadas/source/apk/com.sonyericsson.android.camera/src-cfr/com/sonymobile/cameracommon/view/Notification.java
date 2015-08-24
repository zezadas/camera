/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 */
package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.view.RecognizedCondition;
import com.sonymobile.cameracommon.view.RecognizedScene;

public class Notification
extends RelativeLayout {
    public static final String TAG = "Notification";
    private boolean mAnimating = false;
    private ImageView mConditionIcon;
    private TextView mConditionText;
    private CameraExtension.SceneMode mScene;
    private ImageView mSceneIcon;
    private TextView mSceneText;
    private SceneTextAnimation mSceneTextAnimation;
    private int mSensorOrientation = 2;

    public Notification(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void setOrientationConditionText() {
        if (this.mSensorOrientation == 2) {
            this.mConditionText.setVisibility(0);
            this.startSceneTextAnimation();
            return;
        }
        this.cancelSceneTextAnimation();
        this.mConditionText.setVisibility(4);
    }

    private void setOrientationSceneText() {
        if (this.mSensorOrientation == 2) {
            if (this.mScene != CameraExtension.SceneMode.AUTO) {
                this.mSceneText.setVisibility(0);
                this.startSceneTextAnimation();
                this.mScene = CameraExtension.SceneMode.AUTO;
            }
            return;
        }
        this.cancelSceneTextAnimation();
        this.mSceneText.setVisibility(4);
    }

    protected void cancelSceneTextAnimation() {
        this.mSceneTextAnimation.cancel();
    }

    protected void createSceneTextAnimation() {
        this.mSceneTextAnimation = new NoFadeoutAnimtion();
        this.mSceneTextAnimation.create();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.releaseSceneTextAnimation();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mSceneIcon = (ImageView)this.findViewById(R.id.scene_icon);
        this.mSceneText = (TextView)this.findViewById(R.id.scene_text);
        this.mConditionIcon = (ImageView)this.findViewById(R.id.condition_icon);
        this.mConditionText = (TextView)this.findViewById(R.id.condition_text);
        this.createSceneTextAnimation();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onMacroStatusChanged(boolean bl, CameraExtension.SceneMode sceneMode) {
        if (bl) {
            this.findViewById(R.id.recognised_scene).setVisibility(0);
            this.findViewById(R.id.recognised_condition).setVisibility(4);
            this.mSceneIcon.setImageResource(R.drawable.cam_scene_recog_macro_icn);
            this.mSceneText.setText(R.string.cam_strings_focus_mode_macro_txt);
            if (this.mSensorOrientation == 2) {
                this.startSceneTextAnimation();
            }
        } else if (sceneMode == CameraExtension.SceneMode.AUTO) {
            this.findViewById(R.id.recognised_scene).setVisibility(4);
        }
        this.invalidate();
    }

    public void onModeChanged(int n, boolean bl) {
        if (bl) {
            this.findViewById(R.id.scene_indicator).setVisibility(4);
            this.findViewById(R.id.condition_indicator).setVisibility(4);
            return;
        }
        if (n == 1) {
            this.findViewById(R.id.scene_indicator).setVisibility(0);
            this.findViewById(R.id.condition_indicator).setVisibility(0);
            return;
        }
        this.mSensorOrientation = 2;
        this.findViewById(R.id.scene_indicator).setVisibility(4);
        this.findViewById(R.id.condition_indicator).setVisibility(4);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onRecognisedConditionChanged(RecognizedCondition recognizedCondition) {
        int n = recognizedCondition.getIconId();
        int n2 = recognizedCondition.getTextId();
        this.findViewById(R.id.recognised_condition).setVisibility(0);
        if (n > 0) {
            this.mConditionIcon.setVisibility(0);
            this.mConditionIcon.setImageResource(n);
        } else {
            this.mConditionIcon.setVisibility(4);
        }
        if (n2 > 0) {
            this.mConditionText.setVisibility(0);
            this.mConditionText.setText(n2);
            if (this.mSensorOrientation == 2) {
                this.startSceneTextAnimation();
            }
        } else {
            this.mConditionText.setVisibility(4);
        }
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onRecognisedSceneChanged(RecognizedScene recognizedScene) {
        this.mScene = CameraExtension.SceneMode.AUTO;
        int n = recognizedScene.getIconId();
        int n2 = recognizedScene.getTextId();
        if (n > 0 && n2 > 0) {
            this.findViewById(R.id.recognised_scene).setVisibility(0);
            this.mSceneIcon.setImageResource(n);
            this.mSceneText.setText(n2);
            if (this.mSensorOrientation == 2) {
                this.startSceneTextAnimation();
            } else {
                this.mScene = recognizedScene.getSceneMode();
            }
        } else {
            this.findViewById(R.id.recognised_scene).setVisibility(4);
        }
        this.invalidate();
    }

    protected void releaseSceneTextAnimation() {
        this.mSceneTextAnimation.release();
    }

    protected void setAnimationStatus(boolean bl) {
        if (this.mAnimating == bl) {
            return;
        }
        this.mAnimating = bl;
    }

    public void setSensorOrientation(int n) {
        this.mSensorOrientation = n;
        float f = RotationUtil.getAngle(n);
        this.mSceneIcon.setRotation(f);
        this.setOrientationSceneText();
        this.mConditionIcon.setRotation(f);
        this.setOrientationConditionText();
    }

    protected void startSceneTextAnimation() {
        this.mSceneTextAnimation.start();
    }

    public void updateLayout() {
        this.requestLayout();
        this.invalidate();
    }

    private class AnimationListenerImpl
    implements Animation.AnimationListener {
        private AnimationListenerImpl() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            Notification.this.setAnimationStatus(false);
            Notification.this.mSceneText.setVisibility(4);
            Notification.this.mConditionText.setVisibility(4);
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
            Notification.this.setAnimationStatus(true);
        }
    }

    class FadeoutAnimtion
    implements SceneTextAnimation {
        private Animation mFadeoutAnimation;

        FadeoutAnimtion() {
        }

        @Override
        public void cancel() {
            Notification.this.mSceneText.setAnimation(null);
            Notification.this.mConditionText.setAnimation(null);
        }

        @Override
        public void create() {
            this.mFadeoutAnimation = AnimationUtils.loadAnimation(Notification.this.getContext(), R.anim.notification_fade_out);
            this.mFadeoutAnimation.setAnimationListener(new AnimationListenerImpl());
        }

        @Override
        public void release() {
            if (this.mFadeoutAnimation != null) {
                this.mFadeoutAnimation.setAnimationListener(null);
            }
            this.mFadeoutAnimation = null;
        }

        @Override
        public void start() {
            if (Notification.this.mAnimating) {
                this.cancel();
            }
            Notification.this.mSceneText.startAnimation(this.mFadeoutAnimation);
            Notification.this.mConditionText.startAnimation(this.mFadeoutAnimation);
        }
    }

    class NoFadeoutAnimtion
    implements SceneTextAnimation {
        private Runnable mSceneTextRunnable;

        NoFadeoutAnimtion() {
        }

        @Override
        public void cancel() {
            Notification.this.removeCallbacks(this.mSceneTextRunnable);
        }

        @Override
        public void create() {
            this.mSceneTextRunnable = new Runnable(){

                @Override
                public void run() {
                    Notification.this.mSceneText.setVisibility(4);
                    Notification.this.mConditionText.setVisibility(4);
                    Notification.this.setAnimationStatus(false);
                }
            };
        }

        @Override
        public void release() {
            Notification.this.removeCallbacks(this.mSceneTextRunnable);
        }

        @Override
        public void start() {
            if (Notification.this.mAnimating) {
                this.cancel();
            }
            Notification.this.postDelayed(this.mSceneTextRunnable, Notification.this.getResources().getInteger(R.attr.scene_fade_out_delay) + Notification.this.getResources().getInteger(R.attr.scene_fade_out_duration));
            Notification.this.setAnimationStatus(true);
            Notification.this.mSceneText.setVisibility(0);
            Notification.this.mConditionText.setVisibility(0);
        }

    }

    static interface SceneTextAnimation {
        public void cancel();

        public void create();

        public void release();

        public void start();
    }

}

