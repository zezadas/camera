/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Session;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SessionStopResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<SessionStopResult> CREATOR;
    private final int BR;
    private final Status CM;
    private final List<Session> Ul;

    static;

    SessionStopResult(int var1, Status var2, List<Session> var3);

    public SessionStopResult(Status var1, List<Session> var2);

    public static SessionStopResult I(Status var0);

    private boolean b(SessionStopResult var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<Session> getSessions();

    @Override
    public Status getStatus();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

