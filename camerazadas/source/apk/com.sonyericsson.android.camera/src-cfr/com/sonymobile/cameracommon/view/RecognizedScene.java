/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 */
package com.sonymobile.cameracommon.view;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameraextension.CameraExtension;

public class RecognizedScene {
    final int mIconId;
    final CameraExtension.SceneMode mSceneMode;
    final int mTextId;

    private RecognizedScene(CameraExtension.SceneMode sceneMode, int n, int n2) {
        this.mSceneMode = sceneMode;
        this.mIconId = n;
        this.mTextId = n2;
    }

    public static RecognizedScene create(CameraExtension.SceneMode sceneMode) {
        if (sceneMode == null) {
            return new RecognizedScene(null, -1, -1);
        }
        switch (.$SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[sceneMode.ordinal()]) {
            default: {
                return new RecognizedScene(sceneMode, -1, -1);
            }
            case 1: {
                return new RecognizedScene(sceneMode, -1, -1);
            }
            case 2: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_softsnap_icn, R.string.cam_strings_scenes_auto_recog_softsnap_cy_txt);
            }
            case 3: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_landscape_icn, R.string.cam_strings_scenes_auto_recog_landscape_txt);
            }
            case 4: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_night_icn, R.string.cam_strings_scenes_auto_recog_twilight_txt);
            }
            case 5: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_night_portrait_icn, R.string.cam_strings_scenes_auto_recog_twilight_portrait_cy_txt);
            }
            case 6: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_backlight_icn, R.string.cam_strings_scenes_auto_recog_backlight_txt);
            }
            case 7: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_backlight_portrait_icn, R.string.cam_strings_scenes_auto_recog_backlight_portrait_cy_txt);
            }
            case 8: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_document_icn, R.string.cam_strings_scenes_auto_recog_text_txt);
            }
            case 9: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_super_low_light_icn, R.string.cam_strings_scenes_auto_recog_low_light_cy_txt);
            }
            case 10: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_infant_icn, R.string.cam_strings_scenes_auto_recog_infant_cy_txt);
            }
            case 11: {
                return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_spotlight_icn, R.string.cam_strings_scenes_auto_recog_spotlight_cy_txt);
            }
            case 12: 
        }
        return new RecognizedScene(sceneMode, R.drawable.cam_scene_recog_gourmet_icn, R.string.cam_strings_scenes_auto_recog_gourmet_txt);
    }

    public int getIconId() {
        return this.mIconId;
    }

    public CameraExtension.SceneMode getSceneMode() {
        return this.mSceneMode;
    }

    public int getTextId() {
        return this.mTextId;
    }

}

