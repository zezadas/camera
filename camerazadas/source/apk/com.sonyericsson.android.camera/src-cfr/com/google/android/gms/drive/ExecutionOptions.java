/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.internal.q;

public final class ExecutionOptions {
    public static final int CONFLICT_STRATEGY_KEEP_REMOTE = 1;
    public static final int CONFLICT_STRATEGY_OVERWRITE_REMOTE = 0;
    public static final int MAX_TRACKING_TAG_STRING_LENGTH = 65536;
    private final String Nn;
    private final boolean No;
    private final int Np;

    private ExecutionOptions(String string, boolean bl, int n) {
        this.Nn = string;
        this.No = bl;
        this.Np = n;
    }

    public static void a(GoogleApiClient object, ExecutionOptions executionOptions) {
        object = (q)object.a(Drive.CU);
        if (executionOptions.hP() && !object.ib()) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion");
        }
    }

    public static boolean aV(int n) {
        switch (n) {
            default: {
                return false;
            }
            case 1: 
        }
        return true;
    }

    public static boolean aW(int n) {
        switch (n) {
            default: {
                return false;
            }
            case 0: 
            case 1: 
        }
        return true;
    }

    public static boolean bh(String string) {
        if (!(string == null || string.isEmpty() || string.length() > 65536)) {
            return true;
        }
        return false;
    }

    public String hO() {
        return this.Nn;
    }

    public boolean hP() {
        return this.No;
    }

    public int hQ() {
        return this.Np;
    }

    public static final class Builder {
        private String Nn;
        private boolean No;
        private int Np = 0;

        public ExecutionOptions build() {
            if (!(this.Np != 1 || this.No)) {
                throw new IllegalStateException("Cannot use CONFLICT_STRATEGY_KEEP_REMOTE without requesting completion notifications");
            }
            return new ExecutionOptions(this.Nn, this.No, this.Np);
        }

        public Builder setConflictStrategy(int n) {
            if (!ExecutionOptions.aW(n)) {
                throw new IllegalArgumentException("Unrecognized value for conflict strategy: " + n);
            }
            this.Np = n;
            return this;
        }

        public Builder setNotifyOnCompletion(boolean bl) {
            this.No = bl;
            return this;
        }

        public Builder setTrackingTag(String string) {
            if (!ExecutionOptions.bh(string)) {
                throw new IllegalArgumentException(String.format("trackingTag must not be null nor empty, and the length must be <= the maximum length (%s)", 65536));
            }
            this.Nn = string;
            return this;
        }
    }

}

