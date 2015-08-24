/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.cameracommon.focusview.NamedFace;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FaceInformationList {
    private static final String TAG;
    private List<NamedFace> mNamedFaceList;
    private boolean mUseSmileGuage;
    private String mUserTouchUuid;

    static;

    public FaceInformationList();

    public static void dumpFaceInformationList(FaceInformationList var0);

    public void addNamedFace(NamedFace var1);

    public void addNamedFaceList(List<NamedFace> var1);

    public void clearNamedFaceList();

    public NamedFace getNamedFace(int var1);

    public NamedFace getNamedFaceByUuid(String var1);

    public List<NamedFace> getNamedFaceList();

    public String getUserSelectedUuid();

    public boolean isUseSmileGuage();

    public void setNamedFaceList(List<NamedFace> var1);

    public void setUseSmileGuage(boolean var1);

    public void setUserTouchUuid(String var1);
}

