/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview.contents;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.optionmenu.OptionOperating;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Content
implements OptionOperating {
    private static final String TAG;
    protected String mCountText;
    private final int mExtraIconId;
    protected final ContentInfo mInfo;
    private final int mPlayableIconId;

    static;

    public Content(ContentInfo var1, int var2, int var3);

    public ContentInfo getContentInfo();

    public String getCountText();

    public int getExtraIconResourceId();

    public int getPlayIconResourceId();

    public Bitmap getThumbnail();

    public boolean shouldShowExtraIcon();

    public boolean shouldShowPlayableIcon();

    @Override
    public void viewContent(Activity var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
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

        public ContentInfo();

        public ContentInfo getSnapShot();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ContentsType
    extends Enum<ContentsType> {
        private static final /* synthetic */ ContentsType[] $VALUES;
        public static final /* enum */ ContentsType BURST;
        public static final /* enum */ ContentsType NONE;
        public static final /* enum */ ContentsType PHOTO;
        public static final /* enum */ ContentsType SOUND_PHOTO;
        public static final /* enum */ ContentsType TIME_SHIFT;
        public static final /* enum */ ContentsType TIME_SHIFT_VIDEO;
        public static final /* enum */ ContentsType TIME_SHIFT_VIDEO_120F;
        public static final /* enum */ ContentsType VIDEO;
        public static final /* enum */ ContentsType VIDEO_4K;

        static;

        private ContentsType();

        public static ContentsType valueOf(String var0);

        public static ContentsType[] values();
    }

}

