/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.m;

public final class NotifyTransactionStatusRequest
implements SafeParcelable {
    public static final Parcelable.Creator<NotifyTransactionStatusRequest> CREATOR = new m();
    final int BR;
    String asB;
    String atB;
    int status;

    NotifyTransactionStatusRequest() {
        this.BR = 1;
    }

    NotifyTransactionStatusRequest(int n, String string, int n2, String string2) {
        this.BR = n;
        this.asB = string;
        this.status = n2;
        this.atB = string2;
    }

    public static Builder newBuilder() {
        NotifyTransactionStatusRequest notifyTransactionStatusRequest = new NotifyTransactionStatusRequest();
        notifyTransactionStatusRequest.getClass();
        return notifyTransactionStatusRequest.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getDetailedReason() {
        return this.atB;
    }

    public String getGoogleTransactionId() {
        return this.asB;
    }

    public int getStatus() {
        return this.status;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        m.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public NotifyTransactionStatusRequest build() {
            boolean bl = true;
            boolean bl2 = !TextUtils.isEmpty((CharSequence)NotifyTransactionStatusRequest.this.asB);
            o.b(bl2, (Object)"googleTransactionId is required");
            bl2 = NotifyTransactionStatusRequest.this.status >= 1 && NotifyTransactionStatusRequest.this.status <= 8 ? bl : false;
            o.b(bl2, (Object)"status is an unrecognized value");
            return NotifyTransactionStatusRequest.this;
        }

        public Builder setDetailedReason(String string) {
            NotifyTransactionStatusRequest.this.atB = string;
            return this;
        }

        public Builder setGoogleTransactionId(String string) {
            NotifyTransactionStatusRequest.this.asB = string;
            return this;
        }

        public Builder setStatus(int n) {
            NotifyTransactionStatusRequest.this.status = n;
            return this;
        }
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

