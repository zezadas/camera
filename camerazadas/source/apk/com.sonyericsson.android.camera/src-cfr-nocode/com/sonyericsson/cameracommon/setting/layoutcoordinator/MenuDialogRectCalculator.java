/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;

/*
 * Exception performing whole class analysis.
 */
class MenuDialogRectCalculator {
    private final Rect mBounds;
    private final Context mContext;
    private final int mDividerHeight;
    private final boolean mIsTablet;
    private final int mItemHeight;
    private final int mMaxHeightMargin;
    private int mMenuDialogRowCount;
    private int mNumberOfTabs;
    private final int mPadding;
    private final int mTabHeight;
    private final int mWidth;

    public MenuDialogRectCalculator(Context var1, Rect var2, int var3, int var4);

    private Point computePositionForPhone(int var1);

    private Point computePositionForTablet(int var1);

    private int getNumRows(int var1);

    private boolean isPortrait(int var1);

    public int computeHeight(int var1);

    public Point computePosition(int var1);

    public int computeWidth(int var1);
}

