/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.graphics.Rect;
import android.media.CamcorderProfile;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    MmsOptions(Builder var1);

    static /* synthetic */ List access$600();

    private boolean isSupported(Rect var1, List<Rect> var2);

    public Rect getRecommendSize(List<Rect> var1);

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class Builder {
        private static final String RESOLUTION_SEPARATOR = "x";
        private static final String TOKEN_SEPARATOR = ",";
        private int mBitRate;
        private int mMaxDuration;
        private long mMaxFileSizeBytes;
        private int mOutputFormat;
        private int mQuality;
        private List<Rect> mRecommendSizeList;

        Builder();

        static /* synthetic */ long access$000(Builder var0);

        static /* synthetic */ int access$100(Builder var0);

        static /* synthetic */ int access$200(Builder var0);

        static /* synthetic */ int access$300(Builder var0);

        static /* synthetic */ int access$400(Builder var0);

        static /* synthetic */ List access$500(Builder var0);

        Builder bitRate(int var1);

        MmsOptions build();

        Builder codec(String var1);

        Builder maxDuration(int var1);

        Builder maxFileSizeBytes(long var1);

        Builder mimeType(String var1);

        Builder recommendSizeList(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class Codec
    extends Enum<Codec> {
        private static final /* synthetic */ Codec[] $VALUES;
        public static final /* enum */ Codec H263;
        public static final /* enum */ Codec H264;
        private final int mQuality;
        private final String mValue;

        static;

        private Codec(String var3, int var4);

        static /* synthetic */ int access$700(Codec var0);

        static Codec from(String var0);

        public static Codec valueOf(String var0);

        public static Codec[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class MimeType
    extends Enum<MimeType> {
        private static final /* synthetic */ MimeType[] $VALUES;
        public static final /* enum */ MimeType MPEG_4;
        public static final /* enum */ MimeType THREE_GPP;
        private final int mFormat;
        private final String mValue;

        static;

        private MimeType(String var3, int var4);

        static /* synthetic */ int access$800(MimeType var0);

        static MimeType from(String var0);

        public static MimeType valueOf(String var0);

        public static MimeType[] values();
    }

}

