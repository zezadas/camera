/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.OnSelectedReviewMenuButtonListener;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraTimer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    public AutoReviewWindow(Context var1);

    public AutoReviewWindow(Context var1, AttributeSet var2);

    public AutoReviewWindow(Context var1, AttributeSet var2, int var3);

    static /* synthetic */ MessagePopup access$300(AutoReviewWindow var0);

    static /* synthetic */ BaseActivity access$400(AutoReviewWindow var0);

    static /* synthetic */ DialogInterface.OnDismissListener access$500(AutoReviewWindow var0);

    public static boolean isEditorAvailable(Context var0, Uri var1, String var2);

    public static void launchAlbum(Activity var0, Uri var1, String var2);

    public static boolean launchEditor(Activity var0, Uri var1, String var2);

    public static boolean launchEditorHighFrameRate(Activity var0, Uri var1, String var2);

    public static void launchPlayer(Activity var0, Uri var1, String var2);

    private boolean transferKeyEvent(int var1, KeyEvent var2);

    @Override
    void backToViewFinder();

    @Override
    ContentResolverUtilListener getContentResolverUtilListener();

    @Override
    MessagePopup getMessagePopup();

    public void hide();

    public boolean isOpened();

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public boolean onKeyUp(int var1, KeyEvent var2);

    public boolean open(BaseActivity var1, Uri var2, String var3, Rect var4, int var5, int var6, boolean var7, ReviewWindowListener var8, ContentResolverUtilListener var9);

    public boolean open(BaseActivity var1, byte[] var2, String var3, String var4, Rect var5, int var6, int var7, boolean var8, ReviewWindowListener var9, ContentResolverUtilListener var10);

    public void setDuration(long var1);

    public void setInterceptKeyListener(View.OnKeyListener var1);

    public void setup(MessagePopup var1, CommonSettings var2);

    public void setup(MessagePopup var1, KeyEventTranslator var2);

    public void show();

    public void startTimer(long var1);

    public void stopTimer();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DismissListener
    implements DialogInterface.OnDismissListener {
        final /* synthetic */ AutoReviewWindow this$0;

        private DismissListener(AutoReviewWindow var1);

        /* synthetic */ DismissListener(AutoReviewWindow var1,  var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnSelectedListener
    implements OnSelectedReviewMenuButtonListener {
        final /* synthetic */ AutoReviewWindow this$0;

        private OnSelectedListener(AutoReviewWindow var1);

        /* synthetic */ OnSelectedListener(AutoReviewWindow var1,  var2);

        @Override
        public void onSelected(ReviewMenuButton var1);

        @Override
        public void onSelected(ReviewMenuButton var1, RotatableDialog var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ReviewScreenListener
    implements View.OnTouchListener {
        private ReviewScreenListener();

        /* synthetic */ ReviewScreenListener( var1);

        @Override
        public boolean onTouch(View var1, MotionEvent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ReviewTimerHandler
    extends Handler {
        private final WeakReference<AutoReviewWindow> mWindowRef;

        ReviewTimerHandler(AutoReviewWindow var1);

        @Override
        public void handleMessage(Message var1);
    }

}

