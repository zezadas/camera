/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ListSubscriptionsResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<ListSubscriptionsResult> CREATOR;
    private final int BR;
    private final Status CM;
    private final List<Subscription> UY;

    static;

    ListSubscriptionsResult(int var1, List<Subscription> var2, Status var3);

    public ListSubscriptionsResult(List<Subscription> var1, Status var2);

    public static ListSubscriptionsResult G(Status var0);

    private boolean b(ListSubscriptionsResult var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public Status getStatus();

    public List<Subscription> getSubscriptions();

    public List<Subscription> getSubscriptions(DataType var1);

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

