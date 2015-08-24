/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    public Status(int var1);

    Status(int var1, int var2, String var3, PendingIntent var4);

    public Status(int var1, String var2);

    public Status(int var1, String var2, PendingIntent var3);

    private String fX();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    PendingIntent getPendingIntent();

    public PendingIntent getResolution();

    @Override
    public Status getStatus();

    public int getStatusCode();

    public String getStatusMessage();

    int getVersionCode();

    @Deprecated
    public ConnectionResult gt();

    public boolean hasResolution();

    public int hashCode();

    public boolean isCanceled();

    public boolean isInterrupted();

    public boolean isSuccess();

    public void startResolutionForResult(Activity var1, int var2) throws IntentSender.SendIntentException;

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

