/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.e;
import com.google.android.gms.wearable.internal.DataItemAssetParcelable;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class PutDataRequest
implements SafeParcelable {
    public static final Parcelable.Creator<PutDataRequest> CREATOR = new e();
    public static final String WEAR_URI_SCHEME = "wear";
    private static final Random auZ = new SecureRandom();
    final int BR;
    private byte[] acH;
    private final Bundle ava;
    private final Uri mUri;

    private PutDataRequest(int n, Uri uri) {
        this(n, uri, new Bundle(), null);
    }

    PutDataRequest(int n, Uri uri, Bundle bundle, byte[] arrby) {
        this.BR = n;
        this.mUri = uri;
        this.ava = bundle;
        this.ava.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        this.acH = arrby;
    }

    public static PutDataRequest create(String string) {
        return PutDataRequest.k(PutDataRequest.dg(string));
    }

    public static PutDataRequest createFromDataItem(DataItem dataItem) {
        PutDataRequest putDataRequest = PutDataRequest.k(dataItem.getUri());
        for (Map.Entry<String, DataItemAsset> entry : dataItem.getAssets().entrySet()) {
            if (entry.getValue().getId() == null) {
                throw new IllegalStateException("Cannot create an asset for a put request without a digest: " + entry.getKey());
            }
            putDataRequest.putAsset(entry.getKey(), Asset.createFromRef(entry.getValue().getId()));
        }
        putDataRequest.setData(dataItem.getData());
        return putDataRequest;
    }

    public static PutDataRequest createWithAutoAppendedId(String string) {
        StringBuilder stringBuilder = new StringBuilder(string);
        if (!string.endsWith("/")) {
            stringBuilder.append("/");
        }
        stringBuilder.append("PN").append(auZ.nextLong());
        return new PutDataRequest(1, PutDataRequest.dg(stringBuilder.toString()));
    }

    private static Uri dg(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("An empty path was supplied.");
        }
        if (!string.startsWith("/")) {
            throw new IllegalArgumentException("A path must start with a single / .");
        }
        if (string.startsWith("//")) {
            throw new IllegalArgumentException("A path must start with a single / .");
        }
        return new Uri.Builder().scheme("wear").path(string).build();
    }

    public static PutDataRequest k(Uri uri) {
        return new PutDataRequest(1, uri);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Asset getAsset(String string) {
        return (Asset)this.ava.getParcelable(string);
    }

    public Map<String, Asset> getAssets() {
        HashMap<String, Asset> hashMap = new HashMap<String, Asset>();
        for (String string : this.ava.keySet()) {
            hashMap.put(string, (Asset)this.ava.getParcelable(string));
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public byte[] getData() {
        return this.acH;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public boolean hasAsset(String string) {
        return this.ava.containsKey(string);
    }

    public Bundle pT() {
        return this.ava;
    }

    public PutDataRequest putAsset(String string, Asset asset) {
        o.i(string);
        o.i(asset);
        this.ava.putParcelable(string, asset);
        return this;
    }

    public PutDataRequest removeAsset(String string) {
        this.ava.remove(string);
        return this;
    }

    public PutDataRequest setData(byte[] arrby) {
        this.acH = arrby;
        return this;
    }

    public String toString() {
        return this.toString(Log.isLoggable("DataMap", 3));
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString(boolean bl) {
        StringBuilder stringBuilder = new StringBuilder("PutDataRequest[");
        StringBuilder stringBuilder2 = new StringBuilder().append("dataSz=");
        Object object = this.acH == null ? "null" : Integer.valueOf(this.acH.length);
        stringBuilder.append(stringBuilder2.append(object).toString());
        stringBuilder.append(", numAssets=" + this.ava.size());
        stringBuilder.append(", uri=" + this.mUri);
        if (!bl) {
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
        stringBuilder.append("]\n  assets: ");
        object = this.ava.keySet().iterator();
        do {
            if (!object.hasNext()) {
                stringBuilder.append("\n  ]");
                return stringBuilder.toString();
            }
            String string = object.next();
            stringBuilder.append("\n    " + string + ": " + this.ava.getParcelable(string));
        } while (true);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        e.a(this, parcel, n);
    }
}

