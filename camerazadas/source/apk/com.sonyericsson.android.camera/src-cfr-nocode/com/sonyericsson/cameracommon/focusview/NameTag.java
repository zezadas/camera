/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 */
public class NameTag
extends TextView {
    private static final String BLANK_FOR_IMAGE_WIDTH = " ";
    private static final int TEXTSIZE_FOR_IMAGE_HEIGHT = 12;
    private static final int TEXTSIZE_NORMAL = 12;
    private NameTagOnClickListener mListener;
    private String mName;
    private View.OnTouchListener mTouchListener;

    public NameTag(Context var1);

    public NameTag(Context var1, AttributeSet var2);

    public NameTag(Context var1, AttributeSet var2, int var3);

    public String getName();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public void setName(String var1);

    public void setOnTagClickListener(NameTagOnClickListener var1);

    public static interface NameTagOnClickListener {
        public void onTagClick(View var1);
    }

}

