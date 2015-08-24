/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialogStateListenerHandler;

public class RotatableDialog
implements View.OnTouchListener,
View.OnAttachStateChangeListener {
    public static final String TAG = "RotatableDialog";
    private final int mAnimationsForLand;
    private final int mAnimationsForPort;
    private AlertDialog mDialog;
    private int mDialogWidthForLand;
    private int mDialogWidthForPort;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int mOrientation = 2;
    private View mScrollableView;
    private RotatableDialogStateListenerHandler mStateListenerHandler;
    private Rect mTempRect = new Rect();
    private int mTranslationYForLand;
    private int mTranslationYForPort;
    private Window mWindow;

    protected RotatableDialog(AlertDialog alertDialog) {
        this.mDialog = alertDialog;
        this.mWindow = alertDialog.getWindow();
        this.mAnimationsForLand = R.style.WindowAnimationDeviceDefaultDialogLandscape;
        this.mAnimationsForPort = R.style.WindowAnimationDeviceDefaultDialogPortrait;
        this.initialize();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void attachScrollableView() {
        ScrollView scrollView;
        View view;
        if (this.mScrollableView == null || (view = this.mWindow.findViewById(16908299)) == null) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this.mWindow.getContext());
        frameLayout.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
        frameLayout.addView(this.mScrollableView, view.getLayoutParams().width, view.getLayoutParams().height);
        ViewParent viewParent = view.getParent();
        if (viewParent instanceof LinearLayout) {
            scrollView = (ScrollView)viewParent.getParent();
            view = (View)viewParent;
        } else {
            scrollView = (ScrollView)viewParent;
        }
        scrollView.removeView(view);
        scrollView.addView((View)frameLayout, -1, -1);
    }

    private int calculateOutValue(int n, int n2, int n3) {
        if (n < n2) {
            return n - n2;
        }
        if (n3 < n) {
            return n - n3;
        }
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void initialize() {
        Object object = new Rect();
        this.mWindow.getWindowManager().getDefaultDisplay().getRectSize((Rect)object);
        if (object.width() > object.height()) {
            this.mDisplayWidth = object.width();
            this.mDisplayHeight = object.height();
        } else {
            this.mDisplayWidth = object.height();
            this.mDisplayHeight = object.width();
        }
        this.mTranslationYForLand = 0;
        this.mTranslationYForPort = (- this.mDisplayWidth - this.mDisplayHeight) / 2;
        try {
            Object object2 = this.mDialog.getContext().getResources();
            object = object2.getString(17104899);
            object2 = object2.getString(17104900);
            object = object.replace((CharSequence)"%", (CharSequence)"");
            object2 = object2.replace((CharSequence)"%", (CharSequence)"");
            float f = Float.parseFloat((String)object) / 100.0f;
            float f2 = Float.parseFloat((String)object2) / 100.0f;
            this.mDialogWidthForLand = (int)((float)this.mDisplayWidth * f);
            this.mDialogWidthForPort = (int)((float)this.mDisplayHeight * f2);
            return;
        }
        catch (Resources.NotFoundException var3_2) {
            var3_2.printStackTrace();
            return;
        }
        catch (NullPointerException var3_3) {
            var3_3.printStackTrace();
            return;
        }
        catch (NumberFormatException var3_4) {
            var3_4.printStackTrace();
            return;
        }
    }

    private void release() {
        this.removeListeners();
        this.mDialog = null;
        this.mWindow = null;
        this.mScrollableView = null;
    }

    private void removeListeners() {
        ViewGroup viewGroup = (ViewGroup)this.mWindow.getDecorView();
        viewGroup.removeOnAttachStateChangeListener(this);
        viewGroup.setOnTouchListener(null);
    }

    private void setWindowAnimations(int n) {
        if (n == 1) {
            this.mWindow.setWindowAnimations(this.mAnimationsForPort);
            return;
        }
        this.mWindow.setWindowAnimations(this.mAnimationsForLand);
    }

    private void setupListeners() {
        ViewGroup viewGroup = (ViewGroup)this.mWindow.getDecorView();
        viewGroup.addOnAttachStateChangeListener(this);
        viewGroup.setOnTouchListener(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateLayout(int n) {
        if (!this.isShowing()) {
            return;
        }
        this.setWindowAnimations(n);
        ViewGroup viewGroup = (ViewGroup)this.mWindow.getDecorView();
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams)viewGroup.getLayoutParams();
        View view = viewGroup.getChildAt(0);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams)view.getLayoutParams();
        layoutParams2.height = -2;
        layoutParams2.gravity = 17;
        layoutParams.width = this.mDisplayWidth;
        if (n == 1) {
            view.setRotation(270.0f);
            view.setTranslationY(this.mTranslationYForPort);
            layoutParams2.width = this.mDialogWidthForPort;
            layoutParams.height = this.mDisplayWidth;
        } else {
            view.setRotation(0.0f);
            view.setTranslationY(this.mTranslationYForLand);
            layoutParams2.width = this.mDialogWidthForLand;
            layoutParams.height = this.mDisplayHeight;
        }
        this.mWindow.getWindowManager().updateViewLayout(viewGroup, layoutParams);
        view.setLayoutParams(layoutParams2);
    }

    public void cancel() {
        if (this.mDialog != null) {
            this.mDialog.cancel();
            if (this.mStateListenerHandler != null) {
                this.mStateListenerHandler.dispatchCancel();
            }
        }
    }

    public void dismiss() {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
            if (this.mStateListenerHandler != null) {
                this.mStateListenerHandler.dispatchDismiss();
            }
        }
    }

    public void hide() {
        if (this.mDialog != null) {
            this.mDialog.hide();
            if (this.mStateListenerHandler != null) {
                this.mStateListenerHandler.dispatchHide();
            }
        }
    }

    public boolean isShowing() {
        if (this.mDialog != null) {
            return this.mDialog.isShowing();
        }
        return false;
    }

    public boolean isShown(DialogInterface dialogInterface) {
        if (this.mDialog == dialogInterface) {
            return true;
        }
        return false;
    }

    @Override
    public boolean onTouch(View object, MotionEvent motionEvent) {
        object = (ViewGroup)object;
        object.getChildAt(0).getGlobalVisibleRect(this.mTempRect);
        int n = this.calculateOutValue((int)motionEvent.getRawX(), this.mTempRect.left, this.mTempRect.right);
        int n2 = this.calculateOutValue((int)motionEvent.getRawY(), this.mTempRect.top, this.mTempRect.bottom);
        if (n != 0 || n2 != 0) {
            int n3 = n;
            if (n > 0) {
                n3 = n + object.getWidth();
            }
            n = n2;
            if (n2 > 0) {
                n = n2 + object.getHeight();
            }
            object = MotionEvent.obtain(motionEvent);
            object.setLocation(n3, n);
            if (this.isShowing()) {
                this.mDialog.onTouchEvent((MotionEvent)object);
            }
            object.recycle();
        }
        return false;
    }

    @Override
    public void onViewAttachedToWindow(View view) {
        view = (ViewGroup)this.mWindow.getDecorView();
        view.findViewById(16908290).setBackground(view.getBackground());
        view.setBackground(null);
        this.updateLayout(this.mOrientation);
    }

    @Override
    public void onViewDetachedFromWindow(View view) {
        if (this.mStateListenerHandler != null) {
            this.mStateListenerHandler.dispatchDismiss();
        }
        this.release();
    }

    public void setCancelable(boolean bl) {
        if (this.mDialog != null) {
            this.mDialog.setCancelable(bl);
        }
    }

    public void setCanceledOnTouchOutside(boolean bl) {
        if (this.mDialog != null) {
            this.mDialog.setCanceledOnTouchOutside(bl);
        }
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnCancelListener(onCancelListener);
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnDismissListener(onDismissListener);
        }
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnKeyListener(onKeyListener);
        }
    }

    public void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        if (this.mDialog != null) {
            this.mDialog.setOnShowListener(onShowListener);
        }
    }

    public void setOrientation(int n) {
        this.mOrientation = n;
        this.updateLayout(n);
    }

    public void setPositiveButtonEnabled(boolean bl) {
        Button button;
        if (this.mDialog != null && (button = this.mDialog.getButton(-1)) != null) {
            button.setEnabled(bl);
        }
    }

    public void setStateListener(StateListener stateListener) {
        if (this.mStateListenerHandler == null) {
            this.mStateListenerHandler = new RotatableDialogStateListenerHandler(this);
        }
        this.mStateListenerHandler.setStateListener(stateListener);
    }

    public void setViewAsScrollable(View view) {
        this.mScrollableView = view;
        if (this.mScrollableView != null) {
            this.mDialog.setMessage((CharSequence)"");
        }
    }

    public void show() {
        if (this.mDialog != null) {
            boolean bl = this.mDialog.isShowing();
            this.mDialog.show();
            if (this.mStateListenerHandler != null) {
                this.mStateListenerHandler.dispatchShow();
            }
            if (!bl) {
                this.setupListeners();
                this.attachScrollableView();
            }
            this.updateLayout(this.mOrientation);
        }
    }

    public static class Builder
    extends AlertDialog.Builder {
        private MessagePopup.Cancelable mIsCancelable;
        private MessagePopup.Cancelable mIsCancelableOnTouchOutside;
        protected View mScrollableView = null;
        private int mSensorOrientation;

        public Builder(Context context) {
            super(context);
        }

        /*
         * Enabled aggressive block sorting
         */
        public RotatableDialog createRotatableDialog() {
            boolean bl;
            boolean bl2 = true;
            RotatableDialog rotatableDialog = new RotatableDialog(super.create());
            rotatableDialog.setViewAsScrollable(this.mScrollableView);
            if (this.mIsCancelable != MessagePopup.Cancelable.UseDefault) {
                bl = this.mIsCancelable == MessagePopup.Cancelable.True;
                rotatableDialog.setCancelable(bl);
            }
            if (this.mIsCancelableOnTouchOutside != MessagePopup.Cancelable.UseDefault) {
                bl = this.mIsCancelableOnTouchOutside == MessagePopup.Cancelable.True ? bl2 : false;
                rotatableDialog.setCanceledOnTouchOutside(bl);
            }
            rotatableDialog.setOrientation(this.mSensorOrientation);
            return rotatableDialog;
        }

        public Builder setAlertIcon() {
            super.setIcon(17301543);
            return this;
        }

        public Builder setCancelable(MessagePopup.Cancelable cancelable, MessagePopup.Cancelable cancelable2) {
            this.mIsCancelable = cancelable;
            this.mIsCancelableOnTouchOutside = cancelable2;
            return this;
        }

        public Builder setOrientation(int n) {
            this.mSensorOrientation = n;
            return this;
        }

        public Builder setViewAsScrollable(View view) {
            this.mScrollableView = view;
            return this;
        }
    }

    public static interface StateListener {
        public void onCancel(RotatableDialog var1);

        public void onDismiss(RotatableDialog var1);

        public void onHide(RotatableDialog var1);

        public void onShow(RotatableDialog var1);
    }

}

