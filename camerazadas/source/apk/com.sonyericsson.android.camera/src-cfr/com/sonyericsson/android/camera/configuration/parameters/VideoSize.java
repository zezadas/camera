/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import android.media.CamcorderProfile;
import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.CameraSize;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.MaxVideoSize;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.util.capability.ResolutionOptions;
import com.sonyericsson.android.camera.util.capability.UxOptions;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public enum VideoSize implements ParameterValue
{
    FOUR_K_UHD(-1, -1, new Rect(0, 0, 3840, 2160), false, 6, 1, 30),
    FULL_HD_60FPS(-1, 2131296683, new Rect(0, 0, 1920, 1080), false, 6, 1, 60),
    FULL_HD(-1, 2131296684, new Rect(0, 0, 1920, 1080), false, 6, 1, 30),
    HD(-1, 2131296685, new Rect(0, 0, 1280, 720), false, 5, 1, 30),
    FWVGA(-1, -1, new Rect(0, 0, 864, 480), false, 1, 1, 30),
    VGA(-1, 2131296686, new Rect(0, 0, 640, 480), false, 4, 1, 30),
    QVGA(-1, 2131296687, new Rect(0, 0, 320, 240), false, 7, 1, 30),
    MMS(-1, 2131296364, new Rect(0, 0, 176, 144), true, 2, 0, 15);
    
    private static final String TAG = "VideoSize";
    private static final int sParameterTextId = 2131296453;
    private long mAverageFileSize;
    private final int mDefaultFrameRate;
    private final int mDefaultQuality;
    private final int mIconId;
    private final boolean mIsConstraint;
    private long mMinFileSize;
    private int mTextId;
    private VideoProfile mVideoProfile;
    private Rect mVideoRect;

    private VideoSize(int n2, int n3, Rect rect, boolean bl, int n4, int n5, int n6) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mVideoRect = rect;
        this.mIsConstraint = bl;
        this.mDefaultQuality = n5;
        this.mDefaultFrameRate = n6;
        this.mVideoProfile = new VideoProfile.Builder().quality(n4, this.mDefaultQuality).frameRate(n6).build();
        if (this.mVideoRect.width() != this.mVideoProfile.getCamcorderProfile().videoFrameWidth || this.mVideoRect.height() != this.mVideoProfile.getCamcorderProfile().videoFrameHeight) {
            double d = (double)this.mVideoRect.width() / (double)this.mVideoProfile.getCamcorderProfile().videoFrameWidth;
            double d2 = (double)this.mVideoRect.height() / (double)this.mVideoProfile.getCamcorderProfile().videoFrameHeight;
            this.mVideoProfile.getCamcorderProfile().videoFrameWidth = this.mVideoRect.width();
            this.mVideoProfile.getCamcorderProfile().videoFrameHeight = this.mVideoRect.height();
            this.mVideoProfile.getCamcorderProfile().videoBitRate = (int)((double)this.mVideoProfile.getCamcorderProfile().videoBitRate * d * d2);
        }
        n = VideoSize.getAudioBitRate(this.mVideoProfile.getCamcorderProfile(), this.mDefaultQuality);
        this.mAverageFileSize = CameraSize.getAverageFileSize(n, this.mVideoProfile.getCamcorderProfile().videoBitRate);
        this.mMinFileSize = CameraSize.getMinFileSize(n, this.mVideoProfile.getCamcorderProfile().videoBitRate);
    }

    private static boolean equals(Rect rect, Rect rect2) {
        if (rect.width() == rect2.width() && rect.height() == rect2.height()) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String findVideoSizeWithConfiguration(Configurations object, CapabilityList capabilityList, VideoSize[] arrvideoSize, StorageController storageController) {
        VideoSize videoSize;
        long l = object.getVideoQuality();
        Object var7_5 = null;
        if (l == 1 && VideoSize.isContents(arrvideoSize, FULL_HD)) {
            videoSize = FULL_HD;
        } else if (l == 5 && VideoSize.isContents(arrvideoSize, HD)) {
            videoSize = HD;
        } else if (l == 0 && VideoSize.isContents(arrvideoSize, MMS)) {
            videoSize = MMS;
        } else {
            videoSize = var7_5;
            if (l == 4) {
                if (VideoSize.isContents(arrvideoSize, FWVGA)) {
                    videoSize = FWVGA;
                } else {
                    videoSize = var7_5;
                    if (VideoSize.isContents(arrvideoSize, VGA)) {
                        videoSize = VGA;
                    }
                }
            }
        }
        if (videoSize == null) {
            return capabilityList.RESOLUTION_CAPABILITY.get().getDefaultVideoSize();
        }
        if ((object = VideoSize.getVideoSizeWithRecordTimeMoreThanGuaranteedTime((Configurations)object, videoSize, arrvideoSize, storageController)) != null) {
            return object.name();
        }
        return capabilityList.RESOLUTION_CAPABILITY.get().getDefaultVideoSize();
    }

    private static int getAudioBitRate(CamcorderProfile camcorderProfile, int n) {
        if (camcorderProfile != null) {
            return camcorderProfile.audioBitRate;
        }
        if (n == 0) {
            return 5000;
        }
        return 128000;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static VideoSize getDefaultValue(ActionMode object, Configurations configurations, StorageController storageController) {
        CapabilityList capabilityList = HardwareCapability.getCapability(object.mCameraId);
        if (object.mIsOneShot) {
            object = VideoSize.findVideoSizeWithConfiguration(configurations, capabilityList, VideoSize.getOptions((ActionMode)object, configurations), storageController);
            do {
                return VideoSize.valueOf((String)object);
                break;
            } while (true);
        }
        object = capabilityList.RESOLUTION_CAPABILITY.get().getDefaultVideoSize();
        return VideoSize.valueOf((String)object);
    }

    private static VideoSize[] getExpectedOptions(String[] arrstring) {
        ArrayList arrayList = new ArrayList();
        if (arrstring != null) {
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                arrayList.add(VideoSize.valueOf(VideoSize.class, arrstring[i]));
            }
        } else {
            return VideoSize.values();
        }
        return arrayList.toArray(new VideoSize[0]);
    }

    private static VideoSize[] getOneShotOptions(String object, List<Rect> list, Configurations configurations) {
        ArrayList<Object> arrayList = new ArrayList<Object>();
        object = VideoSize.valueOf((String)object);
        for (Rect rect : list) {
            if (!VideoSize.equals(object.mVideoRect, rect)) continue;
            if (object == MMS) {
                if (!VideoSize.updateMmsProfile(configurations.getMmsOptions(), list)) continue;
                arrayList.add(object);
                return arrayList.toArray(new VideoSize[0]);
            }
            arrayList.add(object);
            return arrayList.toArray(new VideoSize[0]);
        }
        return arrayList.toArray(new VideoSize[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static VideoSize[] getOptions(ActionMode actionMode, Configurations configurations) {
        CapabilityList capabilityList = HardwareCapability.getCapability(actionMode.mCameraId);
        List<Rect> list = capabilityList.VIDEO_SIZE.get();
        boolean bl = false;
        boolean bl2 = false;
        for (Rect rect : list) {
            if (VideoSize.equals(VideoSize.VGA.mVideoRect, rect)) {
                bl2 = true;
                continue;
            }
            if (!VideoSize.equals(VideoSize.FWVGA.mVideoRect, rect)) continue;
            bl = true;
        }
        Object object = HardwareCapability.getInstance().isFullHdVideoFpsSupported(actionMode.mCameraId, VideoSize.FULL_HD_60FPS.mDefaultFrameRate);
        VideoSize[] arrvideoSize = VideoSize.getExpectedOptions(capabilityList.RESOLUTION_CAPABILITY.get().getVideoSizeOptions());
        ArrayList<VideoSize> arrayList = new ArrayList<VideoSize>();
        int n = arrvideoSize.length;
        int n2 = 0;
        do {
            VideoSize videoSize;
            Iterator<Rect> iterator;
            if (n2 < n) {
                videoSize = arrvideoSize[n2];
                iterator = list.iterator();
            } else {
                if (actionMode.mIsOneShot && (int)configurations.getVideoQuality() == 0) {
                    return VideoSize.getOneShotOptions(capabilityList.UX_CAPABILITY.get().getVideoSizeForOneShot(), list, configurations);
                }
                return arrayList.toArray(new VideoSize[0]);
            }
            block10 : while (iterator.hasNext()) {
                Rect rect2 = iterator.next();
                if (!VideoSize.equals(videoSize.mVideoRect, rect2)) continue;
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
                    default: {
                        arrayList.add(videoSize);
                        continue block10;
                    }
                    case 1: {
                        if (!configurations.isMmsSupported() || !VideoSize.updateMmsProfile(configurations.getMmsOptions(), list)) continue block10;
                        arrayList.add(videoSize);
                        continue block10;
                    }
                    case 2: {
                        if (!object.booleanValue()) continue block10;
                        arrayList.add(videoSize);
                        continue block10;
                    }
                    case 3: 
                }
                videoSize.mTextId = object.booleanValue() ? (actionMode.mCameraId == 0 ? 2131296684 : 2131296682) : 2131296682;
                arrayList.add(videoSize);
            }
            switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
                default: {
                    break;
                }
                case 4: {
                    if (!bl2 || bl) break;
                    arrayList.add(VGA);
                }
            }
            ++n2;
        } while (true);
    }

    public static VideoSize getValueFromFrameSize(int n, int n2) {
        for (VideoSize videoSize : VideoSize.values()) {
            Rect rect = videoSize.getVideoRect();
            if (rect.width() != n || rect.height() != n2) continue;
            return videoSize;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static VideoSize getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Configurations configurations, VideoSize videoSize, VideoSize[] arrvideoSize, StorageController storageController) {
        long l = MaxVideoSize.create(configurations, videoSize, storageController).getMaxDuration();
        if (l == configurations.getVideoMaxDurationInMillisecs() || VideoSize.isContents(arrvideoSize, videoSize) && l >= 3000) {
            return videoSize;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[videoSize.ordinal()]) {
            default: {
                return videoSize;
            }
            case 1: {
                return MMS;
            }
            case 3: {
                return VideoSize.getVideoSizeWithRecordTimeMoreThanGuaranteedTime(configurations, HD, arrvideoSize, storageController);
            }
            case 5: {
                if (VideoSize.isContents(arrvideoSize, FWVGA)) {
                    return VideoSize.getVideoSizeWithRecordTimeMoreThanGuaranteedTime(configurations, FWVGA, arrvideoSize, storageController);
                }
                if (VideoSize.isContents(arrvideoSize, VGA)) {
                    return VideoSize.getVideoSizeWithRecordTimeMoreThanGuaranteedTime(configurations, VGA, arrvideoSize, storageController);
                }
                return VideoSize.getVideoSizeWithRecordTimeMoreThanGuaranteedTime(configurations, MMS, arrvideoSize, storageController);
            }
            case 4: 
            case 6: 
        }
        return VideoSize.getVideoSizeWithRecordTimeMoreThanGuaranteedTime(configurations, MMS, arrvideoSize, storageController);
    }

    private static boolean isContents(VideoSize[] arrvideoSize, VideoSize videoSize) {
        int n = arrvideoSize.length;
        for (int i = 0; i < n; ++i) {
            if (!arrvideoSize[i].equals(videoSize)) continue;
            return true;
        }
        return false;
    }

    private static void log(CamcorderProfile camcorderProfile) {
    }

    public static boolean updateMmsProfile(MmsOptions mmsOptions, List<Rect> object) {
        if ((object = mmsOptions.getRecommendSize((List<Rect>)object)) == null) {
            return false;
        }
        VideoSize.MMS.mVideoRect = object;
        VideoSize.MMS.mVideoProfile = new VideoProfile.Builder().quality(mmsOptions.mQuality).preloadProfile(mmsOptions.mPreloadProfile).outputFormat(mmsOptions.mOutputFormat).build();
        VideoSize.MMS.getVideoProfile().getCamcorderProfile().videoBitRate = mmsOptions.mBitRate;
        VideoSize.MMS.getVideoProfile().getCamcorderProfile().videoFrameWidth = object.width();
        VideoSize.MMS.getVideoProfile().getCamcorderProfile().videoFrameHeight = object.height();
        int n = VideoSize.getAudioBitRate(MMS.getVideoProfile().getCamcorderProfile(), VideoSize.MMS.mDefaultQuality);
        VideoSize.MMS.mAverageFileSize = CameraSize.getAverageFileSize(n, mmsOptions.mBitRate);
        VideoSize.MMS.mMinFileSize = CameraSize.getMinFileSize(n, mmsOptions.mBitRate);
        return true;
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public long getAverageFileSize() {
        return this.mAverageFileSize;
    }

    public int getDefaultQuality() {
        return this.mDefaultQuality;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public long getMinFileSize() {
        return this.mMinFileSize;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.VIDEO_SIZE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296453;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @Override
    public String getValue() {
        return this.toString();
    }

    public int getVideoFrameRate() {
        CamcorderProfile camcorderProfile = this.getVideoProfile().getCamcorderProfile();
        if (camcorderProfile != null) {
            return camcorderProfile.videoFrameRate;
        }
        return this.mDefaultFrameRate;
    }

    public VideoProfile getVideoProfile() {
        return this.mVideoProfile;
    }

    public Rect getVideoRect() {
        return this.mVideoRect;
    }

    public boolean isConstraint() {
        return this.mIsConstraint;
    }

    public static class VideoProfile {
        private final CamcorderProfile mCamcorderProfile;
        public final String mExt;
        public final String mMimeType;

        VideoProfile(CamcorderProfile camcorderProfile, String string, String string2) {
            this.mCamcorderProfile = camcorderProfile;
            this.mExt = string;
            this.mMimeType = string2;
        }

        public CamcorderProfile getCamcorderProfile() {
            return this.mCamcorderProfile;
        }

        static class Builder {
            private Integer mFrameRate = null;
            private Integer mInOutputFormat = null;
            private Integer mInQuality = null;
            private boolean mIsProfileLoaded = false;
            private CamcorderProfile mPreloadProfile = null;
            private String mResultExt;
            private String mResultMimeType;

            Builder() {
            }

            private void setupOutputFormatWithFormat(int n) {
                switch (n) {
                    default: {
                        this.mResultExt = ".mp4";
                        this.mResultMimeType = "video/mp4";
                        return;
                    }
                    case 1: 
                }
                this.mResultExt = ".3gp";
                this.mResultMimeType = "video/3gpp";
            }

            private void setupOutputFormatWithQuality(int n) {
                switch (n) {
                    default: {
                        this.mResultExt = ".mp4";
                        this.mResultMimeType = "video/mp4";
                        return;
                    }
                    case 0: 
                    case 2: 
                }
                this.mResultExt = ".3gp";
                this.mResultMimeType = "video/3gpp";
            }

            /*
             * Enabled aggressive block sorting
             */
            VideoProfile build() {
                CamcorderProfile camcorderProfile;
                if (this.mInQuality == null) {
                    throw new IllegalStateException("Don't set parameters.");
                }
                if (this.mIsProfileLoaded) {
                    camcorderProfile = this.mPreloadProfile;
                    this.mPreloadProfile = null;
                } else {
                    CamcorderProfile camcorderProfile2;
                    camcorderProfile = camcorderProfile2 = CamcorderProfile.get(this.mInQuality);
                    if (camcorderProfile2 != null) {
                        camcorderProfile2.videoFrameRate = this.mFrameRate;
                        camcorderProfile = camcorderProfile2;
                        if (camcorderProfile2.quality == 6) {
                            camcorderProfile = camcorderProfile2;
                            if (this.mFrameRate == 60) {
                                camcorderProfile2.videoBitRate = 30000000;
                                camcorderProfile = camcorderProfile2;
                            }
                        }
                    }
                }
                if (this.mInOutputFormat == null) {
                    this.setupOutputFormatWithQuality(this.mInQuality);
                    return new VideoProfile(camcorderProfile, this.mResultExt, this.mResultMimeType);
                }
                this.setupOutputFormatWithFormat(this.mInOutputFormat);
                return new VideoProfile(camcorderProfile, this.mResultExt, this.mResultMimeType);
            }

            Builder frameRate(int n) {
                this.mFrameRate = n;
                return this;
            }

            Builder outputFormat(int n) {
                this.mInOutputFormat = n;
                return this;
            }

            Builder preloadProfile(CamcorderProfile camcorderProfile) {
                this.mPreloadProfile = camcorderProfile;
                this.mIsProfileLoaded = true;
                return this;
            }

            Builder quality(int n) {
                this.mInQuality = n;
                return this;
            }

            Builder quality(int n, int n2) {
                if (CamcorderProfile.hasProfile(n)) {
                    this.mInQuality = n;
                    return this;
                }
                this.mInQuality = n2;
                return this;
            }
        }

    }

}

