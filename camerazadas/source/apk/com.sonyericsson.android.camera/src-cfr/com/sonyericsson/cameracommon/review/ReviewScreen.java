/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ReviewScreen
extends FrameLayout {
    private static final String TAG = ReviewScreen.class.getSimpleName();
    protected View mAutoReviewRight;
    protected List<ReviewMenuButton> mButtonList;
    private RotatableDialog mDialog;
    private int mDisplayOrientation = 2;
    protected boolean mHasMpo;
    protected String mMime;
    private Rect mOrientedPictureSize = new Rect();
    protected ImageView mPictureImage;
    protected Uri mUri;

    public ReviewScreen(Context context) {
        super(context);
    }

    public ReviewScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReviewScreen(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    private Bitmap rotateThumbnail(Bitmap bitmap, int n) {
        int n2 = bitmap.getWidth();
        int n3 = bitmap.getHeight();
        Object object = bitmap;
        if (n != 0) {
            object = new Matrix();
            object.setRotate(n, (float)n2 / 2.0f, (float)n3 / 2.0f);
            object = Bitmap.createBitmap(bitmap, 0, 0, n2, n3, (Matrix)object, false);
            bitmap.recycle();
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setVisible(boolean bl) {
        int n = bl ? 0 : 4;
        this.setVisibility(n);
        Iterator<ReviewMenuButton> iterator = this.mButtonList.iterator();
        while (iterator.hasNext()) {
            iterator.next().setVisibility(n);
        }
        if ("image/jpeg".equals(this.mMime) || this.mUri == null) {
            this.setVisiblePlayIcon(false);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setVisiblePlayIcon(boolean bl) {
        int n = bl ? 0 : 4;
        this.mButtonList.get(0).setVisibility(n);
    }

    abstract void backToViewFinder();

    protected void cancelDialog() {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
            this.mDialog = null;
        }
    }

    public void clearScreen() {
        this.mPictureImage.setImageBitmap(null);
    }

    abstract ContentResolverUtilListener getContentResolverUtilListener();

    abstract MessagePopup getMessagePopup();

    public Uri getUri() {
        return this.mUri;
    }

    public void hideScreen() {
        this.setVisible(false);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mButtonList != null) {
            this.mButtonList.clear();
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mPictureImage = (ImageView)this.findViewById(R.id.auto_review_picture_image);
        this.mButtonList = new ArrayList<ReviewMenuButton>();
        ReviewMenuButton reviewMenuButton = (ReviewMenuButton)this.findViewById(R.id.auto_review_play);
        this.mButtonList.add(reviewMenuButton);
        reviewMenuButton = (ReviewMenuButton)this.findViewById(R.id.auto_review_view);
        this.mButtonList.add(reviewMenuButton);
        reviewMenuButton = (ReviewMenuButton)this.findViewById(R.id.auto_review_edit);
        this.mButtonList.add(reviewMenuButton);
        reviewMenuButton = (ReviewMenuButton)this.findViewById(R.id.auto_review_share);
        this.mButtonList.add(reviewMenuButton);
        reviewMenuButton = (ReviewMenuButton)this.findViewById(R.id.auto_review_delete);
        this.mButtonList.add(reviewMenuButton);
        this.mAutoReviewRight = this.findViewById(R.id.auto_review_right);
        ((ViewGroup.MarginLayoutParams)this.mAutoReviewRight.getLayoutParams()).setMargins(0, 0, LayoutDependencyResolver.getSystemBarMargin(this.getContext()), 0);
    }

    protected void setCurrentDialog(RotatableDialog rotatableDialog) {
        this.cancelDialog();
        this.mDialog = rotatableDialog;
    }

    public void setOrientation(int n) {
        float f = RotationUtil.getAngle(n);
        Iterator<ReviewMenuButton> iterator = this.mButtonList.iterator();
        while (iterator.hasNext()) {
            iterator.next().setRotation(f);
        }
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
        this.mHasMpo = false;
    }

    public void setUri(Uri uri, boolean bl) {
        this.mUri = uri;
        this.mHasMpo = bl;
    }

    /*
     * Exception decompiling
     */
    public boolean setupScreen(Activity var1_1, Uri var2_2, byte[] var3_3, String var4_4, String var5_5, Rect var6_6, int var7_7, int var8_8, boolean var9_9) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public void showRightIcons(Boolean bl) {
        if (this.mAutoReviewRight != null) {
            if (bl.booleanValue()) {
                this.mAutoReviewRight.setVisibility(0);
            }
        } else {
            return;
        }
        this.mAutoReviewRight.setVisibility(4);
    }

    public void showScreen() {
        this.setVisible(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updatePictureImageLayout(int n, Rect rect) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)this.mPictureImage.getLayoutParams();
        if (n == 1) {
            layoutParams.width = this.getHeight();
            layoutParams.height = rect.height();
            layoutParams.gravity = rect.width() < rect.height() ? 17 : 17;
        } else {
            layoutParams.width = rect.width();
            layoutParams.height = this.getHeight();
            layoutParams.gravity = rect.width() < rect.height() ? 17 : 3;
        }
        this.mPictureImage.setLayoutParams(layoutParams);
    }
}

