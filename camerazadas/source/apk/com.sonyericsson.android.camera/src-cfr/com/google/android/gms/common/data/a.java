/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.data.b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class a
implements SafeParcelable {
    public static final Parcelable.Creator<a> CREATOR = new b();
    final int BR;
    final int FD;
    ParcelFileDescriptor JR;
    private Bitmap JS;
    private boolean JT;
    private File JU;

    a(int n, ParcelFileDescriptor parcelFileDescriptor, int n2) {
        this.BR = n;
        this.JR = parcelFileDescriptor;
        this.FD = n2;
        this.JS = null;
        this.JT = false;
    }

    public a(Bitmap bitmap) {
        this.BR = 1;
        this.JR = null;
        this.FD = 0;
        this.JS = bitmap;
        this.JT = true;
    }

    private void a(Closeable closeable) {
        try {
            closeable.close();
            return;
        }
        catch (IOException var1_2) {
            Log.w("BitmapTeleporter", "Could not close stream", var1_2);
            return;
        }
    }

    private FileOutputStream gx() {
        File file;
        if (this.JU == null) {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        try {
            file = File.createTempFile("teleporter", ".tmp", this.JU);
        }
        catch (IOException var1_2) {
            throw new IllegalStateException("Could not create temporary file", var1_2);
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            this.JR = ParcelFileDescriptor.open(file, 268435456);
            file.delete();
            return fileOutputStream;
        }
        catch (FileNotFoundException var1_3) {
            throw new IllegalStateException("Temporary file is somehow already deleted");
        }
    }

    public void a(File file) {
        if (file == null) {
            throw new NullPointerException("Cannot set null temp directory");
        }
        this.JU = file;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Bitmap gw() {
        int n;
        Object object2;
        int n2;
        if (this.JT) return this.JS;
        Object object = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.JR));
        try {
            byte[] arrby = new byte[object.readInt()];
            n = object.readInt();
            n2 = object.readInt();
            object2 = Bitmap.Config.valueOf(object.readUTF());
            object.read(arrby);
            object = ByteBuffer.wrap(arrby);
        }
        catch (IOException iOException) {
            throw new IllegalStateException("Could not read from parcel file descriptor", iOException);
        }
        finally {
            this.a((Closeable)object);
        }
        object2 = Bitmap.createBitmap(n, n2, (Bitmap.Config)object2);
        object2.copyPixelsFromBuffer((Buffer)object);
        this.JS = object2;
        this.JT = true;
        return this.JS;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        Object object;
        if (this.JR == null) {
            Bitmap bitmap = this.JS;
            object = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer((Buffer)object);
            byte[] arrby = object.array();
            object = new DataOutputStream(this.gx());
            object.writeInt(arrby.length);
            object.writeInt(bitmap.getWidth());
            object.writeInt(bitmap.getHeight());
            object.writeUTF(bitmap.getConfig().toString());
            object.write(arrby);
        }
        b.a(this, parcel, n);
        return;
        catch (IOException iOException) {
            throw new IllegalStateException("Could not write into unlinked file", iOException);
        }
        finally {
            this.a((Closeable)object);
        }
    }
}

