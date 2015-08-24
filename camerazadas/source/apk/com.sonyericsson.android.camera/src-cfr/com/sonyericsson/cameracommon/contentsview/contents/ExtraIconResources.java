/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

class ExtraIconResources {
    ExtraIconResources() {
    }

    public static int get(Content.ContentsType contentsType) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType[contentsType.ordinal()]) {
            default: {
                return -1;
            }
            case 1: {
                return R.drawable.cam_photo_stack_burst_icn;
            }
            case 2: {
                return R.drawable.cam_photo_stack_timeshift_icn;
            }
            case 3: {
                return R.drawable.cam_photo_stack_timeshift_video_hummingbird_icn;
            }
            case 4: {
                return R.drawable.cam_photo_stack_timeshift_video_120fps_icn;
            }
            case 5: 
        }
        return R.drawable.cam_photo_stack_4k_icn;
    }

}

