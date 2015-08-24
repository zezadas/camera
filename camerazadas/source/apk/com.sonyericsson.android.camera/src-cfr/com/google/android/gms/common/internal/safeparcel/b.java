/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public class b {
    public static int D(Parcel parcel) {
        return b.F(parcel, 20293);
    }

    private static int F(Parcel parcel, int n) {
        parcel.writeInt(-65536 | n);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void G(Parcel parcel, int n) {
        int n2 = parcel.dataPosition();
        parcel.setDataPosition(n - 4);
        parcel.writeInt(n2 - n);
        parcel.setDataPosition(n2);
    }

    public static void H(Parcel parcel, int n) {
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, byte by) {
        b.b(parcel, n, 4);
        parcel.writeInt(by);
    }

    public static void a(Parcel parcel, int n, double d) {
        b.b(parcel, n, 8);
        parcel.writeDouble(d);
    }

    public static void a(Parcel parcel, int n, float f) {
        b.b(parcel, n, 4);
        parcel.writeFloat(f);
    }

    public static void a(Parcel parcel, int n, long l) {
        b.b(parcel, n, 8);
        parcel.writeLong(l);
    }

    public static void a(Parcel parcel, int n, Bundle bundle, boolean bl) {
        if (bundle == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeBundle(bundle);
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, IBinder iBinder, boolean bl) {
        if (iBinder == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeStrongBinder(iBinder);
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, Parcel parcel2, boolean bl) {
        if (parcel2 == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, Parcelable parcelable, int n2, boolean bl) {
        if (parcelable == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcelable.writeToParcel(parcel, n2);
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, Boolean bl, boolean bl2) {
        int n2 = 0;
        if (bl == null) {
            if (bl2) {
                b.b(parcel, n, 0);
            }
            return;
        }
        b.b(parcel, n, 4);
        n = n2;
        if (bl.booleanValue()) {
            n = 1;
        }
        parcel.writeInt(n);
    }

    public static void a(Parcel parcel, int n, Integer n2, boolean bl) {
        if (n2 == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        b.b(parcel, n, 4);
        parcel.writeInt(n2);
    }

    public static void a(Parcel parcel, int n, Long l, boolean bl) {
        if (l == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        b.b(parcel, n, 8);
        parcel.writeLong(l);
    }

    public static void a(Parcel parcel, int n, String string, boolean bl) {
        if (string == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeString(string);
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, List<Integer> list, boolean bl) {
        if (list == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        int n2 = b.F(parcel, n);
        int n3 = list.size();
        parcel.writeInt(n3);
        for (n = 0; n < n3; ++n) {
            parcel.writeInt(list.get(n));
        }
        b.G(parcel, n2);
    }

    public static void a(Parcel parcel, int n, short s) {
        b.b(parcel, n, 4);
        parcel.writeInt(s);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Parcel parcel, int n, boolean bl) {
        b.b(parcel, n, 4);
        n = bl ? 1 : 0;
        parcel.writeInt(n);
    }

    public static void a(Parcel parcel, int n, byte[] arrby, boolean bl) {
        if (arrby == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeByteArray(arrby);
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, int[] arrn, boolean bl) {
        if (arrn == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeIntArray(arrn);
        b.G(parcel, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends Parcelable> void a(Parcel parcel, int n, T[] arrT, int n2, boolean bl) {
        if (arrT == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        int n3 = b.F(parcel, n);
        int n4 = arrT.length;
        parcel.writeInt(n4);
        n = 0;
        do {
            if (n >= n4) {
                b.G(parcel, n3);
                return;
            }
            T t = arrT[n];
            if (t == null) {
                parcel.writeInt(0);
            } else {
                b.a(parcel, t, n2);
            }
            ++n;
        } while (true);
    }

    public static void a(Parcel parcel, int n, String[] arrstring, boolean bl) {
        if (arrstring == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeStringArray(arrstring);
        b.G(parcel, n);
    }

    public static void a(Parcel parcel, int n, byte[][] arrby, boolean bl) {
        int n2 = 0;
        if (arrby == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        int n3 = b.F(parcel, n);
        int n4 = arrby.length;
        parcel.writeInt(n4);
        for (n = n2; n < n4; ++n) {
            parcel.writeByteArray(arrby[n]);
        }
        b.G(parcel, n3);
    }

    private static <T extends Parcelable> void a(Parcel parcel, T t, int n) {
        int n2 = parcel.dataPosition();
        parcel.writeInt(1);
        int n3 = parcel.dataPosition();
        t.writeToParcel(parcel, n);
        n = parcel.dataPosition();
        parcel.setDataPosition(n2);
        parcel.writeInt(n - n3);
        parcel.setDataPosition(n);
    }

    private static void b(Parcel parcel, int n, int n2) {
        if (n2 >= 65535) {
            parcel.writeInt(-65536 | n);
            parcel.writeInt(n2);
            return;
        }
        parcel.writeInt(n2 << 16 | n);
    }

    public static void b(Parcel parcel, int n, List<String> list, boolean bl) {
        if (list == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeStringList(list);
        b.G(parcel, n);
    }

    public static void c(Parcel parcel, int n, int n2) {
        b.b(parcel, n, 4);
        parcel.writeInt(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static <T extends Parcelable> void c(Parcel parcel, int n, List<T> list, boolean bl) {
        if (list == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        int n2 = b.F(parcel, n);
        int n3 = list.size();
        parcel.writeInt(n3);
        n = 0;
        do {
            if (n >= n3) {
                b.G(parcel, n2);
                return;
            }
            Parcelable parcelable = (Parcelable)list.get(n);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                b.a(parcel, parcelable, 0);
            }
            ++n;
        } while (true);
    }

    public static void d(Parcel parcel, int n, List list, boolean bl) {
        if (list == null) {
            if (bl) {
                b.b(parcel, n, 0);
            }
            return;
        }
        n = b.F(parcel, n);
        parcel.writeList(list);
        b.G(parcel, n);
    }
}

