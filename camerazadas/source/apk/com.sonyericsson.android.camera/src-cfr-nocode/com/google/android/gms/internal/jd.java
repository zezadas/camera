/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.je;
import com.google.android.gms.internal.jf;
import com.google.android.gms.internal.ji;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class jd
implements SafeParcelable {
    public static final je CREATOR;
    private final int BR;
    private final jf Ms;

    static;

    jd(int var1, jf var2);

    private jd(jf var1);

    public static jd a(ji.b<?, ?> var0);

    @Override
    public int describeContents();

    int getVersionCode();

    jf ha();

    public ji.b<?, ?> hb();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

