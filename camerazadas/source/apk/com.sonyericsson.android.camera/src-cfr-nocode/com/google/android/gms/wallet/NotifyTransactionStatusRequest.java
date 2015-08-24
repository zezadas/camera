/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class NotifyTransactionStatusRequest
implements SafeParcelable {
    public static final Parcelable.Creator<NotifyTransactionStatusRequest> CREATOR;
    final int BR;
    String asB;
    String atB;
    int status;

    static;

    NotifyTransactionStatusRequest();

    NotifyTransactionStatusRequest(int var1, String var2, int var3, String var4);

    public static Builder newBuilder();

    @Override
    public int describeContents();

    public String getDetailedReason();

    public String getGoogleTransactionId();

    public int getStatus();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ NotifyTransactionStatusRequest atC;

        private Builder(NotifyTransactionStatusRequest var1);

        /* synthetic */ Builder(NotifyTransactionStatusRequest var1,  var2);

        public NotifyTransactionStatusRequest build();

        public Builder setDetailedReason(String var1);

        public Builder setGoogleTransactionId(String var1);

        public Builder setStatus(int var1);
    }

    public static interface Status {
        public static final int SUCCESS = 1;

        public static interface Error {
            public static final int AVS_DECLINE = 7;
            public static final int BAD_CARD = 4;
            public static final int BAD_CVC = 3;
            public static final int DECLINED = 5;
            public static final int FRAUD_DECLINE = 8;
            public static final int OTHER = 6;
            public static final int UNKNOWN = 2;
        }

    }

}

