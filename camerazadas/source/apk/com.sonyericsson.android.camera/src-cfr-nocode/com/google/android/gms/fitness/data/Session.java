/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.a;
import java.util.concurrent.TimeUnit;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Session
implements SafeParcelable {
    public static final Parcelable.Creator<Session> CREATOR;
    public static final String EXTRA_SESSION = "vnd.google.fitness.session";
    public static final String MIME_TYPE_PREFIX = "vnd.google.fitness.session/";
    private final int BR;
    private final long KS;
    private final int SC;
    private final a SP;
    private final long Sr;
    private final String Tq;
    private final String Tr;
    private final String mName;

    static;

    Session(int var1, long var2, long var4, String var6, String var7, String var8, int var9, a var10);

    private Session(Builder var1);

    /* synthetic */ Session(Builder var1,  var2);

    private boolean a(Session var1);

    public static Session extract(Intent var0);

    public static String getMimeType(String var0);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getActivity();

    public String getAppPackageName();

    public String getDescription();

    public long getEndTime(TimeUnit var1);

    public String getIdentifier();

    public String getName();

    public long getStartTime(TimeUnit var1);

    int getVersionCode();

    public int hashCode();

    public int iB();

    public long iD();

    public long iE();

    public a iM();

    public boolean isOngoing();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private long KS;
        private int SC;
        private a SP;
        private long Sr;
        private String Tq;
        private String Tr;
        private String mName;

        public Builder();

        static /* synthetic */ long a(Builder var0);

        static /* synthetic */ long b(Builder var0);

        static /* synthetic */ String c(Builder var0);

        static /* synthetic */ String d(Builder var0);

        static /* synthetic */ String e(Builder var0);

        static /* synthetic */ int f(Builder var0);

        static /* synthetic */ a g(Builder var0);

        public Session build();

        public Builder cK(int var1);

        public Builder setActivity(String var1);

        public Builder setDescription(String var1);

        public Builder setEndTime(long var1, TimeUnit var3);

        public Builder setIdentifier(String var1);

        public Builder setName(String var1);

        public Builder setStartTime(long var1, TimeUnit var3);
    }

}

