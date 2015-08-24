/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSet;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class e
implements SafeParcelable {
    public static final Parcelable.Creator<e> CREATOR;
    private final int BR;
    private final DataSet Ts;

    static;

    e(int var1, DataSet var2);

    private e(a var1);

    /* synthetic */ e(a var1,  var2);

    private boolean a(e var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    int getVersionCode();

    public int hashCode();

    public DataSet iW();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private DataSet Ts;

        public a();

        static /* synthetic */ DataSet a(a var0);

        public a b(DataSet var1);

        public e jj();
    }

}

