/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;

/*
 * Exception performing whole class analysis.
 */
public class ControlLayoutCoordinator
implements LayoutCoordinator {
    private final Rect mAnchorRect;
    private final Rect mContainerRect;
    private final int mDialogHeight;
    public Rect mDialogRect;
    private final int mDialogWidth;
    private final SettingControlDialog mView;

    public ControlLayoutCoordinator(SettingControlDialog var1, Rect var2, Rect var3);

    private void coordinatePositionPhone(int var1);

    private void coordinatePositionTablet(int var1);

    @Override
    public void coordinatePosition(int var1);

    @Override
    public void coordinateSize(int var1);

    @Override
    public Rect getDialogRect();
}

