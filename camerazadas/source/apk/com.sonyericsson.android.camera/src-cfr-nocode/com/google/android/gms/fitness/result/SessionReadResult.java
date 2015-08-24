/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.q;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SessionReadResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<SessionReadResult> CREATOR;
    private final int BR;
    private final Status CM;
    private final List<q> UZ;
    private final List<Session> Ul;

    static;

    SessionReadResult(int var1, List<Session> var2, List<q> var3, Status var4);

    public SessionReadResult(List<Session> var1, List<q> var2, Status var3);

    public static SessionReadResult H(Status var0);

    private boolean b(SessionReadResult var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<DataSet> getDataSet(Session var1);

    public List<DataSet> getDataSet(Session var1, DataType var2);

    public List<Session> getSessions();

    @Override
    public Status getStatus();

    int getVersionCode();

    public int hashCode();

    public List<q> jL();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

