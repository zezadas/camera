/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import java.util.HashMap;

public class OnScreenButtonGroup
extends RelativeLayout {
    private static final View.OnClickListener DUMMY_CLICK_LISTENER;
    public static final OnScreenButton.Resource EMPTY_RESOURCE;
    private static final String TAG;
    private View mBackground;
    private OnScreenButton.Resource mBackgroundResource = EMPTY_RESOURCE;
    private View mContainer;
    private boolean mIsRotatable = true;
    private final HashMap<ButtonType, OnScreenButtonListener> mListeners = new HashMap();
    private OnScreenButton mMain;
    private int mOrientation;
    private int mStaticOrientation = 0;
    private OnScreenButton mSub;

    static {
        TAG = OnScreenButtonGroup.class.getSimpleName();
        EMPTY_RESOURCE = new OnScreenButton.Resource(-1, -1, -1);
        DUMMY_CLICK_LISTENER = new View.OnClickListener(){

            @Override
            public void onClick(View view) {
            }
        };
    }

    public OnScreenButtonGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void adjustBackground(int n, int n2, int n3, int n4) {
        this.setBackgroundMarginTop(n);
        this.setContainerMarginTop(n2);
        this.setBackgroundAndContainerGravity(n4);
        this.setSubButtonMarginTop(n3);
        this.requestLayout();
    }

    private void restartAnimation(Drawable drawable) {
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable)drawable).start();
        }
    }

    private void setBackgroundAndContainerGravity(int n) {
        ((FrameLayout.LayoutParams)this.mBackground.getLayoutParams()).gravity = n;
        this.mBackground.requestLayout();
        ((FrameLayout.LayoutParams)this.mContainer.getLayoutParams()).gravity = n;
        this.mContainer.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setBackgroundMarginTop(int n) {
        n = n == 0 ? 0 : this.mBackground.getResources().getDimensionPixelSize(n);
        ((ViewGroup.MarginLayoutParams)this.mBackground.getLayoutParams()).topMargin = n;
        this.mBackground.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setContainerMarginTop(int n) {
        n = n == 0 ? 0 : this.mContainer.getResources().getDimensionPixelSize(n);
        ((ViewGroup.MarginLayoutParams)this.mContainer.getLayoutParams()).topMargin = n;
        this.mContainer.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setSubButtonMarginTop(int n) {
        n = n == 0 ? 0 : this.mContainer.getResources().getDimensionPixelSize(n);
        ((ViewGroup.MarginLayoutParams)this.mSub.getLayoutParams()).topMargin = n;
        this.mSub.requestLayout();
    }

    private void setupBackgroundDual() {
        this.adjustBackground(R.dimen.on_screen_button_background_dual_background_top_margin, R.dimen.on_screen_button_background_dual_container_top_margin, R.dimen.on_screen_button_background_dual_container_space, 49);
    }

    private void setupBackgroundPhotoAndSwitch() {
        this.adjustBackground(R.dimen.on_screen_button_photo_video_switch_background_top_margin, R.dimen.on_screen_button_photo_video_switch_container_top_margin, R.dimen.on_screen_button_photo_video_switch_container_space, 49);
    }

    private void setupBackgroundSingle() {
        this.adjustBackground(0, 0, 0, 17);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateBackground() {
        int n = this.mOrientation == 2 ? this.mBackgroundResource.landscape : this.mBackgroundResource.portrait;
        if (n != -1 && this.mBackground != null) {
            this.mBackground.setBackgroundResource(n);
        }
    }

    public void changeRotatability(int n, boolean bl) {
        this.mIsRotatable = bl;
        if (!bl) {
            this.mStaticOrientation = n;
        }
    }

    public void clearTouched() {
        this.mMain.clearTouched();
        this.mSub.clearTouched();
    }

    public boolean isTouched() {
        if (this.mMain.isTouched() || this.mSub.isTouched()) {
            return true;
        }
        return false;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMain = (OnScreenButton)this.findViewById(R.id.main_button);
        this.mMain.setVisibility(0);
        this.mSub = (OnScreenButton)this.findViewById(R.id.sub_button);
        this.mSub.setVisibility(8);
        this.mBackground = this.findViewById(R.id.background);
        this.mContainer = this.findViewById(R.id.container);
    }

    public void restartAnimation() {
        this.restartAnimation(this.mMain.getDrawable());
        this.restartAnimation(this.mSub.getDrawable());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setBackground(OnScreenButton.Resource resource) {
        this.mBackgroundResource = resource == null ? EMPTY_RESOURCE : resource;
        this.updateBackground();
    }

    public void setListener(ButtonType buttonType, OnScreenButtonListener onScreenButtonListener) {
        this.mListeners.put(buttonType, onScreenButtonListener);
    }

    public void setMain(ButtonType buttonType) {
        this.mMain.set(buttonType.mainButtonResource);
        this.mMain.setListener(this.mListeners.get((Object)buttonType));
        if (buttonType == ButtonType.NONE) {
            this.mMain.setVisibility(4);
            return;
        }
        this.mMain.setVisibility(0);
    }

    public void setMain(ButtonType buttonType, int n, boolean bl) {
        this.setMain(buttonType);
        this.mMain.changeRotatability(n, bl);
    }

    public void setSub(ButtonType buttonType) {
        if (buttonType == ButtonType.NONE) {
            this.setBackground(buttonType.backgroundResource);
            this.setupBackgroundSingle();
            this.mSub.set(buttonType.subButtonResource);
            this.mSub.setListener(this.mListeners.get((Object)buttonType));
            this.mSub.setVisibility(8);
            this.mSub.setOnClickListener(null);
            return;
        }
        if (buttonType == ButtonType.HIDDEN) {
            this.setBackground(buttonType.backgroundResource);
            this.setupBackgroundPhotoAndSwitch();
            this.mSub.setListener(this.mListeners.get((Object)buttonType));
            this.mSub.setVisibility(4);
            this.mSub.setOnClickListener(null);
            return;
        }
        if (buttonType == ButtonType.PHOTO_TO_VIDEO || buttonType == ButtonType.VIDEO_TO_PHOTO) {
            this.setBackground(buttonType.backgroundResource);
            this.setupBackgroundPhotoAndSwitch();
            this.mSub.set(buttonType.subButtonResource);
            this.mSub.setListener(this.mListeners.get((Object)buttonType));
            this.mSub.setVisibility(0);
            this.mSub.setOnClickListener(DUMMY_CLICK_LISTENER);
            return;
        }
        this.setBackground(buttonType.backgroundResource);
        this.setupBackgroundDual();
        this.mSub.set(buttonType.subButtonResource);
        this.mSub.setListener(this.mListeners.get((Object)buttonType));
        this.mSub.setVisibility(0);
        this.mSub.setOnClickListener(null);
    }

    public void setSub(ButtonType buttonType, int n, boolean bl) {
        this.setSub(buttonType);
        this.mSub.changeRotatability(n, bl);
    }

    public void setUiOrientation(int n) {
        this.mOrientation = n;
        this.mMain.setUiOrientation(n);
        this.mSub.setUiOrientation(n);
        this.updateBackground();
    }

    public static enum ButtonType {
        NONE(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        HIDDEN(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        CAPTURE(new OnScreenButton.Resource(R.drawable.capture_button_photo_large, R.drawable.capture_button_photo_large_portrait, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_photo_small, R.drawable.capture_button_photo_small_portrait, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        CAPTURE_IN_SEQUENTIAL_RECORDING(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.capture_button_photo_sequential_small, R.drawable.capture_button_photo_sequential_small_portrait, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1)),
        START_RECORDING(new OnScreenButton.Resource(R.drawable.capture_button_video_large, R.drawable.capture_button_video_large_portrait, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_video_small, R.drawable.capture_button_video_small_portrait, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        RESTART_RECORDING(new OnScreenButton.Resource(R.drawable.cam_capture_button_video_icn, R.drawable.cam_capture_button_video_port_icn, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_video_small, R.drawable.capture_button_video_small_portrait, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        STOP_RECORDING(new OnScreenButton.Resource(R.drawable.recording_button_animation_large, R.drawable.recording_button_animation_large_port, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.recording_button_animation_small, R.drawable.recording_button_animation_small_port, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        STOP_RECORDING_NO_BLINK(new OnScreenButton.Resource(R.drawable.capture_button_videorec_large, R.drawable.capture_button_videorec_large_portrait, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.recording_button_animation_small, R.drawable.recording_button_animation_small_port, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        STOP_RECORDING_IN_PAUSE(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.capture_button_videorec3_small, R.drawable.capture_button_videorec3_small_portrait, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        PAUSE_RECORDING(new OnScreenButton.Resource(R.drawable.capture_button_videopause, R.drawable.capture_button_videopause_portrait, R.string.cam_strings_accessibility_pause_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_videopause, R.drawable.capture_button_videopause_portrait, R.string.cam_strings_accessibility_pause_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        PHOTO_TO_VIDEO(new OnScreenButton.Resource(R.drawable.capture_button_switch_photo_to_video, R.drawable.capture_button_switch_photo_to_video_portrait, R.string.cam_strings_accessibility_switch_to_video_txt), new OnScreenButton.Resource(R.drawable.capture_button_switch_photo_to_video, R.drawable.capture_button_switch_photo_to_video_portrait, R.string.cam_strings_accessibility_switch_to_video_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        VIDEO_TO_PHOTO(new OnScreenButton.Resource(R.drawable.capture_button_switch_video_to_photo, R.drawable.capture_button_switch_video_to_photo_portrait, R.string.cam_strings_accessibility_switch_to_photo_txt), new OnScreenButton.Resource(R.drawable.capture_button_switch_video_to_photo, R.drawable.capture_button_switch_video_to_photo_portrait, R.string.cam_strings_accessibility_switch_to_photo_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        SELFTIMER_LONG(new OnScreenButton.Resource(R.drawable.selftimer_shutter_button_10sec, R.drawable.selftimer_shutter_button_10sec_port, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1)),
        SELFTIMER_SHORT(new OnScreenButton.Resource(R.drawable.selftimer_shutter_button_2sec, R.drawable.selftimer_shutter_button_2sec_port, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1)),
        SELFTIMER_INSTANT(new OnScreenButton.Resource(R.drawable.selftimer_shutter_button_05sec, R.drawable.selftimer_shutter_button_05sec_port, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1));
        
        public final OnScreenButton.Resource backgroundResource;
        public final OnScreenButton.Resource mainButtonResource;
        public final OnScreenButton.Resource subButtonResource;

        private ButtonType(OnScreenButton.Resource resource, OnScreenButton.Resource resource2, OnScreenButton.Resource resource3) {
            this.mainButtonResource = resource;
            this.subButtonResource = resource2;
            this.backgroundResource = resource3;
        }
    }

}

