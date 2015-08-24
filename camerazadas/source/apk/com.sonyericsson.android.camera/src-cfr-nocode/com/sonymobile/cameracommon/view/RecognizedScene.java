/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 */
package com.sonymobile.cameracommon.view;

import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Exception performing whole class analysis.
 */
public class RecognizedScene {
    final int mIconId;
    final CameraExtension.SceneMode mSceneMode;
    final int mTextId;

    private RecognizedScene(CameraExtension.SceneMode var1, int var2, int var3);

    public static RecognizedScene create(CameraExtension.SceneMode var0);

    public int getIconId();

    public CameraExtension.SceneMode getSceneMode();

    public int getTextId();

}

