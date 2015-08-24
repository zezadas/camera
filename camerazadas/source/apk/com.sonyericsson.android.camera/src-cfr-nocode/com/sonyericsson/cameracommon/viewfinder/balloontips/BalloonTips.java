/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.balloontips;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;

/*
 * Exception performing whole class analysis.
 */
public class BalloonTips
extends RelativeLayout {
    RelativeLayout mBalloonTips;
    CommonSettings mCommonSettings;
    private int mDistanceToModeSelector;
    private boolean mIsBalloonTipsOpen;
    private int mLandscapePosition;

    public BalloonTips(Context var1, AttributeSet var2);

    private void ajustHeightMargin();

    private int getBalloonTipsBottomMargin(int var1);

    public void hide();

    public boolean isBalloonTipsEnabled();

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    public void releaseBalloonTips();

    public void rotateBalloonTips();

    public void setBalloonTipsOrientation(int var1);

    public void setContentsText(int var1);

    public void setTitleText(int var1);

    public void setupBalloonTips(CommonSettings var1, int var2, boolean var3);

    public void setupBalloonTips(CommonSettings var1, boolean var2);

    public void show();

    public void stopBalloonTipsCounter();
}

