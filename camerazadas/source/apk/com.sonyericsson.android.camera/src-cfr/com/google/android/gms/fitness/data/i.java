/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.fitness.data.Device;

public class i
implements Parcelable.Creator<Device> {
    static void a(Device device, Parcel parcel, int n) {
        n = b.D(parcel);
        b.a(parcel, 1, device.getManufacturer(), false);
        b.c(parcel, 1000, device.getVersionCode());
        b.a(parcel, 2, device.getModel(), false);
        b.a(parcel, 3, device.getVersion(), false);
        b.a(parcel, 4, device.iU(), false);
        b.c(parcel, 5, device.getType());
        b.c(parcel, 6, device.iR());
        b.H(parcel, n);
    }

    public Device bp(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        int n3 = 0;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        int n4 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n5 = a.B(parcel);
            switch (a.aD(n5)) {
                default: {
                    a.b(parcel, n5);
                    continue block9;
                }
                case 1: {
                    string4 = a.o(parcel, n5);
                    continue block9;
                }
                case 1000: {
                    n4 = a.g(parcel, n5);
                    continue block9;
                }
                case 2: {
                    string3 = a.o(parcel, n5);
                    continue block9;
                }
                case 3: {
                    string2 = a.o(parcel, n5);
                    continue block9;
                }
                case 4: {
                    string = a.o(parcel, n5);
                    continue block9;
                }
                case 5: {
                    n3 = a.g(parcel, n5);
                    continue block9;
                }
                case 6: 
            }
            n = a.g(parcel, n5);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new Device(n4, string4, string3, string2, string, n3, n);
    }

    public Device[] cF(int n) {
        return new Device[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.bp(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.cF(n);
    }
}

