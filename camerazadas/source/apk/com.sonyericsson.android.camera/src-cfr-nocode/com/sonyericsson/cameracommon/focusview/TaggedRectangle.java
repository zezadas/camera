/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.focusview.NameTag;
import com.sonyericsson.cameracommon.focusview.Rectangle;
import com.sonyericsson.cameracommon.focusview.SmileGauge;
import com.sonyericsson.cameracommon.focusview.TagFrame;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TaggedRectangle
extends RelativeLayout
implements Rectangle.RectangleOnTouchListener,
NameTag.NameTagOnClickListener {
    public static final int FACEDETECT_CAPTURE = 1;
    public static final int FACERECOGNITION_REVIEW = 2;
    public static final int OBJECT_TRACKING = 3;
    private static final int RECT_SIZE_LIFE_TIME_MILLIS = 300;
    public static final int SMILE_DETECTION_CAPTURE = 0;
    private static final String TAG;
    private int mCurrentType;
    private String mFaceUuid;
    private boolean mIsAbleToTouch;
    private boolean mIsUpdate;
    private long mLastSizeUpdatedTimestamp;
    private NameTag.NameTagOnClickListener mNameTagOnClickListener;
    private Rectangle mRectangle;
    private Rectangle.RectangleOnTouchListener mRectangleOnTouchListener;
    private SmileGauge[] mSmileGauges;
    private TagFrame mTagFrame;

    static;

    public TaggedRectangle(Context var1);

    public TaggedRectangle(Context var1, AttributeSet var2);

    public TaggedRectangle(Context var1, AttributeSet var2, int var3);

    private void adjustNamePosition(View var1, int var2);

    private void adjustNamePositionLandScape(View var1, int var2);

    private void adjustNamePositionPortrait(View var1, int var2);

    private void adjustSmileGaugesForNameTag(int var1);

    private void adjustSmileGaugesForScreenEdge();

    private void adjustSmileGaugesPosition(int var1);

    private boolean alignBottom();

    private boolean alignRight();

    private void clearAllLayoutRules(View var1);

    private void defaultAllMargins(View var1);

    private boolean isNameTagBelow(int var1);

    private boolean isRectSizeAlreadyInvalid();

    private boolean isRefugeSmileGaugeForNameTag(int var1);

    private boolean isSmileGaugeVisible();

    private void moveNameTagAboveLandScape();

    private void moveNameTagAbovePortrait();

    private void moveNameTagBelowLandScape();

    private void moveNameTagBelowPortrait();

    private void moveNameTagCenterLandScape();

    private void moveNameTagLeftLandScape();

    private void moveNameTagLeftPortrait();

    private void moveNameTagRightLandScape();

    private void moveNameTagRightPortrait();

    private void moveNameTagToCenterPortrait();

    private void moveSmileGaugeForAboveNameTagLandscape();

    private void moveSmileGaugeForAboveNameTagPortrait();

    private void moveSmileGaugeForBelowNameTagLandscape();

    private void moveSmileGaugeForBelowNameTagPortrait();

    private void prepare();

    private void rotateNameTagLandScape();

    private void rotateNameTagPortrait();

    private void setAlignBottom();

    private void setAlignRight();

    private void setName(String var1);

    private void setUuid(String var1);

    private void startNameTagAnimation(int var1);

    private void switchRule(View var1, int var2, int var3, int var4);

    public final void changeRectangleResource(int var1);

    public void clearAlignBottom();

    public void clearAlignRight();

    public void clearUpdated();

    public Rect getFaceRect();

    public String getName();

    Rect getNameRect();

    public int getRectangleHeight();

    public int getRectangleLeft();

    public int getRectangleTop();

    public int getRectangleWidth();

    public String getUuid();

    public void hide();

    public void hideNameTag();

    public boolean isUpdate();

    public void moveRectTopLeft(int var1, int var2);

    @Override
    protected void onDetachedFromWindow();

    @Override
    public void onRectTouchCancel(View var1, MotionEvent var2);

    @Override
    public void onRectTouchDown(View var1, MotionEvent var2);

    @Override
    public void onRectTouchLongPress(MotionEvent var1);

    @Override
    public void onRectTouchUp(View var1, MotionEvent var2);

    @Override
    public void onTagClick(View var1);

    public void prepare(int var1);

    public void prepare(int var1, String var2);

    public void prepare(int var1, String var2, Rect var3);

    public final void setDisplayRect(Rect var1);

    public void setIsAbleToTouch(boolean var1);

    public void setNameTagOnClickListener(NameTag.NameTagOnClickListener var1);

    public void setRawPosition(Rect var1);

    public void setRectCenter(int var1, int var2);

    public void setRectImageSize(int var1, int var2);

    public void setRectName(String var1, Rect var2);

    public void setRectOrientation(int var1);

    public void setRectSize(int var1, int var2);

    public void setRectangleOnTouchListener(Rectangle.RectangleOnTouchListener var1);

    public void setSize(int var1, int var2, boolean var3);

    public void setSmileGaugeVisibility(int var1);

    public void setSmileGaugesPosition(int var1, int var2, int var3, int var4, int var5);

    public final void setSmileLevel(int var1);

    public void setSmileScore(int var1);

    public void setUpdated();

    public void startRectangleAnimation(int var1);

    public void startRectanglePressAnimation();

    public void stopAnimation();

    public void updateNameTag(String var1, String var2, View var3, int var4);
}

