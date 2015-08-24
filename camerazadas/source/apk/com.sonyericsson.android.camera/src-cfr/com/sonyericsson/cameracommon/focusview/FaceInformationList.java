/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.focusview;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class FaceInformationList {
    private static final String TAG = FaceInformationList.class.getSimpleName();
    private List<NamedFace> mNamedFaceList = new ArrayList<NamedFace>();
    private boolean mUseSmileGuage = false;
    private String mUserTouchUuid = null;

    public static void dumpFaceInformationList(FaceInformationList object) {
        if (object == null) {
            CameraLogger.v(TAG, "dumpFaceInformationList() argument is null");
            return;
        }
        CameraLogger.v(TAG, "dumpFaceInformationList use smile guage = " + object.isUseSmileGuage());
        CameraLogger.v(TAG, "################");
        for (NamedFace namedFace : object.getNamedFaceList()) {
            CameraLogger.v(TAG, " name = " + namedFace.mName + " UUID = " + namedFace.mUuid + " position = " + namedFace.mFacePosition + " smileScore = " + namedFace.mSmileScore);
        }
        CameraLogger.v(TAG, "################");
    }

    public void addNamedFace(NamedFace namedFace) {
        this.mNamedFaceList.add(namedFace);
    }

    public void addNamedFaceList(List<NamedFace> list) {
        this.mNamedFaceList.addAll(list);
    }

    public void clearNamedFaceList() {
        this.mNamedFaceList.clear();
    }

    public NamedFace getNamedFace(int n) {
        if (this.mNamedFaceList.size() <= n) {
            CameraLogger.e(TAG, "getNamedFace index overflow index = " + n);
            return null;
        }
        return this.mNamedFaceList.get(n);
    }

    public NamedFace getNamedFaceByUuid(String string) {
        NamedFace namedFace;
        NamedFace namedFace2 = null;
        Iterator<NamedFace> iterator = this.mNamedFaceList.iterator();
        do {
            namedFace = namedFace2;
            if (!iterator.hasNext()) break;
            namedFace = iterator.next();
        } while (!namedFace.mUuid.equals(string));
        return namedFace;
    }

    public List<NamedFace> getNamedFaceList() {
        return this.mNamedFaceList;
    }

    public String getUserSelectedUuid() {
        return this.mUserTouchUuid;
    }

    public boolean isUseSmileGuage() {
        return this.mUseSmileGuage;
    }

    public void setNamedFaceList(List<NamedFace> list) {
        this.mNamedFaceList = list;
    }

    public void setUseSmileGuage(boolean bl) {
        this.mUseSmileGuage = bl;
    }

    public void setUserTouchUuid(String string) {
        this.mUserTouchUuid = string;
    }
}

