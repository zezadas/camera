/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class OnResourceIdSetResponse
implements SafeParcelable {
    public static final Parcelable.Creator<OnResourceIdSetResponse> CREATOR;
    private final int BR;
    private final List<String> Oc;

    static;

    OnResourceIdSetResponse(int var1, List<String> var2);

    @Override
    public int describeContents();

    public int getVersionCode();

    public List<String> hX();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

