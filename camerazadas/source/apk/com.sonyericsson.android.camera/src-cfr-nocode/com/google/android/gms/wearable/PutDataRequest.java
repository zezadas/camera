/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataItem;
import java.util.Map;
import java.util.Random;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PutDataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<PutDataRequest> CREATOR;
    public static final String WEAR_URI_SCHEME = "wear";
    private static final Random auZ;
    final int BR;
    private byte[] acH;
    private final Bundle ava;
    private final Uri mUri;

    static;

    private PutDataRequest(int var1, Uri var2);

    PutDataRequest(int var1, Uri var2, Bundle var3, byte[] var4);

    public static PutDataRequest create(String var0);

    public static PutDataRequest createFromDataItem(DataItem var0);

    public static PutDataRequest createWithAutoAppendedId(String var0);

    private static Uri dg(String var0);

    public static PutDataRequest k(Uri var0);

    @Override
    public int describeContents();

    public Asset getAsset(String var1);

    public Map<String, Asset> getAssets();

    public byte[] getData();

    public Uri getUri();

    public boolean hasAsset(String var1);

    public Bundle pT();

    public PutDataRequest putAsset(String var1, Asset var2);

    public PutDataRequest removeAsset(String var1);

    public PutDataRequest setData(byte[] var1);

    public String toString();

    public String toString(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

