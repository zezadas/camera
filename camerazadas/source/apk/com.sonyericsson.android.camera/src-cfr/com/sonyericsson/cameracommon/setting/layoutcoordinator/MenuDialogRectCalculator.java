/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;

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

    /*
     * Enabled aggressive block sorting
     */
    public MenuDialogRectCalculator(Context object, Rect rect, int n, int n2) {
        this.mContext = object;
        object = object.getResources();
        this.mPadding = object.getDimensionPixelSize(R.dimen.menu_dialog_padding);
        this.mDividerHeight = object.getDimensionPixelSize(R.dimen.divider_height);
        this.mTabHeight = object.getDimensionPixelSize(R.dimen.setting_group_tab_height);
        this.mWidth = object.getDimensionPixelSize(R.dimen.setting_dialog_menu_width);
        this.mItemHeight = object.getDimensionPixelSize(R.dimen.menu_dialog_item_height);
        this.mBounds = rect;
        this.mIsTablet = LayoutDependencyResolver.isTablet(this.mContext);
        int n3 = this.mIsTablet ? object.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_tablet) : object.getDimensionPixelSize(R.dimen.setting_dialog_menu_max_height_margin_phone);
        this.mMaxHeightMargin = n3;
        this.mMenuDialogRowCount = n;
        this.mNumberOfTabs = n2;
    }

    private Point computePositionForPhone(int n) {
        if (this.isPortrait(n)) {
            return new Point(this.mBounds.left, this.mBounds.top + (this.mBounds.height() - this.computeWidth(n)) / 2);
        }
        return new Point(this.mBounds.left, this.mBounds.top + (this.mBounds.height() - this.computeHeight(n)) / 2);
    }

    private Point computePositionForTablet(int n) {
        int n2 = LayoutDependencyResolver.getLeftItemCount(this.mContext);
        int n3 = this.mContext.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        n2 = (this.mBounds.height() / n2 - n3) / 2;
        if (this.isPortrait(n)) {
            return new Point(this.mBounds.left, this.mBounds.bottom - n2 - this.computeWidth(n));
        }
        return new Point(this.mBounds.left, this.mBounds.bottom - n2 - this.computeHeight(n));
    }

    /*
     * Enabled aggressive block sorting
     */
    private int getNumRows(int n) {
        n = this.mNumberOfTabs < 2 ? (n - this.mMaxHeightMargin - this.mPadding * 2 + this.mDividerHeight) / (this.mItemHeight + this.mDividerHeight) : (n - this.mMaxHeightMargin - this.mPadding * 2 - this.mTabHeight + this.mDividerHeight) / (this.mItemHeight + this.mDividerHeight);
        int n2 = n;
        if (this.mMenuDialogRowCount <= 0) return n2;
        n2 = n;
        if (this.mMenuDialogRowCount >= n) return n2;
        return this.mMenuDialogRowCount;
    }

    private boolean isPortrait(int n) {
        if (n == 1) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int computeHeight(int n) {
        n = this.isPortrait(n) ? this.mBounds.width() : this.mBounds.height();
        n = this.getNumRows(n);
        if (this.mNumberOfTabs < 2) {
            return this.mItemHeight * n + this.mPadding * 2 + this.mDividerHeight * n;
        }
        return this.mItemHeight * n + this.mPadding * 2 + this.mTabHeight + this.mDividerHeight * n;
    }

    public Point computePosition(int n) {
        if (this.mIsTablet) {
            return this.computePositionForTablet(n);
        }
        return this.computePositionForPhone(n);
    }

    public int computeWidth(int n) {
        return this.mWidth;
    }
}

