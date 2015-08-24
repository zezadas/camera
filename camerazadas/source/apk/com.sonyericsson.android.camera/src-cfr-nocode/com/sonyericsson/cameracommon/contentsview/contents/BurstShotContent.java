/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.contentsview.contents.Content;

public class BurstShotContent
extends Content {
    public static final int COUNT_UP_MAX_NUM = 999;

    public BurstShotContent(Content.ContentInfo var1);

    private String createCountText(int var1);

    @Override
    public int getExtraIconResourceId();

    @Override
    public boolean shouldShowExtraIcon();

    @Override
    public boolean shouldShowPlayableIcon();
}

