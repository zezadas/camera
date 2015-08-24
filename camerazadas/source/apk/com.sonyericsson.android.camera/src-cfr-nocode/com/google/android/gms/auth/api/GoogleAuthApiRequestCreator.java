/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.GoogleAuthApiRequest;

/*
 * Exception performing whole class analysis ignored.
 */
public class GoogleAuthApiRequestCreator
implements Parcelable.Creator<GoogleAuthApiRequest> {
    public static final int CONTENT_DESCRIPTION = 0;

    public GoogleAuthApiRequestCreator();

    static void a(GoogleAuthApiRequest var0, Parcel var1, int var2);

    @Override
    public GoogleAuthApiRequest createFromParcel(Parcel var1);

    public GoogleAuthApiRequest[] newArray(int var1);
}

