/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

/*
 * Exception performing whole class analysis.
 */
public class ShortcutLayoutCoordinator
implements LayoutCoordinator {
    private final Rect mAnchorRect;
    private final Rect mContainerRect;
    private int mDialogHeight;
    public Rect mDialogRect;
    private int mDialogWidth;
    private final boolean mIsTablet;
    private final int mMaxHeightMargin;
    private final SettingDialogBasic mView;

    public ShortcutLayoutCoordinator(SettingDialogBasic var1, Rect var2, Rect var3);

    private void coordinatePositionPhone(int var1);

    private void coordinatePositionTablet(int var1);

    private boolean isPortrait(int var1);

    @Override
    public void coordinatePosition(int var1);

    @Override
    public void coordinateSize(int var1);

    @Override
    public Rect getDialogRect();
}

