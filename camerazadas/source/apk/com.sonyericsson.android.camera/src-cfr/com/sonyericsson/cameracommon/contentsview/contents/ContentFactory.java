/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.contentsview.contents.BurstShotContent;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.contentsview.contents.ExtraIconResources;
import com.sonyericsson.cameracommon.contentsview.contents.PlayIconResources;

public class ContentFactory {
    private static final String TAG = ContentFactory.class.getSimpleName();

    public static Content create(Content.ContentInfo contentInfo) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType[contentInfo.mContentType.ordinal()]) {
            default: {
                return new Content(contentInfo, ExtraIconResources.get(contentInfo.mContentType), PlayIconResources.get(contentInfo.mContentType));
            }
            case 1: 
        }
        return new BurstShotContent(contentInfo);
    }

}

