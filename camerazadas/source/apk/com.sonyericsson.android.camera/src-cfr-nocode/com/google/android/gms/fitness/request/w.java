/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Session;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class w
implements SafeParcelable {
    public static final Parcelable.Creator<w> CREATOR;
    private final int BR;
    private final Session St;

    static;

    w(int var1, Session var2);

    private w(a var1);

    /* synthetic */ w(a var1,  var2);

    private boolean a(w var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public Session getSession();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private Session St;

        public a();

        static /* synthetic */ Session a(a var0);

        public a b(Session var1);

        public w jA();
    }

}

