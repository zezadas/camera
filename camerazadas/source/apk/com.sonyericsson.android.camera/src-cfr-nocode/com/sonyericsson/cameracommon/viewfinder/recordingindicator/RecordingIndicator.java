/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.DurationParameterSet;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingProgressBar;
import com.sonymobile.cameracommon.extendedview.RoundRectImageView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RecordingIndicator
extends RelativeLayout {
    private static final String TAG;
    private LinearLayout mConstraintIndicator;
    private TextView mConstraintRecordingTimeText;
    private int mDisplayOrientation;
    private int mDuration;
    private boolean mIsConstraint;
    private boolean mIsRecording;
    private boolean mIsSequence;
    private boolean mIsThumbnailReady;
    private TextView mMaxDurationText;
    private DurationParameterSet mMaxTime;
    private int mPivotForRotationConstraint;
    private int mPivotForRotationSequence;
    private int mPivotForRotationUnConstraint;
    private RecordingProgressBar mProgressBar;
    private final float mRadius;
    private DurationParameterSet mRecordingTime;
    private LinearLayout mSequenceIndicator;
    private TextView mSequenceRec;
    private TextView mSequenceRecordingTimeText;
    private String mStringFormatRecordingTime;
    private String mStringFormatRemainConstraintTime;
    private int mThumbnailCnt;
    private LinearLayout mThumbnailContainer;
    private final int mThumbnailMaxNum;
    private final int mThumbnailPadding;
    private final RelativeLayout.LayoutParams mThumbnailParams;
    private final int mThumbnailSize;
    private final Bitmap[] mThumbnails;
    private LinearLayout mTimeContainer;
    private LinearLayout mUnConstraintIndicator;
    private TextView mUnConstraintRecordingTimeText;

    static;

    public RecordingIndicator(Context var1, AttributeSet var2);

    private void addEmptyThumbnails();

    private RoundRectImageView createRoundRectImageView(Bitmap var1);

    private void resetThumbnails();

    private void updateLayout();

    private void updateProgressbar(int var1);

    private void updateThumbnails(Bitmap var1);

    public void addChapter(byte[] var1, int var2);

    @Override
    public void onFinishInflate();

    public void prepareBeforeRecording(int var1, boolean var2);

    public void release();

    public void setConstraint(boolean var1);

    public void setIndicator(boolean var1);

    public void setOrientation(int var1);

    public void setSequenceMode(boolean var1);

    public void setVisible(boolean var1);

    public void updateRecordingTime(int var1);
}

