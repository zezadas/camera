/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.a;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class UserAddressRequest
implements SafeParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new a();
    private final int BR;
    List<CountrySpecification> adK;

    UserAddressRequest() {
        this.BR = 1;
    }

    UserAddressRequest(int n, List<CountrySpecification> list) {
        this.BR = n;
        this.adK = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return userAddressRequest.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.adK == null) {
                UserAddressRequest.this.adK = new ArrayList<CountrySpecification>();
            }
            UserAddressRequest.this.adK.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (UserAddressRequest.this.adK == null) {
                UserAddressRequest.this.adK = new ArrayList<CountrySpecification>();
            }
            UserAddressRequest.this.adK.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (UserAddressRequest.this.adK != null) {
                UserAddressRequest.this.adK = Collections.unmodifiableList(UserAddressRequest.this.adK);
            }
            return UserAddressRequest.this;
        }
    }

}

