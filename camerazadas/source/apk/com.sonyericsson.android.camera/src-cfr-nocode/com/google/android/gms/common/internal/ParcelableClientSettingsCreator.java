/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientSettings;

/*
 * Exception performing whole class analysis ignored.
 */
public class ParcelableClientSettingsCreator
implements Parcelable.Creator<ClientSettings.ParcelableClientSettings> {
    public static final int CONTENT_DESCRIPTION = 0;

    public ParcelableClientSettingsCreator();

    static void a(ClientSettings.ParcelableClientSettings var0, Parcel var1, int var2);

    @Override
    public ClientSettings.ParcelableClientSettings createFromParcel(Parcel var1);

    public ClientSettings.ParcelableClientSettings[] newArray(int var1);
}

