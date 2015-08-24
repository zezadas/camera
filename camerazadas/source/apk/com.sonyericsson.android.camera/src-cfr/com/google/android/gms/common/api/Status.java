/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class Status
implements Result,
SafeParcelable {
    public static final StatusCreator CREATOR;
    public static final Status Jv;
    public static final Status Jw;
    public static final Status Jx;
    public static final Status Jy;
    public static final Status Jz;
    private final int BR;
    private final int HF;
    private final String JA;
    private final PendingIntent mPendingIntent;

    static {
        Jv = new Status(0);
        Jw = new Status(14);
        Jx = new Status(8);
        Jy = new Status(15);
        Jz = new Status(16);
        CREATOR = new StatusCreator();
    }

    public Status(int n) {
        this(n, null);
    }

    Status(int n, int n2, String string, PendingIntent pendingIntent) {
        this.BR = n;
        this.HF = n2;
        this.JA = string;
        this.mPendingIntent = pendingIntent;
    }

    public Status(int n, String string) {
        this(1, n, string, null);
    }

    public Status(int n, String string, PendingIntent pendingIntent) {
        this(1, n, string, pendingIntent);
    }

    private String fX() {
        if (this.JA != null) {
            return this.JA;
        }
        return CommonStatusCodes.getStatusCodeString(this.HF);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof Status)) {
            return false;
        }
        object = (Status)object;
        if (this.BR != object.BR) return false;
        if (this.HF != object.HF) return false;
        if (!n.equal(this.JA, object.JA)) return false;
        if (!n.equal(this.mPendingIntent, object.mPendingIntent)) return false;
        return true;
    }

    PendingIntent getPendingIntent() {
        return this.mPendingIntent;
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    @Override
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.HF;
    }

    public String getStatusMessage() {
        return this.JA;
    }

    int getVersionCode() {
        return this.BR;
    }

    @Deprecated
    public ConnectionResult gt() {
        return new ConnectionResult(this.HF, this.mPendingIntent);
    }

    public boolean hasResolution() {
        if (this.mPendingIntent != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return n.hashCode(this.BR, this.HF, this.JA, this.mPendingIntent);
    }

    public boolean isCanceled() {
        if (this.HF == 16) {
            return true;
        }
        return false;
    }

    public boolean isInterrupted() {
        if (this.HF == 14) {
            return true;
        }
        return false;
    }

    public boolean isSuccess() {
        if (this.HF <= 0) {
            return true;
        }
        return false;
    }

    public void startResolutionForResult(Activity activity, int n) throws IntentSender.SendIntentException {
        if (!this.hasResolution()) {
            return;
        }
        activity.startIntentSenderForResult(this.mPendingIntent.getIntentSender(), n, null, 0, 0, 0);
    }

    public String toString() {
        return n.h(this).a("statusCode", this.fX()).a("resolution", this.mPendingIntent).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        StatusCreator.a(this, parcel, n);
    }
}

