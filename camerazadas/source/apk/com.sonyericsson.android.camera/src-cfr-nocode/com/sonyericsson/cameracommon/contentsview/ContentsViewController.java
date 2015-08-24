/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.net.Uri;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.contentsview.ContentLoader;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsContainer;
import com.sonyericsson.cameracommon.contentsview.PreloadThumbnail;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.utility.IncrementalId;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ContentsViewController
implements StorageController.StorageListener,
ContentLoader.ContentCreationCallback {
    public static final int MAX_CONTENT_NUMBER = 1;
    private static final String TAG;
    private Activity mActivity;
    private ClickListener mClickListener;
    private OnClickThumbnailProgressListener mClickThumbnailProgressListener;
    private boolean mClickable;
    private final ContentsContainer mContentContainer;
    private ContentCreatedListener mContentCreatedListener;
    private ContentLoader mContentLoader;
    private int mOrientation;
    private int mProgressRequestId;
    private final IncrementalId mRequestIdGenerator;
    private CameraStorageManager mStorageManager;
    private PreloadThumbnail mThumbnail;
    private ContentPallet.ThumbnailClickListener mThumbnailClickListener;

    static;

    public ContentsViewController(Activity var1, ContentLoader.SecurityLevel var2, CameraStorageManager var3, ContentPallet.ThumbnailClickListener var4);

    static /* synthetic */ OnClickThumbnailProgressListener access$100(ContentsViewController var0);

    private ContentPallet searchPallet(int var1);

    public void addContent(int var1, Uri var2);

    public void addContentOverlayView(int var1, View var2);

    public void addContentOverlayView(int var1, View var2, RelativeLayout.LayoutParams var3);

    public void clearContents();

    public int createClearContentFrame();

    public int createContentFrame();

    public void disableClick();

    public void enableClick();

    public void hide();

    public void hideThumbnail();

    public boolean isLoading();

    @Override
    public void onAvailableSizeUpdated(long var1);

    @Override
    public void onContentCreated(int var1, Content var2);

    @Override
    public void onDestinationToSaveChanged();

    @Override
    public void onStorageStateChanged(String var1);

    public void pause();

    public void release();

    public void reload();

    public void removeContentInfo();

    public void removeContentOverlayView(int var1, View var2);

    public void removeEarlyThumbnailView();

    public void requestLayout();

    public void setClickThumbnailProgressListener(OnClickThumbnailProgressListener var1);

    public void setContentCreatedListener(ContentCreatedListener var1);

    public void setEarlyThumbnailView(View var1);

    public void setSensorOrientation(int var1);

    public void show();

    public void showProgress(int var1);

    public void startAnimation(Animation var1);

    public void startInsertAnimation(int var1);

    public void startInsertAnimation(int var1, Animation.AnimationListener var2);

    public void stopAnimation(boolean var1);

    public void updateSecurityLevel(ContentLoader.SecurityLevel var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ClickListener
    implements View.OnClickListener {
        final /* synthetic */ ContentsViewController this$0;

        private ClickListener(ContentsViewController var1);

        /* synthetic */ ClickListener(ContentsViewController var1,  var2);

        @Override
        public void onClick(View var1);
    }

    public static interface ContentCreatedListener {
        public void onContentCreated();
    }

    public static interface OnClickThumbnailProgressListener {
        public void onClickThumbnailProgress();
    }

}

