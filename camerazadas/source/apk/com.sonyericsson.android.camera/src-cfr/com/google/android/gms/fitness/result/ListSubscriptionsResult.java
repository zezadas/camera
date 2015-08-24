/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.result.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ListSubscriptionsResult
implements Result,
SafeParcelable {
    public static final Parcelable.Creator<ListSubscriptionsResult> CREATOR = new e();
    private final int BR;
    private final Status CM;
    private final List<Subscription> UY;

    ListSubscriptionsResult(int n, List<Subscription> list, Status status) {
        this.BR = n;
        this.UY = list;
        this.CM = status;
    }

    public ListSubscriptionsResult(List<Subscription> list, Status status) {
        this.BR = 3;
        this.UY = Collections.unmodifiableList(list);
        this.CM = o.b(status, (Object)"status");
    }

    public static ListSubscriptionsResult G(Status status) {
        return new ListSubscriptionsResult(Collections.<Subscription>emptyList(), status);
    }

    private boolean b(ListSubscriptionsResult listSubscriptionsResult) {
        if (this.CM.equals(listSubscriptionsResult.CM) && n.equal(this.UY, listSubscriptionsResult.UY)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof ListSubscriptionsResult && this.b((ListSubscriptionsResult)object)) {
            return true;
        }
        return false;
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    public List<Subscription> getSubscriptions() {
        return this.UY;
    }

    public List<Subscription> getSubscriptions(DataType dataType) {
        ArrayList<Subscription> arrayList = new ArrayList<Subscription>();
        for (Subscription subscription : this.UY) {
            if (!dataType.equals(subscription.iY())) continue;
            arrayList.add(subscription);
        }
        return Collections.unmodifiableList(arrayList);
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.CM, this.UY);
    }

    public String toString() {
        return n.h(this).a("status", this.CM).a("subscriptions", this.UY).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        e.a(this, parcel, n);
    }
}

