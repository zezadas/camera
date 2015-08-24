/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.api.GoogleAuthApiResponseCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GoogleAuthApiResponse
implements SafeParcelable {
    public static final GoogleAuthApiResponseCreator CREATOR;
    final byte[] DA;
    final Bundle Dz;
    final int responseCode;
    final int versionCode;

    static;

    public GoogleAuthApiResponse(int var1, int var2, Bundle var3, byte[] var4);

    public GoogleAuthApiResponse(int var1, Bundle var2, byte[] var3);

    public GoogleAuthApiResponse(int var1, Map<String, String> var2, byte[] var3);

    private static Bundle B(Map<String, String> var0);

    @Override
    public int describeContents();

    public byte[] getBody();

    public Bundle getHeaders();

    public Map<String, String> getHeadersAsMap();

    public int getResponseCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

