/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/*
 * Exception performing whole class analysis.
 */
public class RecordingProgressBar
extends ImageView {
    private int mProgressBarWidth;
    private Drawable mProgressIcon;
    private int mProgressRatio;

    public RecordingProgressBar(Context var1);

    public RecordingProgressBar(Context var1, AttributeSet var2);

    public RecordingProgressBar(Context var1, AttributeSet var2, int var3);

    public int getProgress();

    @Override
    protected void onDraw(Canvas var1);

    @Override
    protected void onFinishInflate();

    public void setProgress(int var1, int var2);
}

