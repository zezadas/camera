/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 */
package com.sonymobile.cameracommon.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.view.RecognizedCondition;
import com.sonymobile.cameracommon.view.RecognizedScene;

/*
 * Exception performing whole class analysis.
 */
public class Notification
extends RelativeLayout {
    public static final String TAG = "Notification";
    private boolean mAnimating;
    private ImageView mConditionIcon;
    private TextView mConditionText;
    private CameraExtension.SceneMode mScene;
    private ImageView mSceneIcon;
    private TextView mSceneText;
    private SceneTextAnimation mSceneTextAnimation;
    private int mSensorOrientation;

    public Notification(Context var1, AttributeSet var2);

    static /* synthetic */ TextView access$000(Notification var0);

    static /* synthetic */ TextView access$100(Notification var0);

    static /* synthetic */ boolean access$300(Notification var0);

    private void setOrientationConditionText();

    private void setOrientationSceneText();

    protected void cancelSceneTextAnimation();

    protected void createSceneTextAnimation();

    @Override
    protected void onDetachedFromWindow();

    @Override
    protected void onFinishInflate();

    public void onMacroStatusChanged(boolean var1, CameraExtension.SceneMode var2);

    public void onModeChanged(int var1, boolean var2);

    public void onRecognisedConditionChanged(RecognizedCondition var1);

    public void onRecognisedSceneChanged(RecognizedScene var1);

    protected void releaseSceneTextAnimation();

    protected void setAnimationStatus(boolean var1);

    public void setSensorOrientation(int var1);

    protected void startSceneTextAnimation();

    public void updateLayout();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class AnimationListenerImpl
    implements Animation.AnimationListener {
        final /* synthetic */ Notification this$0;

        private AnimationListenerImpl(Notification var1);

        /* synthetic */ AnimationListenerImpl(Notification var1,  var2);

        @Override
        public void onAnimationEnd(Animation var1);

        @Override
        public void onAnimationRepeat(Animation var1);

        @Override
        public void onAnimationStart(Animation var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class FadeoutAnimtion
    implements SceneTextAnimation {
        private Animation mFadeoutAnimation;
        final /* synthetic */ Notification this$0;

        FadeoutAnimtion(Notification var1);

        @Override
        public void cancel();

        @Override
        public void create();

        @Override
        public void release();

        @Override
        public void start();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class NoFadeoutAnimtion
    implements SceneTextAnimation {
        private Runnable mSceneTextRunnable;
        final /* synthetic */ Notification this$0;

        NoFadeoutAnimtion(Notification var1);

        @Override
        public void cancel();

        @Override
        public void create();

        @Override
        public void release();

        @Override
        public void start();

    }

    static interface SceneTextAnimation {
        public void cancel();

        public void create();

        public void release();

        public void start();
    }

}

