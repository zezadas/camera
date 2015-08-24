/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.Collection;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class UserAddressRequest
implements SafeParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR;
    private final int BR;
    List<CountrySpecification> adK;

    static;

    UserAddressRequest();

    UserAddressRequest(int var1, List<CountrySpecification> var2);

    public static Builder newBuilder();

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ UserAddressRequest adL;

        private Builder(UserAddressRequest var1);

        /* synthetic */ Builder(UserAddressRequest var1,  var2);

        public Builder addAllowedCountrySpecification(CountrySpecification var1);

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> var1);

        public UserAddressRequest build();
    }

}

