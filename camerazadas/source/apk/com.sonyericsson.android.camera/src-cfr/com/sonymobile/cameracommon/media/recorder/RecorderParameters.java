/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.recorder;

import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;

public class RecorderParameters {
    private static final int INVALID_VALUE = -1;
    private static final String TAG = RecorderParameters.class.getSimpleName();
    private boolean mIsMicrophoneEnabled = false;
    private Location mLocation = null;
    private int mMaxDuration = -1;
    private long mMaxFileSize = -1;
    private int mOrientationHint = -1;
    private CamcorderProfile mProfile = null;
    private Uri mUri = null;

    private RecorderParameters() {
    }

    private boolean isValid(long l) {
        if (l != -1) {
            return true;
        }
        return false;
    }

    public static Builder newRecordParameters() {
        return new Builder(new RecorderParameters());
    }

    public void dump() {
    }

    public boolean hasLocation() {
        if (this.mLocation != null) {
            return true;
        }
        return false;
    }

    public boolean hasMaxDuration() {
        return this.isValid(this.mMaxDuration);
    }

    public boolean hasMaxFileSize() {
        return this.isValid(this.mMaxFileSize);
    }

    public boolean hasOrientationHint() {
        return this.isValid(this.mOrientationHint);
    }

    public boolean isMicrophoneEnabled() {
        return this.mIsMicrophoneEnabled;
    }

    public Location location() {
        return this.mLocation;
    }

    public int maxDuration() {
        return this.mMaxDuration;
    }

    public long maxFileSize() {
        return this.mMaxFileSize;
    }

    public int orientationHint() {
        return this.mOrientationHint;
    }

    public Uri outputUri() {
        return this.mUri;
    }

    public CamcorderProfile profile() {
        return this.mProfile;
    }

    public static class Builder {
        private final RecorderParameters mParameters;

        private Builder(RecorderParameters recorderParameters) {
            this.mParameters = recorderParameters;
        }

        public RecorderParameters build() {
            if (this.mParameters.mUri != null && this.mParameters.mProfile != null) {
                return this.mParameters;
            }
            throw new IllegalStateException();
        }

        public Builder setLocation(Location location) {
            this.mParameters.mLocation = location;
            return this;
        }

        public Builder setMaxDuration(int n) {
            this.mParameters.mMaxDuration = n;
            return this;
        }

        public Builder setMaxFileSize(long l) {
            this.mParameters.mMaxFileSize = l;
            return this;
        }

        public Builder setMicrophoneEnabled(boolean bl) {
            this.mParameters.mIsMicrophoneEnabled = bl;
            return this;
        }

        public Builder setOrientationHint(int n) {
            this.mParameters.mOrientationHint = n;
            return this;
        }

        public Builder setProfile(CamcorderProfile camcorderProfile) {
            this.mParameters.mProfile = camcorderProfile;
            return this;
        }

        public Builder setUri(Uri uri) {
            this.mParameters.mUri = uri;
            return this;
        }
    }

}

