/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;
import java.util.List;

public interface MultiFramePresenter {
    public void addFrameId(String var1);

    public void deleteFrameId(String var1);

    public void endAdjustLayout(boolean var1);

    public List<String> getFrameIdList();

    public TouchActionTranslator.TouchActionListener getTouchActionListener();

    public void onPause();

    public void onResume();

    public void release();

    public void startAdjustLayout(boolean var1);

    public void swapSortOrder(String var1, String var2);
}

