/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.List;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SessionReadRequest
implements SafeParcelable {
    public static final Parcelable.Creator<SessionReadRequest> CREATOR;
    private final int BR;
    private final long KS;
    private final List<DataType> SB;
    private final long Sr;
    private final String UN;
    private boolean UO;
    private final List<String> UP;
    private final List<DataSource> Uk;
    private final boolean Uv;
    private final String vL;

    static;

    SessionReadRequest(int var1, String var2, String var3, long var4, long var6, List<DataType> var8, List<DataSource> var9, boolean var10, boolean var11, List<String> var12);

    private SessionReadRequest(Builder var1);

    /* synthetic */ SessionReadRequest(Builder var1,  var2);

    private boolean a(SessionReadRequest var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public List<DataSource> getDataSources();

    public List<DataType> getDataTypes();

    public long getEndTime(TimeUnit var1);

    public List<String> getExcludedPackages();

    public String getSessionId();

    public String getSessionName();

    public long getStartTime(TimeUnit var1);

    int getVersionCode();

    public int hashCode();

    public long iD();

    public long iE();

    public boolean includeSessionsFromAllApps();

    public boolean jl();

    public boolean jz();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private long KS;
        private List<DataType> SB;
        private long Sr;
        private String UN;
        private boolean UO;
        private List<String> UP;
        private List<DataSource> Uk;
        private boolean Uv;
        private String vL;

        public Builder();

        static /* synthetic */ String a(Builder var0);

        static /* synthetic */ String b(Builder var0);

        static /* synthetic */ long c(Builder var0);

        static /* synthetic */ long d(Builder var0);

        static /* synthetic */ List e(Builder var0);

        static /* synthetic */ List f(Builder var0);

        static /* synthetic */ boolean g(Builder var0);

        static /* synthetic */ boolean h(Builder var0);

        static /* synthetic */ List i(Builder var0);

        public SessionReadRequest build();

        public Builder enableServerQueries();

        public Builder excludePackage(String var1);

        public Builder read(DataSource var1);

        public Builder read(DataType var1);

        public Builder readSessionsFromAllApps();

        public Builder setSessionId(String var1);

        public Builder setSessionName(String var1);

        public Builder setTimeInterval(long var1, long var3, TimeUnit var5);
    }

}

