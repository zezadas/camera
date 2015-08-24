/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.google.android.gms.internal.kc;

public final class iw
extends Drawable
implements Drawable.Callback {
    private boolean KL = true;
    private int KR = 0;
    private long KS;
    private int KT;
    private int KU = 255;
    private int KV;
    private int KW = 0;
    private boolean KX;
    private b KY;
    private Drawable KZ;
    private Drawable La;
    private boolean Lb;
    private boolean Lc;
    private boolean Ld;
    private int Le;
    private int mFrom;

    public iw(Drawable object, Drawable object2) {
        this(null);
        Drawable drawable = object;
        if (object == null) {
            drawable = Lf;
        }
        this.KZ = drawable;
        drawable.setCallback(this);
        object = this.KY;
        object.Li|=drawable.getChangingConfigurations();
        object = object2;
        if (object2 == null) {
            object = Lf;
        }
        this.La = object;
        object.setCallback(this);
        object2 = this.KY;
        object2.Li|=object.getChangingConfigurations();
    }

    iw(b b) {
        this.KY = new b(b);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean canConstantState() {
        if (!this.Lb) {
            boolean bl = this.KZ.getConstantState() != null && this.La.getConstantState() != null;
            this.Lc = bl;
            this.Lb = true;
        }
        return this.Lc;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void draw(Canvas canvas) {
        int n = 1;
        int n2 = 1;
        int n3 = 0;
        switch (this.KR) {
            case 1: {
                this.KS = SystemClock.uptimeMillis();
                this.KR = 2;
                n2 = n3;
                break;
            }
            case 2: {
                if (this.KS < 0) break;
                float f = (float)(SystemClock.uptimeMillis() - this.KS) / (float)this.KV;
                n2 = f >= 1.0f ? n : 0;
                if (n2 != 0) {
                    this.KR = 0;
                }
                f = Math.min(f, 1.0f);
                float f2 = this.mFrom;
                this.KW = (int)(f * (float)(this.KT - this.mFrom) + f2);
            }
        }
        n = this.KW;
        boolean bl = this.KL;
        Drawable drawable = this.KZ;
        Drawable drawable2 = this.La;
        if (n2 != 0) {
            if (!(bl && n != 0)) {
                drawable.draw(canvas);
            }
            if (n == this.KU) {
                drawable2.setAlpha(this.KU);
                drawable2.draw(canvas);
            }
            return;
        }
        if (bl) {
            drawable.setAlpha(this.KU - n);
        }
        drawable.draw(canvas);
        if (bl) {
            drawable.setAlpha(this.KU);
        }
        if (n > 0) {
            drawable2.setAlpha(n);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.KU);
        }
        this.invalidateSelf();
    }

    public Drawable gK() {
        return this.La;
    }

    @Override
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.KY.Lh | this.KY.Li;
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        if (this.canConstantState()) {
            this.KY.Lh = this.getChangingConfigurations();
            return this.KY;
        }
        return null;
    }

    @Override
    public int getIntrinsicHeight() {
        return Math.max(this.KZ.getIntrinsicHeight(), this.La.getIntrinsicHeight());
    }

    @Override
    public int getIntrinsicWidth() {
        return Math.max(this.KZ.getIntrinsicWidth(), this.La.getIntrinsicWidth());
    }

    @Override
    public int getOpacity() {
        if (!this.Ld) {
            this.Le = Drawable.resolveOpacity(this.KZ.getOpacity(), this.La.getOpacity());
            this.Ld = true;
        }
        return this.Le;
    }

    @Override
    public void invalidateDrawable(Drawable object) {
        if (kc.hB() && (object = this.getCallback()) != null) {
            object.invalidateDrawable(this);
        }
    }

    @Override
    public Drawable mutate() {
        if (!(this.KX || super.mutate() != this)) {
            if (!this.canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.KZ.mutate();
            this.La.mutate();
            this.KX = true;
        }
        return this;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        this.KZ.setBounds(rect);
        this.La.setBounds(rect);
    }

    @Override
    public void scheduleDrawable(Drawable object, Runnable runnable, long l) {
        if (kc.hB() && (object = this.getCallback()) != null) {
            object.scheduleDrawable(this, runnable, l);
        }
    }

    @Override
    public void setAlpha(int n) {
        if (this.KW == this.KU) {
            this.KW = n;
        }
        this.KU = n;
        this.invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.KZ.setColorFilter(colorFilter);
        this.La.setColorFilter(colorFilter);
    }

    public void startTransition(int n) {
        this.mFrom = 0;
        this.KT = this.KU;
        this.KW = 0;
        this.KV = n;
        this.KR = 1;
        this.invalidateSelf();
    }

    @Override
    public void unscheduleDrawable(Drawable object, Runnable runnable) {
        if (kc.hB() && (object = this.getCallback()) != null) {
            object.unscheduleDrawable(this, runnable);
        }
    }

    private static final class com.google.android.gms.internal.iw$a
    extends Drawable {
        private static final com.google.android.gms.internal.iw$a Lf = new com.google.android.gms.internal.iw$a();
        private static final a Lg = new a();

        private com.google.android.gms.internal.iw$a() {
        }

        @Override
        public void draw(Canvas canvas) {
        }

        @Override
        public Drawable.ConstantState getConstantState() {
            return Lg;
        }

        @Override
        public int getOpacity() {
            return -2;
        }

        @Override
        public void setAlpha(int n) {
        }

        @Override
        public void setColorFilter(ColorFilter colorFilter) {
        }

        private static final class a
        extends Drawable.ConstantState {
            private a() {
            }

            @Override
            public int getChangingConfigurations() {
                return 0;
            }

            @Override
            public Drawable newDrawable() {
                return Lf;
            }
        }

    }

    static final class b
    extends Drawable.ConstantState {
        int Lh;
        int Li;

        b(b b) {
            if (b != null) {
                this.Lh = b.Lh;
                this.Li = b.Li;
            }
        }

        @Override
        public int getChangingConfigurations() {
            return this.Lh;
        }

        @Override
        public Drawable newDrawable() {
            return new iw(this);
        }
    }

}

