/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReview;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.launcher.AlbumLauncher;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.OnSelectedReviewMenuButtonListener;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraTimer;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import java.util.List;

public class AutoReviewWindow
extends ReviewScreen {
    private static String ACTION_EDIT_HIGH_FRAME_RATE;
    private static final String TAG;
    private BaseActivity mBaseActivity;
    private ContentResolverUtilListener mCrListener;
    private final DialogInterface.OnDismissListener mDismissListener;
    private long mDuration;
    private View.OnKeyListener mInterceptKeyListener;
    private boolean mIsOpened;
    protected KeyEventTranslator mKeyEventTranslator;
    private ReviewWindowListener mListener;
    private MessagePopup mMessagePopup;
    private final OnSelectedReviewMenuButtonListener mOnSelectListener;
    private CameraTimer mTimer;

    static {
        TAG = AutoReviewWindow.class.getSimpleName();
        ACTION_EDIT_HIGH_FRAME_RATE = "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR";
    }

    public AutoReviewWindow(Context context) {
        super(context);
        this.mDismissListener = new DismissListener();
        this.mOnSelectListener = new OnSelectedListener();
        this.mIsOpened = false;
        this.mBaseActivity = null;
    }

    public AutoReviewWindow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDismissListener = new DismissListener();
        this.mOnSelectListener = new OnSelectedListener();
        this.mIsOpened = false;
        this.mBaseActivity = null;
    }

    public AutoReviewWindow(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.mDismissListener = new DismissListener();
        this.mOnSelectListener = new OnSelectedListener();
        this.mIsOpened = false;
        this.mBaseActivity = null;
    }

    public static boolean isEditorAvailable(Context context, Uri uri, String string) {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(uri, string);
        intent.setFlags(1);
        return CommonUtility.isActivityAvailable(context, intent);
    }

    public static void launchAlbum(Activity activity, Uri uri, String string) {
        AlbumLauncher.launchAlbum(activity, uri, string, -1, false);
    }

    public static boolean launchEditor(Activity activity, Uri uri, String string) {
        ActivityOptions activityOptions = ActivityOptions.makeCustomAnimation(activity, R.anim.edit_activity_fade_in, R.anim.edit_activity_fade_out);
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(uri, string);
        intent.setFlags(1);
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            activity.startActivity(intent, activityOptions.toBundle());
            return true;
        }
        return false;
    }

    public static boolean launchEditorHighFrameRate(Activity activity, Uri uri, String string) {
        ActivityOptions activityOptions = ActivityOptions.makeCustomAnimation(activity, R.anim.edit_activity_fade_in, R.anim.edit_activity_fade_out);
        Intent intent = new Intent(ACTION_EDIT_HIGH_FRAME_RATE);
        intent.setDataAndType(uri, string);
        intent.setFlags(1);
        if (CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent)) {
            activity.startActivity(intent, activityOptions.toBundle());
            return true;
        }
        return false;
    }

    public static void launchPlayer(Activity activity, Uri uri, String string) {
        AlbumLauncher.launchPlayer(activity, uri, string);
    }

    private boolean transferKeyEvent(int n, KeyEvent keyEvent) {
        boolean bl = false;
        if (this.mInterceptKeyListener != null) {
            bl = this.mInterceptKeyListener.onKey(this, n, keyEvent);
        }
        return bl;
    }

    @Override
    void backToViewFinder() {
        this.hide();
    }

    @Override
    ContentResolverUtilListener getContentResolverUtilListener() {
        return this.mCrListener;
    }

    @Override
    MessagePopup getMessagePopup() {
        return this.mMessagePopup;
    }

    public void hide() {
        this.cancelDialog();
        if (this.mMessagePopup != null) {
            this.mMessagePopup.release();
        }
        this.stopTimer();
        this.clearFocus();
        this.hideScreen();
        if (this.mListener != null) {
            this.mIsOpened = false;
            this.mListener.onReviewWindowClose();
        }
        this.mUri = null;
    }

    public boolean isOpened() {
        return this.mIsOpened;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.setBackgroundColor(-16777216);
        this.mPictureImage.setOnTouchListener(new ReviewScreenListener());
        for (ReviewMenuButton reviewMenuButton : this.mButtonList) {
            reviewMenuButton.setReviewScreen(this);
            reviewMenuButton.setOnSelectedListener(this.mOnSelectListener);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        for (ReviewMenuButton reviewMenuButton : this.mButtonList) {
            reviewMenuButton.setReviewScreen(null);
            reviewMenuButton.setOnSelectedListener(null);
        }
        this.mListener = null;
        this.mCrListener = null;
        super.onDetachedFromWindow();
        this.stopTimer();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        if (this.transferKeyEvent(n, keyEvent)) {
            return true;
        }
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCode(n);
        switch (.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[translatedKeyCode.ordinal()]) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: {
                if (keyEvent.getRepeatCount() != 0) return true;
                this.backToViewFinder();
                return true;
            }
            case 5: {
                return false;
            }
            case 6: 
            case 7: 
        }
        this.stopTimer();
        return true;
    }

    @Override
    public boolean onKeyUp(int n, KeyEvent keyEvent) {
        if (this.transferKeyEvent(n, keyEvent)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 4: 
            case 82: 
        }
        this.backToViewFinder();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean open(BaseActivity baseActivity, Uri object, String string, Rect rect, int n, int n2, boolean bl, ReviewWindowListener object2, ContentResolverUtilListener contentResolverUtilListener) {
        this.mBaseActivity = baseActivity;
        long l = "video/mp4".equals(string) || "video/3gpp".equals(string) ? -1 : this.mDuration;
        if (l == 0) {
            return false;
        }
        if (this.mAutoReviewRight != null) {
            this.mAutoReviewRight.setVisibility(0);
        }
        this.mListener = object2;
        this.mCrListener = contentResolverUtilListener;
        object2 = object;
        if ((object = object.toString()).startsWith(MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI.toString())) {
            object2 = Uri.parse(object.replaceFirst(MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI.toString(), MediaSavingConstants.STANDARD_PHOTO_STORAGE_URI.toString()));
        }
        if (!this.setupScreen(baseActivity, (Uri)object2, null, "", string, rect, n, n2, bl)) {
            return false;
        }
        this.show();
        this.startTimer(l);
        if (this.mListener != null) {
            this.mIsOpened = true;
            this.mListener.onReviewWindowOpen();
        }
        return true;
    }

    public boolean open(BaseActivity baseActivity, byte[] arrby, String string, String string2, Rect rect, int n, int n2, boolean bl, ReviewWindowListener reviewWindowListener, ContentResolverUtilListener contentResolverUtilListener) {
        this.mBaseActivity = baseActivity;
        long l = AutoReview.UNLIMITED.getDuration();
        if (this.mAutoReviewRight != null) {
            this.mAutoReviewRight.setVisibility(8);
        }
        this.mListener = reviewWindowListener;
        this.mCrListener = contentResolverUtilListener;
        if (this.setupScreen(baseActivity, null, arrby, string, string2, rect, n, n2, bl)) {
            this.show();
            this.startTimer(l);
            if (this.mListener != null) {
                this.mIsOpened = true;
                this.mListener.onReviewWindowOpen();
            }
            return true;
        }
        return false;
    }

    public void setDuration(long l) {
        this.mDuration = l;
    }

    public void setInterceptKeyListener(View.OnKeyListener onKeyListener) {
        this.mInterceptKeyListener = onKeyListener;
    }

    public void setup(MessagePopup messagePopup, CommonSettings commonSettings) {
        this.setup(messagePopup, new KeyEventTranslator(commonSettings));
    }

    public void setup(MessagePopup messagePopup, KeyEventTranslator keyEventTranslator) {
        this.mMessagePopup = messagePopup;
        this.mKeyEventTranslator = keyEventTranslator;
    }

    public void show() {
        this.showScreen();
        this.requestFocus();
        GoogleAnalyticsUtil.getInstance().setViewerLaunched();
    }

    public void startTimer(long l) {
        this.stopTimer();
        if (l > 0) {
            this.mTimer = new CameraTimer(l, l, new ReviewTimerHandler(this), TAG, 0);
            this.mTimer.start();
        }
    }

    public void stopTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
    }

    private class DismissListener
    implements DialogInterface.OnDismissListener {
        private DismissListener() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            AutoReviewWindow.this.mMessagePopup.release();
            if (AutoReviewWindow.this.getVisibility() == 0) {
                AutoReviewWindow.this.show();
            }
            if (AutoReviewWindow.this.mBaseActivity != null) {
                AutoReviewWindow.this.mBaseActivity.restartAutoOffTimer();
            }
        }
    }

    private class OnSelectedListener
    implements OnSelectedReviewMenuButtonListener {
        private OnSelectedListener() {
        }

        @Override
        public void onSelected(ReviewMenuButton reviewMenuButton) {
            AutoReviewWindow.this.stopTimer();
            AutoReviewWindow.this.cancelDialog();
            if (AutoReviewWindow.this.mBaseActivity != null) {
                AutoReviewWindow.this.mBaseActivity.restartAutoOffTimer();
            }
        }

        @Override
        public void onSelected(ReviewMenuButton reviewMenuButton, RotatableDialog rotatableDialog) {
            AutoReviewWindow.this.stopTimer();
            rotatableDialog.setOnDismissListener(AutoReviewWindow.this.mDismissListener);
            AutoReviewWindow.this.setCurrentDialog(rotatableDialog);
            if (AutoReviewWindow.this.mBaseActivity != null) {
                AutoReviewWindow.this.mBaseActivity.restartAutoOffTimer();
            }
        }
    }

    private static class ReviewScreenListener
    implements View.OnTouchListener {
        private ReviewScreenListener() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    private static class ReviewTimerHandler
    extends Handler {
        private final WeakReference<AutoReviewWindow> mWindowRef;

        ReviewTimerHandler(AutoReviewWindow autoReviewWindow) {
            this.mWindowRef = new WeakReference<AutoReviewWindow>(autoReviewWindow);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMessage(Message object) {
            switch (object.what) {
                default: {
                    return;
                }
                case 1: {
                    object = this.mWindowRef.get();
                    if (object == null) return;
                    object.backToViewFinder();
                    return;
                }
            }
        }
    }

}

