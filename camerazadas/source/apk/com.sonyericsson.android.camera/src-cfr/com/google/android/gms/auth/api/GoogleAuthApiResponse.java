/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.api.GoogleAuthApiResponseCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class GoogleAuthApiResponse
implements SafeParcelable {
    public static final GoogleAuthApiResponseCreator CREATOR = new GoogleAuthApiResponseCreator();
    final byte[] DA;
    final Bundle Dz;
    final int responseCode;
    final int versionCode;

    public GoogleAuthApiResponse(int n, int n2, Bundle bundle, byte[] arrby) {
        this.versionCode = n;
        this.responseCode = n2;
        this.Dz = bundle;
        this.DA = arrby;
    }

    public GoogleAuthApiResponse(int n, Bundle bundle, byte[] arrby) {
        this.versionCode = 1;
        this.responseCode = n;
        this.Dz = bundle;
        this.DA = arrby;
    }

    public GoogleAuthApiResponse(int n, Map<String, String> map, byte[] arrby) {
        this(n, GoogleAuthApiResponse.B(map), arrby);
    }

    private static Bundle B(Map<String, String> object) {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : object.entrySet()) {
            bundle.putString((String)entry.getKey(), (String)entry.getValue());
        }
        return bundle;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public byte[] getBody() {
        return this.DA;
    }

    public Bundle getHeaders() {
        return this.Dz;
    }

    public Map<String, String> getHeadersAsMap() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (String string : this.Dz.keySet()) {
            hashMap.put(string, this.Dz.getString(string));
        }
        return hashMap;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        GoogleAuthApiResponseCreator.a(this, parcel, n);
    }
}

