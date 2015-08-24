/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class a
implements SafeParcelable {
    public static final Parcelable.Creator<a> CREATOR;
    final int BR;
    final int FD;
    ParcelFileDescriptor JR;
    private Bitmap JS;
    private boolean JT;
    private File JU;

    static;

    a(int var1, ParcelFileDescriptor var2, int var3);

    public a(Bitmap var1);

    private void a(Closeable var1);

    private FileOutputStream gx();

    public void a(File var1);

    @Override
    public int describeContents();

    public Bitmap gw();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

