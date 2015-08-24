/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

class NoSaveStateFrameLayout
extends FrameLayout {
    public NoSaveStateFrameLayout(Context var1);

    static ViewGroup wrap(View var0);

    @Override
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> var1);

    @Override
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> var1);
}

