/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnScreenButtonGroup
extends RelativeLayout {
    private static final View.OnClickListener DUMMY_CLICK_LISTENER;
    public static final OnScreenButton.Resource EMPTY_RESOURCE;
    private static final String TAG;
    private View mBackground;
    private OnScreenButton.Resource mBackgroundResource;
    private View mContainer;
    private boolean mIsRotatable;
    private final HashMap<ButtonType, OnScreenButtonListener> mListeners;
    private OnScreenButton mMain;
    private int mOrientation;
    private int mStaticOrientation;
    private OnScreenButton mSub;

    static;

    public OnScreenButtonGroup(Context var1, AttributeSet var2);

    private void adjustBackground(int var1, int var2, int var3, int var4);

    private void restartAnimation(Drawable var1);

    private void setBackgroundAndContainerGravity(int var1);

    private void setBackgroundMarginTop(int var1);

    private void setContainerMarginTop(int var1);

    private void setSubButtonMarginTop(int var1);

    private void setupBackgroundDual();

    private void setupBackgroundPhotoAndSwitch();

    private void setupBackgroundSingle();

    private void updateBackground();

    public void changeRotatability(int var1, boolean var2);

    public void clearTouched();

    public boolean isTouched();

    @Override
    protected void onFinishInflate();

    public void restartAnimation();

    public void setBackground(OnScreenButton.Resource var1);

    public void setListener(ButtonType var1, OnScreenButtonListener var2);

    public void setMain(ButtonType var1);

    public void setMain(ButtonType var1, int var2, boolean var3);

    public void setSub(ButtonType var1);

    public void setSub(ButtonType var1, int var2, boolean var3);

    public void setUiOrientation(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ButtonType
    extends Enum<ButtonType> {
        private static final /* synthetic */ ButtonType[] $VALUES;
        public static final /* enum */ ButtonType CAPTURE;
        public static final /* enum */ ButtonType CAPTURE_IN_SEQUENTIAL_RECORDING;
        public static final /* enum */ ButtonType HIDDEN;
        public static final /* enum */ ButtonType NONE;
        public static final /* enum */ ButtonType PAUSE_RECORDING;
        public static final /* enum */ ButtonType PHOTO_TO_VIDEO;
        public static final /* enum */ ButtonType RESTART_RECORDING;
        public static final /* enum */ ButtonType SELFTIMER_INSTANT;
        public static final /* enum */ ButtonType SELFTIMER_LONG;
        public static final /* enum */ ButtonType SELFTIMER_SHORT;
        public static final /* enum */ ButtonType START_RECORDING;
        public static final /* enum */ ButtonType STOP_RECORDING;
        public static final /* enum */ ButtonType STOP_RECORDING_IN_PAUSE;
        public static final /* enum */ ButtonType STOP_RECORDING_NO_BLINK;
        public static final /* enum */ ButtonType VIDEO_TO_PHOTO;
        public final OnScreenButton.Resource backgroundResource;
        public final OnScreenButton.Resource mainButtonResource;
        public final OnScreenButton.Resource subButtonResource;

        static;

        private ButtonType(OnScreenButton.Resource var3, OnScreenButton.Resource var4, OnScreenButton.Resource var5);

        public static ButtonType valueOf(String var0);

        public static ButtonType[] values();
    }

}

