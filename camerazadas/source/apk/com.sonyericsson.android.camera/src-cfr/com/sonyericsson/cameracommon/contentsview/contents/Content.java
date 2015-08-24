/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview.contents;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.optionmenu.OptionOperating;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;

public class Content
implements OptionOperating {
    private static final String TAG = Content.class.getSimpleName();
    protected String mCountText;
    private final int mExtraIconId;
    protected final ContentInfo mInfo;
    private final int mPlayableIconId;

    public Content(ContentInfo contentInfo, int n, int n2) {
        this.mInfo = contentInfo;
        this.mExtraIconId = n;
        this.mPlayableIconId = n2;
    }

    public ContentInfo getContentInfo() {
        return this.mInfo;
    }

    public String getCountText() {
        return this.mCountText;
    }

    public int getExtraIconResourceId() {
        return this.mExtraIconId;
    }

    public int getPlayIconResourceId() {
        return this.mPlayableIconId;
    }

    public Bitmap getThumbnail() {
        return this.getContentInfo().getSnapShot().mThumbnail;
    }

    public boolean shouldShowExtraIcon() {
        if (this.mExtraIconId != -1) {
            return true;
        }
        return false;
    }

    public boolean shouldShowPlayableIcon() {
        if (this.mPlayableIconId != -1) {
            return true;
        }
        return false;
    }

    @Override
    public void viewContent(Activity activity) {
        ApplicationLauncher.launchAlbum(activity, this.mInfo.mMimeType, this.mInfo.mOriginalUri, this.mInfo.mBucketId, this.mInfo.mSomcType);
    }

    public static class ContentInfo {
        public int mBucketId;
        public ContentsType mContentType;
        public int mGroupedImage;
        public int mHeight;
        public int mId;
        public String mMimeType;
        public String mMpoPath;
        public int mOrientation;
        public String mOriginalPath;
        public Uri mOriginalUri;
        public boolean mPlayable;
        public int mSomcType;
        public Bitmap mThumbnail;
        public int mType;
        public int mWidth;

        /*
         * Enabled aggressive block sorting
         */
        public ContentInfo getSnapShot() {
            ContentInfo contentInfo = new ContentInfo();
            contentInfo.mId = this.mId;
            contentInfo.mType = this.mType;
            contentInfo.mOriginalUri = this.mOriginalUri;
            contentInfo.mOriginalPath = this.mOriginalPath;
            contentInfo.mMpoPath = this.mMpoPath;
            contentInfo.mOrientation = this.mOrientation;
            contentInfo.mWidth = this.mWidth;
            contentInfo.mHeight = this.mHeight;
            String string = this.mMimeType != null ? this.mMimeType.toString() : null;
            contentInfo.mMimeType = string;
            contentInfo.mPlayable = this.mPlayable;
            contentInfo.mGroupedImage = this.mGroupedImage;
            contentInfo.mSomcType = this.mSomcType;
            contentInfo.mBucketId = this.mBucketId;
            contentInfo.mContentType = this.mContentType;
            contentInfo.mThumbnail = this.mThumbnail;
            return contentInfo;
        }
    }

    public static enum ContentsType {
        NONE,
        PHOTO,
        VIDEO,
        BURST,
        TIME_SHIFT,
        TIME_SHIFT_VIDEO,
        TIME_SHIFT_VIDEO_120F,
        VIDEO_4K,
        SOUND_PHOTO;
        

        private ContentsType() {
        }
    }

}

