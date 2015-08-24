/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.focusview.NameTag;

/*
 * Exception performing whole class analysis.
 */
public class TagFrame
extends RelativeLayout {
    private NameTag mNameTag;

    public TagFrame(Context var1);

    public TagFrame(Context var1, AttributeSet var2);

    public TagFrame(Context var1, AttributeSet var2, int var3);

    public String getName();

    @Override
    protected void onFinishInflate();

    public void setName(String var1);

    public void setOnTagClickListener(NameTag.NameTagOnClickListener var1);

    @Override
    public void setVisibility(int var1);
}

