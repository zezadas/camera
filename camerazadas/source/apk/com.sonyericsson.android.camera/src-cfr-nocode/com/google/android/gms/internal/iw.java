/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/*
 * Exception performing whole class analysis.
 */
public final class iw
extends Drawable
implements Drawable.Callback {
    private boolean KL;
    private int KR;
    private long KS;
    private int KT;
    private int KU;
    private int KV;
    private int KW;
    private boolean KX;
    private b KY;
    private Drawable KZ;
    private Drawable La;
    private boolean Lb;
    private boolean Lc;
    private boolean Ld;
    private int Le;
    private int mFrom;

    public iw(Drawable var1, Drawable var2);

    iw(b var1);

    public boolean canConstantState();

    @Override
    public void draw(Canvas var1);

    public Drawable gK();

    @Override
    public int getChangingConfigurations();

    @Override
    public Drawable.ConstantState getConstantState();

    @Override
    public int getIntrinsicHeight();

    @Override
    public int getIntrinsicWidth();

    @Override
    public int getOpacity();

    @Override
    public void invalidateDrawable(Drawable var1);

    @Override
    public Drawable mutate();

    @Override
    protected void onBoundsChange(Rect var1);

    @Override
    public void scheduleDrawable(Drawable var1, Runnable var2, long var3);

    @Override
    public void setAlpha(int var1);

    @Override
    public void setColorFilter(ColorFilter var1);

    public void startTransition(int var1);

    @Override
    public void unscheduleDrawable(Drawable var1, Runnable var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class com.google.android.gms.internal.iw$a
    extends Drawable {
        private static final com.google.android.gms.internal.iw$a Lf;
        private static final a Lg;

        static;

        private com.google.android.gms.internal.iw$a();

        static /* synthetic */ com.google.android.gms.internal.iw$a gL();

        @Override
        public void draw(Canvas var1);

        @Override
        public Drawable.ConstantState getConstantState();

        @Override
        public int getOpacity();

        @Override
        public void setAlpha(int var1);

        @Override
        public void setColorFilter(ColorFilter var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static final class a
        extends Drawable.ConstantState {
            private a();

            /* synthetic */ a( var1);

            @Override
            public int getChangingConfigurations();

            @Override
            public Drawable newDrawable();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class b
    extends Drawable.ConstantState {
        int Lh;
        int Li;

        b(b var1);

        @Override
        public int getChangingConfigurations();

        @Override
        public Drawable newDrawable();
    }

}

