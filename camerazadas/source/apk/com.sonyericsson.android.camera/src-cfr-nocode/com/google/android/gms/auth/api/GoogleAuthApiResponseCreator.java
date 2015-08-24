/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.GoogleAuthApiResponse;

/*
 * Exception performing whole class analysis ignored.
 */
public class GoogleAuthApiResponseCreator
implements Parcelable.Creator<GoogleAuthApiResponse> {
    public static final int CONTENT_DESCRIPTION = 0;

    public GoogleAuthApiResponseCreator();

    static void a(GoogleAuthApiResponse var0, Parcel var1, int var2);

    @Override
    public GoogleAuthApiResponse createFromParcel(Parcel var1);

    public GoogleAuthApiResponse[] newArray(int var1);
}

