/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.MenuDialogRectCalculator;

/*
 * Exception performing whole class analysis.
 */
public class MenuLayoutCoordinator
implements LayoutCoordinator {
    public Rect mDialogRect;
    private final MenuDialogRectCalculator mMenuDialogRectCalculator;
    private final SettingTabDialogBasic mView;

    public MenuLayoutCoordinator(SettingTabDialogBasic var1, Rect var2, int var3);

    @Override
    public void coordinatePosition(int var1);

    @Override
    public void coordinateSize(int var1);

    @Override
    public Rect getDialogRect();
}

