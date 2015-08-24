/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class WebImage
implements SafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR;
    private final int BR;
    private final Uri KQ;
    private final int lf;
    private final int lg;

    static;

    WebImage(int var1, Uri var2, int var3, int var4);

    public WebImage(Uri var1) throws IllegalArgumentException;

    public WebImage(Uri var1, int var2, int var3) throws IllegalArgumentException;

    public WebImage(JSONObject var1) throws IllegalArgumentException;

    private static Uri d(JSONObject var0);

    public JSONObject bK();

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public int getHeight();

    public Uri getUrl();

    int getVersionCode();

    public int getWidth();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

