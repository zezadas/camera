/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.graphics.Rect;
import android.media.CamcorderProfile;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class MmsOptions {
    private static final int DEFAULT_BIT_RATE = 96000;
    private static final int DEFAULT_MAX_DURATION = Integer.MAX_VALUE;
    private static final long DEFAULT_MAX_SIZE = 290000;
    private static final int DEFAULT_OUTPUT_FORMAT = 1;
    private static final int DEFAULT_QUALITY = 2;
    private static final List<Rect> DEFAULT_RESOLUTIONS;
    private static final int INVALID_INT = -1;
    private static final long MAX_SIZE_MIN = 10240;
    private static final String TAG;
    public final int mBitRate;
    public final int mMaxDuration;
    public final long mMaxFileSizeBytes;
    public final int mOutputFormat;
    public final CamcorderProfile mPreloadProfile;
    public final int mQuality;
    public final List<Rect> mRecommendSizeList;

    static {
        TAG = MmsOptions.class.getSimpleName();
        DEFAULT_RESOLUTIONS = Arrays.asList(new Rect(0, 0, 176, 144));
    }

    /*
     * Enabled aggressive block sorting
     */
    MmsOptions(Builder builder) {
        this.mMaxFileSizeBytes = builder.mMaxFileSizeBytes;
        this.mMaxDuration = builder.mMaxDuration;
        this.mBitRate = builder.mBitRate;
        if (CamcorderProfile.hasProfile(builder.mQuality)) {
            this.mQuality = builder.mQuality;
            this.mPreloadProfile = CamcorderProfile.get(this.mQuality);
        } else {
            this.mQuality = VideoSize.MMS.getDefaultQuality();
            this.mPreloadProfile = CamcorderProfile.hasProfile(this.mQuality) ? CamcorderProfile.get(this.mQuality) : null;
        }
        this.mOutputFormat = builder.mOutputFormat;
        this.mRecommendSizeList = Collections.unmodifiableList(builder.mRecommendSizeList);
    }

    static /* synthetic */ List access$600() {
        return DEFAULT_RESOLUTIONS;
    }

    private boolean isSupported(Rect rect, List<Rect> object) {
        for (Rect rect2 : object) {
            if (rect.width() != rect2.width() || rect.height() != rect2.height()) continue;
            return true;
        }
        return false;
    }

    public Rect getRecommendSize(List<Rect> list) {
        for (Rect rect : this.mRecommendSizeList) {
            if (!this.isSupported(rect, list)) continue;
            return rect;
        }
        return null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("max-bytes:" + this.mMaxFileSizeBytes);
        stringBuilder.append(",bit-raite:" + this.mBitRate);
        stringBuilder.append(",quality:" + this.mQuality);
        stringBuilder.append(",format:" + this.mOutputFormat);
        stringBuilder.append(",resolution:(");
        for (Rect rect : this.mRecommendSizeList) {
            stringBuilder.append("" + rect.width() + "x" + rect.height() + " ");
        }
        stringBuilder.append(")");
        return super.toString();
    }

    static class Builder {
        private static final String RESOLUTION_SEPARATOR = "x";
        private static final String TOKEN_SEPARATOR = ",";
        private int mBitRate = 96000;
        private int mMaxDuration = Integer.MAX_VALUE;
        private long mMaxFileSizeBytes = 290000;
        private int mOutputFormat = 1;
        private int mQuality = 2;
        private List<Rect> mRecommendSizeList = MmsOptions.access$600();

        Builder() {
        }

        Builder bitRate(int n) {
            if (n == -1) {
                return this;
            }
            this.mBitRate = n;
            return this;
        }

        MmsOptions build() {
            return new MmsOptions(this);
        }

        Builder codec(String string) {
            if (string == null) {
                return this;
            }
            try {
                this.mQuality = Codec.from(string).mQuality;
                return this;
            }
            catch (IllegalArgumentException var1_2) {
                return this;
            }
        }

        Builder maxDuration(int n) {
            if (n == -1) {
                return this;
            }
            this.mMaxDuration = n;
            return this;
        }

        Builder maxFileSizeBytes(long l) {
            if (l == -1) {
                return this;
            }
            this.mMaxFileSizeBytes = Math.max(10240, l);
            return this;
        }

        Builder mimeType(String string) {
            if (string == null) {
                return this;
            }
            try {
                this.mOutputFormat = MimeType.from(string).mFormat;
                return this;
            }
            catch (IllegalArgumentException var1_2) {
                return this;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        Builder recommendSizeList(String arrstring) {
            if (arrstring == null) {
                return this;
            }
            this.mRecommendSizeList = new ArrayList<Rect>();
            arrstring = arrstring.split(",");
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                String[] arrstring2 = arrstring[i].split("x");
                if (arrstring2.length != 2) continue;
                try {
                    this.mRecommendSizeList.add(new Rect(0, 0, Integer.parseInt(arrstring2[0]), Integer.parseInt(arrstring2[1])));
                    continue;
                }
                catch (NumberFormatException var4_5) {}
            }
            return this;
        }
    }

    private static enum Codec {
        H263("H263", 2),
        H264("H264", 1);
        
        private final int mQuality;
        private final String mValue;

        private Codec(String string2, int n2) {
            this.mValue = string2;
            this.mQuality = n2;
        }

        static Codec from(String string) {
            for (Codec codec : Codec.values()) {
                if (!codec.mValue.equals(string)) continue;
                return codec;
            }
            throw new IllegalArgumentException("This value is not supported.");
        }
    }

    private static enum MimeType {
        THREE_GPP("video/3gpp", 1),
        MPEG_4("video/mp4", 2);
        
        private final int mFormat;
        private final String mValue;

        private MimeType(String string2, int n2) {
            this.mValue = string2;
            this.mFormat = n2;
        }

        static MimeType from(String string) {
            for (MimeType mimeType : MimeType.values()) {
                if (!mimeType.mValue.equals(string)) continue;
                return mimeType;
            }
            throw new IllegalArgumentException("This value is not supported.");
        }
    }

}

