/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

class PlayIconResources {
    PlayIconResources() {
    }

    public static int get(Content.ContentsType contentsType) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType[contentsType.ordinal()]) {
            default: {
                return -1;
            }
            case 1: {
                return R.drawable.cam_photo_stack_video_icn;
            }
            case 2: 
        }
        return R.drawable.cam_photo_stack_soundphoto_icn;
    }

}

