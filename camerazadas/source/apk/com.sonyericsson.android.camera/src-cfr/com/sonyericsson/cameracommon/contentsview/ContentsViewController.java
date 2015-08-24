/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.ContentLoader;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsContainer;
import com.sonyericsson.cameracommon.contentsview.PreloadThumbnail;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.IncrementalId;
import java.util.List;

public class ContentsViewController
implements StorageController.StorageListener,
ContentLoader.ContentCreationCallback {
    public static final int MAX_CONTENT_NUMBER = 1;
    private static final String TAG = ContentsViewController.class.getSimpleName();
    private Activity mActivity;
    private ClickListener mClickListener = null;
    private OnClickThumbnailProgressListener mClickThumbnailProgressListener = null;
    private boolean mClickable = true;
    private final ContentsContainer mContentContainer;
    private ContentCreatedListener mContentCreatedListener;
    private ContentLoader mContentLoader;
    private int mOrientation;
    private int mProgressRequestId;
    private final IncrementalId mRequestIdGenerator;
    private CameraStorageManager mStorageManager;
    private PreloadThumbnail mThumbnail;
    private ContentPallet.ThumbnailClickListener mThumbnailClickListener = null;

    public ContentsViewController(Activity activity, ContentLoader.SecurityLevel securityLevel, CameraStorageManager cameraStorageManager, ContentPallet.ThumbnailClickListener thumbnailClickListener) {
        this.mActivity = activity;
        this.mContentLoader = new ContentLoader(activity, securityLevel, this, 1);
        this.mContentContainer = (ContentsContainer)activity.findViewById(R.id.contents_container);
        this.mRequestIdGenerator = new IncrementalId();
        this.mStorageManager = cameraStorageManager;
        this.mStorageManager.addStorageListener(this);
        this.mThumbnailClickListener = thumbnailClickListener;
    }

    private ContentPallet searchPallet(int n) {
        for (int i = 0; i < this.mContentContainer.getChildCount(); ++i) {
            ContentPallet contentPallet = (ContentPallet)this.mContentContainer.getChildAt(i);
            if (n != contentPallet.getRequestId()) continue;
            return contentPallet;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void addContent(int n, Uri uri) {
        if (this.mContentLoader == null) {
            return;
        }
        if (this.searchPallet(n) != null) {
            this.mContentLoader.request(n, uri);
            return;
        }
        if (n == -1) return;
        if (this.mContentContainer.getChildCount() != 0) return;
        this.reload();
    }

    public void addContentOverlayView(int n, View view) {
        ViewGroup viewGroup = (ViewGroup)view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        if ((viewGroup = this.searchPallet(n)) != null) {
            viewGroup.addView(view);
        }
    }

    public void addContentOverlayView(int n, View view, RelativeLayout.LayoutParams layoutParams) {
        ContentPallet contentPallet = this.searchPallet(n);
        if (contentPallet != null) {
            contentPallet.addView(view, layoutParams);
        }
    }

    public void clearContents() {
        this.mContentLoader.pause();
        this.mContentContainer.removeAllViews();
    }

    public int createClearContentFrame() {
        if (this.mActivity == null) {
            CameraLogger.w(TAG, "Activity has already been released at createClearContentFrame.");
            return -1;
        }
        Object object = this.mActivity.getLayoutInflater();
        if (object == null) {
            CameraLogger.w(TAG, "could not get inflater.");
            return -1;
        }
        int n = this.mRequestIdGenerator.getNext();
        object = (ContentPallet)object.inflate(R.layout.content_pallet, null);
        object.initialize(n, this.mThumbnailClickListener);
        if (!this.mClickable) {
            object.disableClick();
        }
        if (this.mContentContainer.getChildCount() >= 1) {
            this.mContentContainer.removeViewAt(0);
        }
        this.mContentContainer.addView((View)object);
        this.mContentContainer.setSensorOrientation(this.mOrientation);
        return n;
    }

    public int createContentFrame() {
        int n = this.createClearContentFrame();
        this.showProgress(n);
        return n;
    }

    public void disableClick() {
        this.mContentContainer.disableClick();
        this.mClickable = false;
    }

    public void enableClick() {
        this.mContentContainer.enableClick();
        this.mClickable = true;
    }

    public void hide() {
        this.mContentContainer.setVisibility(4);
    }

    public void hideThumbnail() {
        if (this.mThumbnail == null) {
            this.mContentContainer.hide();
        }
    }

    public boolean isLoading() {
        for (int i = 0; i < this.mContentContainer.getChildCount(); ++i) {
            if (((ContentPallet)this.mContentContainer.getChildAt(i)).hasContent()) continue;
            return true;
        }
        return false;
    }

    @Override
    public void onAvailableSizeUpdated(long l) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onContentCreated(int n, Content content) {
        if (this.mActivity == null) {
            CameraLogger.w(TAG, "Activity has already been released.");
            return;
        } else {
            ContentPallet contentPallet;
            int n2 = n;
            if (n == -1) {
                n2 = n;
                if (!this.isLoading()) {
                    n2 = this.createClearContentFrame();
                }
            }
            if ((contentPallet = this.searchPallet(n2)) != null) {
                contentPallet.set(content);
                if (this.mThumbnail != null) {
                    this.mThumbnail.onContentCreated();
                }
            }
            if (this.mProgressRequestId != n2 || this.mContentCreatedListener == null) return;
            {
                this.mContentCreatedListener.onContentCreated();
                return;
            }
        }
    }

    @Override
    public void onDestinationToSaveChanged() {
    }

    @Override
    public void onStorageStateChanged(String string) {
        if (!this.mStorageManager.isReadable()) {
            this.clearContents();
        }
        if (!this.isLoading()) {
            this.reload();
        }
    }

    public void pause() {
        if (this.mContentLoader != null) {
            this.mContentLoader.pause();
        }
        this.mContentContainer.pause();
    }

    public void release() {
        this.mContentLoader.release();
        this.mContentLoader = null;
        this.mStorageManager.removeStorageListener(this);
        this.mThumbnail = null;
        this.mActivity = null;
    }

    public void reload() {
        List<String> list;
        this.mContentContainer.removeAllViews();
        if (this.mContentLoader != null && (list = this.mStorageManager.getReadableStorage()).size() > 0) {
            this.mContentLoader.reload(1, list);
        }
    }

    public void removeContentInfo() {
        this.mContentLoader.removeTopContent();
    }

    public void removeContentOverlayView(int n, View view) {
        View view2 = view.findViewById(R.id.content_progress_bar);
        if (view2 != null) {
            this.setClickThumbnailProgressListener(null);
            view2.setOnClickListener(null);
        }
        if ((view2 = this.searchPallet(n)) != null) {
            view2.removeView(view);
            view = view2.findViewById(R.id.content_progress_bar);
            if (view != null) {
                view.setVisibility(4);
                view.setOnClickListener(null);
            }
        }
    }

    public void removeEarlyThumbnailView() {
        if (this.mThumbnail != null) {
            this.removeContentOverlayView(this.mThumbnail.getRequestId(), this.mThumbnail.getThumbnailView());
            this.mThumbnail = null;
        }
    }

    public void requestLayout() {
        this.mContentContainer.requestLayout();
    }

    public void setClickThumbnailProgressListener(OnClickThumbnailProgressListener onClickThumbnailProgressListener) {
        this.mClickThumbnailProgressListener = onClickThumbnailProgressListener;
        if (onClickThumbnailProgressListener == null) {
            this.mClickListener = null;
            return;
        }
        this.mClickListener = new ClickListener();
    }

    public void setContentCreatedListener(ContentCreatedListener contentCreatedListener) {
        this.mContentCreatedListener = contentCreatedListener;
    }

    public void setEarlyThumbnailView(View view) {
        this.mThumbnail = new PreloadThumbnail(this, view);
        view.findViewById(R.id.content_progress_bar).setOnClickListener(this.mClickListener);
    }

    public void setSensorOrientation(int n) {
        this.mContentContainer.setSensorOrientation(n);
        this.mOrientation = n;
    }

    public void show() {
        this.mContentContainer.setVisibility(0);
        this.mContentContainer.cancelRequestHide();
    }

    public void showProgress(int n) {
        this.mProgressRequestId = n;
        View view = this.searchPallet(n);
        if (view != null && (view = view.findViewById(R.id.content_progress_bar)) != null) {
            view.setVisibility(0);
            view.setOnClickListener(this.mClickListener);
        }
    }

    public void startAnimation(Animation animation) {
        this.stopAnimation(false);
        if (animation != null) {
            animation.reset();
            this.mContentContainer.startAnimation(animation);
        }
    }

    public void startInsertAnimation(int n) {
        this.startInsertAnimation(n, this.mThumbnail);
    }

    public void startInsertAnimation(int n, Animation.AnimationListener animationListener) {
        if (this.mThumbnail != null) {
            this.mThumbnail.setRequestId(n);
            this.mThumbnail.prepareAnimation();
            this.addContentOverlayView(n, this.mThumbnail.getThumbnailView());
            Animation animation = AnimationUtils.loadAnimation(this.mActivity, R.anim.early_thumbnail_insert);
            animation.setAnimationListener(animationListener);
            this.startAnimation(animation);
        }
    }

    public void stopAnimation(boolean bl) {
        Animation animation = this.mContentContainer.getAnimation();
        if (animation != null) {
            if (!bl) {
                animation.setAnimationListener(null);
            }
            animation.cancel();
            this.mContentContainer.setAnimation(null);
        }
    }

    public void updateSecurityLevel(ContentLoader.SecurityLevel securityLevel) {
        this.mContentLoader.updateSecurityLevel(securityLevel);
    }

    private class ClickListener
    implements View.OnClickListener {
        private ClickListener() {
        }

        @Override
        public void onClick(View view) {
            if (ContentsViewController.this.mClickThumbnailProgressListener != null && view != null && view.getId() == R.id.content_progress_bar) {
                ContentsViewController.this.mClickThumbnailProgressListener.onClickThumbnailProgress();
            }
        }
    }

    public static interface ContentCreatedListener {
        public void onContentCreated();
    }

    public static interface OnClickThumbnailProgressListener {
        public void onClickThumbnailProgress();
    }

}

