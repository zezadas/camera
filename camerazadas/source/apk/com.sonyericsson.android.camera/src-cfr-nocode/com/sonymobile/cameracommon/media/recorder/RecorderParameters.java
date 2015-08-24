/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.recorder;

import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RecorderParameters {
    private static final int INVALID_VALUE = -1;
    private static final String TAG;
    private boolean mIsMicrophoneEnabled;
    private Location mLocation;
    private int mMaxDuration;
    private long mMaxFileSize;
    private int mOrientationHint;
    private CamcorderProfile mProfile;
    private Uri mUri;

    static;

    private RecorderParameters();

    static /* synthetic */ Uri access$100(RecorderParameters var0);

    static /* synthetic */ Uri access$102(RecorderParameters var0, Uri var1);

    static /* synthetic */ Location access$202(RecorderParameters var0, Location var1);

    static /* synthetic */ int access$302(RecorderParameters var0, int var1);

    static /* synthetic */ long access$402(RecorderParameters var0, long var1);

    static /* synthetic */ int access$502(RecorderParameters var0, int var1);

    static /* synthetic */ CamcorderProfile access$600(RecorderParameters var0);

    static /* synthetic */ CamcorderProfile access$602(RecorderParameters var0, CamcorderProfile var1);

    static /* synthetic */ boolean access$702(RecorderParameters var0, boolean var1);

    private boolean isValid(long var1);

    public static Builder newRecordParameters();

    public void dump();

    public boolean hasLocation();

    public boolean hasMaxDuration();

    public boolean hasMaxFileSize();

    public boolean hasOrientationHint();

    public boolean isMicrophoneEnabled();

    public Location location();

    public int maxDuration();

    public long maxFileSize();

    public int orientationHint();

    public Uri outputUri();

    public CamcorderProfile profile();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private final RecorderParameters mParameters;

        private Builder(RecorderParameters var1);

        /* synthetic */ Builder(RecorderParameters var1,  var2);

        public RecorderParameters build();

        public Builder setLocation(Location var1);

        public Builder setMaxDuration(int var1);

        public Builder setMaxFileSize(long var1);

        public Builder setMicrophoneEnabled(boolean var1);

        public Builder setOrientationHint(int var1);

        public Builder setProfile(CamcorderProfile var1);

        public Builder setUri(Uri var1);
    }

}

