/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/*
 * Exception performing whole class analysis.
 */
public class ScaleLayoutAnimation
extends Animation {
    private int mDiffHeight;
    private int mDiffWidth;
    private int mFromHeight;
    private int mFromWidth;
    private int mOriginalHeight;
    private int mOriginalWidth;
    private int mToHeight;
    private int mToWidth;
    View mView;

    private ScaleLayoutAnimation();

    /* synthetic */ ScaleLayoutAnimation( var1);

    static /* synthetic */ int access$102(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$202(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$300(ScaleLayoutAnimation var0);

    static /* synthetic */ int access$302(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$400(ScaleLayoutAnimation var0);

    static /* synthetic */ int access$402(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$500(ScaleLayoutAnimation var0);

    static /* synthetic */ int access$502(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$600(ScaleLayoutAnimation var0);

    static /* synthetic */ int access$602(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$702(ScaleLayoutAnimation var0, int var1);

    static /* synthetic */ int access$802(ScaleLayoutAnimation var0, int var1);

    private void prepareSize();

    @Override
    protected void applyTransformation(float var1, Transformation var2);

    @Override
    public void initialize(int var1, int var2, int var3, int var4);

    public void recycle();

    public void resetSize();

    @Override
    public boolean willChangeBounds();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private ScaleLayoutAnimation mParentInstance;

        public Builder(View var1);

        public ScaleLayoutAnimation create();

        public Builder setDuration(int var1);

        public Builder setFromSize(int var1, int var2);

        public Builder setToSize(int var1, int var2);
    }

}

