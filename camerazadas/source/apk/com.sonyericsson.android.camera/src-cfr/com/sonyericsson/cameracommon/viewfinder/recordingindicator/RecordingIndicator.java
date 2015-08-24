/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.ThumbnailUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.DurationParameterSet;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingProgressBar;
import com.sonymobile.cameracommon.extendedview.RoundRectImageView;
import com.sonymobile.cameracommon.font.SstFontUtil;
import java.util.Locale;

public class RecordingIndicator
extends RelativeLayout {
    private static final String TAG = RecordingIndicator.class.getSimpleName();
    private LinearLayout mConstraintIndicator = null;
    private TextView mConstraintRecordingTimeText = null;
    private int mDisplayOrientation;
    private int mDuration;
    private boolean mIsConstraint;
    private boolean mIsRecording;
    private boolean mIsSequence;
    private boolean mIsThumbnailReady;
    private TextView mMaxDurationText = null;
    private DurationParameterSet mMaxTime;
    private int mPivotForRotationConstraint;
    private int mPivotForRotationSequence;
    private int mPivotForRotationUnConstraint;
    private RecordingProgressBar mProgressBar = null;
    private final float mRadius;
    private DurationParameterSet mRecordingTime;
    private LinearLayout mSequenceIndicator = null;
    private TextView mSequenceRec = null;
    private TextView mSequenceRecordingTimeText = null;
    private String mStringFormatRecordingTime;
    private String mStringFormatRemainConstraintTime;
    private int mThumbnailCnt;
    private LinearLayout mThumbnailContainer = null;
    private final int mThumbnailMaxNum;
    private final int mThumbnailPadding;
    private final RelativeLayout.LayoutParams mThumbnailParams;
    private final int mThumbnailSize;
    private final Bitmap[] mThumbnails;
    private LinearLayout mTimeContainer = null;
    private LinearLayout mUnConstraintIndicator = null;
    private TextView mUnConstraintRecordingTimeText = null;

    public RecordingIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThumbnailMaxNum = this.getResources().getInteger(R.integer.rec_sequence_thumbnail_max_num);
        this.mThumbnailSize = this.getResources().getDimensionPixelSize(R.dimen.rec_sequence_thumbnail_width_height);
        this.mRadius = this.getResources().getDimension(R.dimen.rec_sequence_thumbnail_radius);
        this.mThumbnailParams = new RelativeLayout.LayoutParams(-2, this.mThumbnailSize);
        this.mThumbnailPadding = this.getResources().getDimensionPixelSize(R.dimen.rec_sequence_thumbnail_padding);
        this.mStringFormatRemainConstraintTime = null;
        this.mStringFormatRecordingTime = null;
        this.mIsConstraint = false;
        this.mIsSequence = false;
        this.mIsThumbnailReady = false;
        this.mIsRecording = false;
        this.mThumbnailCnt = 0;
        this.mThumbnails = new Bitmap[this.mThumbnailMaxNum];
        this.mDuration = 0;
        this.mMaxTime = null;
        this.mRecordingTime = null;
        this.mPivotForRotationUnConstraint = context.getResources().getDimensionPixelSize(R.dimen.rec_unconstraint_height) / 2;
        this.mPivotForRotationConstraint = context.getResources().getDimensionPixelSize(R.dimen.rec_constraint_height) / 2;
        this.mPivotForRotationSequence = context.getResources().getDimensionPixelSize(R.dimen.rec_sequence_height) / 2;
    }

    private void addEmptyThumbnails() {
        Object object = Bitmap.createBitmap(this.mThumbnailSize, this.mThumbnailSize, Bitmap.Config.RGB_565);
        object.eraseColor(-16777216);
        object = this.createRoundRectImageView((Bitmap)object);
        object.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
        this.mThumbnailContainer.addView((View)object);
    }

    private RoundRectImageView createRoundRectImageView(Bitmap bitmap) {
        RoundRectImageView roundRectImageView = new RoundRectImageView(this.getContext());
        roundRectImageView.setLayoutParams(this.mThumbnailParams);
        roundRectImageView.setImageBitmap(bitmap);
        roundRectImageView.setClickable(false);
        roundRectImageView.setFocusable(false);
        roundRectImageView.setFocusableInTouchMode(false);
        return roundRectImageView;
    }

    private void resetThumbnails() {
        this.mThumbnailCnt = 0;
        if (this.mThumbnailContainer != null) {
            this.mThumbnailContainer.removeAllViews();
        }
        this.addEmptyThumbnails();
    }

    private void updateLayout() {
        float f = RotationUtil.getAngle(this.mDisplayOrientation);
        if (this.mUnConstraintIndicator != null) {
            this.mUnConstraintIndicator.setRotation(f);
            this.mUnConstraintIndicator.setPivotX(this.mPivotForRotationUnConstraint);
            this.mUnConstraintIndicator.setPivotY(this.mPivotForRotationUnConstraint);
        }
        if (this.mConstraintIndicator != null) {
            this.mConstraintIndicator.setRotation(f);
            this.mConstraintIndicator.setPivotX(this.mPivotForRotationConstraint);
            this.mConstraintIndicator.setPivotY(this.mPivotForRotationConstraint);
        }
        if (this.mSequenceIndicator != null) {
            this.mSequenceIndicator.setRotation(f);
            this.mSequenceIndicator.setPivotX(this.mPivotForRotationSequence);
            this.mSequenceIndicator.setPivotY(this.mPivotForRotationSequence);
        }
    }

    private void updateProgressbar(int n) {
        if (n > this.mDuration) {
            return;
        }
        this.mProgressBar.setProgress(n, this.mDuration);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateThumbnails(Bitmap bitmap) {
        this.mIsThumbnailReady = true;
        this.setIndicator(this.mIsRecording);
        RoundRectImageView roundRectImageView = this.createRoundRectImageView(bitmap);
        if (this.mThumbnailCnt == 0) {
            this.mThumbnailContainer.removeAllViews();
            roundRectImageView.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
            this.mThumbnails[0] = bitmap;
        } else {
            roundRectImageView.setPadding(this.mThumbnailPadding, 0, 0, 0);
            if (this.mThumbnailCnt == 1) {
                this.mThumbnails[1] = bitmap;
            } else if (this.mThumbnailCnt >= this.mThumbnailMaxNum) {
                this.mThumbnailContainer.removeViewAt(0);
                RoundRectImageView roundRectImageView2 = this.createRoundRectImageView(this.mThumbnails[1]);
                roundRectImageView2.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
                this.mThumbnailContainer.removeViewAt(0);
                this.mThumbnailContainer.addView((View)roundRectImageView2, 0);
                for (int i = 0; i < this.mThumbnailMaxNum - 1; ++i) {
                    this.mThumbnails[i] = this.mThumbnails[i + 1];
                }
            }
            this.mThumbnails[this.mThumbnailMaxNum - 1] = bitmap;
        }
        this.mThumbnailContainer.addView(roundRectImageView);
        ++this.mThumbnailCnt;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void addChapter(byte[] arrby, int n) {
        if (!this.mIsSequence) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(arrby, 0, arrby.length, options);
        int n2 = options.outHeight;
        int n3 = options.outWidth;
        if (n2 < n3) {
            options.inSampleSize = Math.round((float)n2 / (float)this.mThumbnailSize);
        } else if (n3 < n2) {
            options.inSampleSize = Math.round((float)n3 / (float)this.mThumbnailSize);
        }
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        this.updateThumbnails(ThumbnailUtil.rotateThumbnail(ThumbnailUtils.extractThumbnail(BitmapFactory.decodeByteArray(arrby, 0, arrby.length, options), this.mThumbnailSize, this.mThumbnailSize), n));
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mUnConstraintIndicator = (LinearLayout)this.findViewById(R.id.unconstraint);
        this.mUnConstraintRecordingTimeText = (TextView)this.mUnConstraintIndicator.findViewById(R.id.recording_time);
        SstFontUtil.setSstFont(this.mUnConstraintRecordingTimeText, SstFontUtil.SstFontType.BOLD);
        SstFontUtil.setSstFont((TextView)this.mUnConstraintIndicator.findViewById(R.id.recording_indicator_rec), SstFontUtil.SstFontType.BOLD);
        this.mConstraintIndicator = (LinearLayout)this.findViewById(R.id.constraint);
        this.mConstraintRecordingTimeText = (TextView)this.mConstraintIndicator.findViewById(R.id.recording_time);
        SstFontUtil.setSstFont(this.mConstraintRecordingTimeText, SstFontUtil.SstFontType.BOLD);
        SstFontUtil.setSstFont((TextView)this.mConstraintIndicator.findViewById(R.id.recording_indicator_rec), SstFontUtil.SstFontType.BOLD);
        SstFontUtil.setSstFont((TextView)this.mConstraintIndicator.findViewById(R.id.recording_devider), SstFontUtil.SstFontType.BOLD);
        this.mMaxDurationText = (TextView)this.mConstraintIndicator.findViewById(R.id.remain_time);
        SstFontUtil.setSstFont(this.mMaxDurationText, SstFontUtil.SstFontType.BOLD);
        this.mProgressBar = (RecordingProgressBar)this.findViewById(R.id.progressbar);
        this.mSequenceIndicator = (LinearLayout)this.findViewById(R.id.sequence_video);
        this.mSequenceRecordingTimeText = (TextView)this.mSequenceIndicator.findViewById(R.id.recording_time);
        SstFontUtil.setSstFont(this.mSequenceRecordingTimeText, SstFontUtil.SstFontType.BOLD);
        this.mSequenceRec = (TextView)this.mSequenceIndicator.findViewById(R.id.recording_indicator_rec);
        SstFontUtil.setSstFont(this.mSequenceRec, SstFontUtil.SstFontType.BOLD);
        this.mThumbnailContainer = (LinearLayout)this.mSequenceIndicator.findViewById(R.id.thumbnail_container);
        this.mTimeContainer = (LinearLayout)this.mSequenceIndicator.findViewById(R.id.time_container);
        this.mMaxTime = new DurationParameterSet();
        this.mRecordingTime = new DurationParameterSet();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void prepareBeforeRecording(int n, boolean bl) {
        this.mRecordingTime.update(0);
        int n2 = this.getContext().getResources().getDimensionPixelSize(R.dimen.rec_record_time_width);
        if (this.mIsConstraint) {
            this.mDuration = n;
            this.mMaxTime.update(this.mDuration);
            this.mProgressBar.setProgress(0, 0);
            this.mStringFormatRemainConstraintTime = this.getContext().getString(R.string.cam_status_recoding_time_format_txt);
            this.mMaxDurationText.setText((CharSequence)String.format(Locale.US, this.mStringFormatRemainConstraintTime, this.mMaxTime.min, this.mMaxTime.sec));
            this.mStringFormatRecordingTime = this.getContext().getString(R.string.cam_status_recoding_time_format_txt);
            this.mConstraintRecordingTimeText.setText((CharSequence)String.format(Locale.US, this.mStringFormatRecordingTime, this.mRecordingTime.min, this.mRecordingTime.sec));
            this.mConstraintRecordingTimeText.getLayoutParams().width = n2;
        } else {
            this.mStringFormatRecordingTime = this.getContext().getString(R.string.cam_status_recoding_time_format_txt);
            if (this.mIsSequence) {
                this.resetThumbnails();
                this.setIndicator(this.mIsRecording);
                this.mSequenceRecordingTimeText.setText((CharSequence)String.format(Locale.US, this.mStringFormatRecordingTime, this.mRecordingTime.min, this.mRecordingTime.sec));
                this.mSequenceRecordingTimeText.getLayoutParams().width = n2;
            } else {
                this.mUnConstraintRecordingTimeText.setText((CharSequence)String.format(Locale.US, this.mStringFormatRecordingTime, this.mRecordingTime.min, this.mRecordingTime.sec));
                this.mUnConstraintRecordingTimeText.getLayoutParams().width = n2;
            }
        }
        if (this.mIsConstraint) {
            this.mConstraintIndicator.setVisibility(0);
            this.mUnConstraintIndicator.setVisibility(8);
            this.mSequenceIndicator.setVisibility(8);
        } else if (this.mIsSequence) {
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(8);
            this.mSequenceIndicator.setVisibility(0);
        } else {
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(0);
            this.mSequenceIndicator.setVisibility(8);
        }
        this.updateLayout();
    }

    public void release() {
    }

    public void setConstraint(boolean bl) {
        this.mIsConstraint = bl;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setIndicator(boolean bl) {
        int n;
        int n2;
        this.mIsRecording = bl;
        if (!this.mIsSequence) {
            return;
        }
        if (bl) {
            if (!this.mIsThumbnailReady) return;
        } else {
            this.mIsThumbnailReady = false;
        }
        if (bl) {
            n = R.drawable.cam_sequential_video_rec_bg_rec_icn;
            n2 = 0;
        } else {
            n = R.drawable.cam_sequential_video_rec_bg_pause_right_icn;
            n2 = 8;
        }
        this.mTimeContainer.setBackgroundResource(n);
        this.mTimeContainer.setPadding(this.getResources().getDimensionPixelSize(R.dimen.rec_sequence_text_margin_width), 0, this.getResources().getDimensionPixelSize(R.dimen.rec_sequence_text_margin_width), 0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)this.mTimeContainer.getLayoutParams();
        layoutParams.width = -2;
        this.mTimeContainer.setLayoutParams(layoutParams);
        this.mSequenceRec.setVisibility(n2);
    }

    public void setOrientation(int n) {
        this.mDisplayOrientation = n;
        this.updateLayout();
    }

    public void setSequenceMode(boolean bl) {
        this.mIsSequence = bl;
    }

    public void setVisible(boolean bl) {
        if (bl) {
            if (this.mIsConstraint) {
                this.mConstraintIndicator.setVisibility(0);
                this.mUnConstraintIndicator.setVisibility(8);
                this.mSequenceIndicator.setVisibility(8);
                return;
            }
            if (this.mIsSequence) {
                this.mConstraintIndicator.setVisibility(8);
                this.mUnConstraintIndicator.setVisibility(8);
                this.mSequenceIndicator.setVisibility(0);
                return;
            }
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(0);
            this.mSequenceIndicator.setVisibility(8);
            return;
        }
        this.mConstraintIndicator.setVisibility(8);
        this.mUnConstraintIndicator.setVisibility(8);
        this.mSequenceIndicator.setVisibility(8);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateRecordingTime(int n) {
        int n2;
        String string;
        this.mRecordingTime.update(n);
        if (this.mRecordingTime.hour < 1) {
            this.mStringFormatRecordingTime = this.getContext().getString(R.string.cam_status_recoding_time_format_txt);
            string = String.format(Locale.US, this.mStringFormatRecordingTime, this.mRecordingTime.min, this.mRecordingTime.sec);
            n2 = this.getContext().getResources().getDimensionPixelSize(R.dimen.rec_record_time_width);
        } else {
            this.mStringFormatRecordingTime = this.getContext().getString(R.string.cam_status_recoding_hours_time_format_txt);
            string = String.format(Locale.US, this.mStringFormatRecordingTime, this.mRecordingTime.hour, this.mRecordingTime.min, this.mRecordingTime.sec);
            n2 = this.getContext().getResources().getDimensionPixelSize(R.dimen.rec_record_hours_time_width);
        }
        if (this.mIsConstraint) {
            this.mConstraintRecordingTimeText.setText((CharSequence)string);
            this.mConstraintRecordingTimeText.getLayoutParams().width = n2;
            this.updateProgressbar(n);
            return;
        }
        if (this.mIsSequence) {
            this.mSequenceRecordingTimeText.setText((CharSequence)string);
            this.mSequenceRecordingTimeText.getLayoutParams().width = n2;
            return;
        }
        this.mUnConstraintRecordingTimeText.setText((CharSequence)string);
        this.mUnConstraintRecordingTimeText.getLayoutParams().width = n2;
    }
}

