/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ApplicationMetadata
implements SafeParcelable {
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR;
    private final int BR;
    List<WebImage> EA;
    List<String> EB;
    String EC;
    Uri ED;
    String Ez;
    String mName;

    static;

    private ApplicationMetadata();

    ApplicationMetadata(int var1, String var2, String var3, List<WebImage> var4, List<String> var5, String var6, Uri var7);

    public boolean areNamespacesSupported(List<String> var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public Uri fu();

    public String getApplicationId();

    public List<WebImage> getImages();

    public String getName();

    public String getSenderAppIdentifier();

    int getVersionCode();

    public int hashCode();

    public boolean isNamespaceSupported(String var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

