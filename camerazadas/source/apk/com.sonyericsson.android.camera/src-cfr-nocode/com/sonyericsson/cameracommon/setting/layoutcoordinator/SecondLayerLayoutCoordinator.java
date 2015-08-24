/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.MenuDialogRectCalculator;

/*
 * Exception performing whole class analysis.
 */
public class SecondLayerLayoutCoordinator
implements LayoutCoordinator {
    private final Rect mAnchor;
    private final Rect mBounds;
    private int mDialogHeight;
    public Rect mDialogRect;
    private int mDialogWidth;
    private final MenuDialogRectCalculator mMenuDialogRectCalculator;
    private final int mTopMargin;
    private final SettingDialogBasic mView;

    public SecondLayerLayoutCoordinator(SettingDialogBasic var1, Rect var2, Rect var3, int var4, int var5);

    private boolean isPortrait(int var1);

    @Override
    public void coordinatePosition(int var1);

    @Override
    public void coordinateSize(int var1);

    @Override
    public Rect getDialogRect();
}

