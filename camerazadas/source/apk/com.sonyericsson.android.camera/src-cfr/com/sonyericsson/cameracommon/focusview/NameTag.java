/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

public class NameTag
extends TextView {
    private static final String BLANK_FOR_IMAGE_WIDTH = " ";
    private static final int TEXTSIZE_FOR_IMAGE_HEIGHT = 12;
    private static final int TEXTSIZE_NORMAL = 12;
    private NameTagOnClickListener mListener;
    private String mName;
    private View.OnTouchListener mTouchListener;

    public NameTag(Context context) {
        super(context);
        this.mTouchListener = new View.OnTouchListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    return false;
                }
                if (motionEvent.getAction() != 1) return false;
                return false;
            }
        };
    }

    public NameTag(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchListener = new ;
    }

    public NameTag(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.mTouchListener = new ;
    }

    public String getName() {
        return this.mName;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {
                return super.onTouchEvent(motionEvent);
            }
            case 0: {
                return true;
            }
            case 1: 
        }
        if (this.mListener == null) return super.onTouchEvent(motionEvent);
        this.mListener.onTagClick(this);
        return super.onTouchEvent(motionEvent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setName(String string) {
        this.mName = string;
        if (this.mName != null && this.mName.length() != 0) {
            this.setText((CharSequence)string);
            this.setTextSize(12.0f);
            this.setOnTouchListener(this.mTouchListener);
        } else {
            this.setVisibility(4);
            this.setText((CharSequence)" ");
            this.setTextSize(12.0f);
            this.setOnTouchListener(null);
        }
        this.requestLayout();
        this.invalidate();
    }

    public void setOnTagClickListener(NameTagOnClickListener nameTagOnClickListener) {
        this.mListener = nameTagOnClickListener;
    }

    public static interface NameTagOnClickListener {
        public void onTagClick(View var1);
    }

}

