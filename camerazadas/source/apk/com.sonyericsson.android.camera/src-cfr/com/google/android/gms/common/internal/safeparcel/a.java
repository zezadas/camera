/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class a {
    public static String[] A(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        String[] arrstring = parcel.createStringArray();
        parcel.setDataPosition(n + n2);
        return arrstring;
    }

    public static int B(Parcel parcel) {
        return parcel.readInt();
    }

    public static ArrayList<Integer> B(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        int n3 = parcel.dataPosition();
        if (n2 == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<Integer>();
        int n4 = parcel.readInt();
        for (n = 0; n < n4; ++n) {
            arrayList.add(parcel.readInt());
        }
        parcel.setDataPosition(n3 + n2);
        return arrayList;
    }

    public static int C(Parcel parcel) {
        int n = a.B(parcel);
        int n2 = a.a(parcel, n);
        int n3 = parcel.dataPosition();
        if (a.aD(n) != 20293) {
            throw new a("Expected object header. Got 0x" + Integer.toHexString(n), parcel);
        }
        n = n3 + n2;
        if (n < n3 || n > parcel.dataSize()) {
            throw new a("Size read is invalid start=" + n3 + " end=" + n, parcel);
        }
        return n;
    }

    public static ArrayList<String> C(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        ArrayList<String> arrayList = parcel.createStringArrayList();
        parcel.setDataPosition(n + n2);
        return arrayList;
    }

    public static Parcel D(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        Parcel parcel2 = Parcel.obtain();
        parcel2.appendFrom(parcel, n2, n);
        parcel.setDataPosition(n + n2);
        return parcel2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Parcel[] E(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        int n3 = parcel.dataPosition();
        if (n2 == 0) {
            return null;
        }
        int n4 = parcel.readInt();
        Parcel[] arrparcel = new Parcel[n4];
        n = 0;
        do {
            if (n >= n4) {
                parcel.setDataPosition(n3 + n2);
                return arrparcel;
            }
            int n5 = parcel.readInt();
            if (n5 != 0) {
                int n6 = parcel.dataPosition();
                Parcel parcel2 = Parcel.obtain();
                parcel2.appendFrom(parcel, n6, n5);
                arrparcel[n] = parcel2;
                parcel.setDataPosition(n5 + n6);
            } else {
                arrparcel[n] = null;
            }
            ++n;
        } while (true);
    }

    public static int a(Parcel parcel, int n) {
        if ((n & -65536) != -65536) {
            return n >> 16 & 65535;
        }
        return parcel.readInt();
    }

    public static <T extends Parcelable> T a(Parcel parcel, int n, Parcelable.Creator<T> object) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        object = (Parcelable)object.createFromParcel(parcel);
        parcel.setDataPosition(n + n2);
        return (T)object;
    }

    private static void a(Parcel parcel, int n, int n2) {
        if ((n = a.a(parcel, n)) != n2) {
            throw new a("Expected size " + n2 + " got " + n + " (0x" + Integer.toHexString(n) + ")", parcel);
        }
    }

    private static void a(Parcel parcel, int n, int n2, int n3) {
        if (n2 != n3) {
            throw new a("Expected size " + n3 + " got " + n2 + " (0x" + Integer.toHexString(n2) + ")", parcel);
        }
    }

    public static void a(Parcel parcel, int n, List list, ClassLoader classLoader) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return;
        }
        parcel.readList(list, classLoader);
        parcel.setDataPosition(n + n2);
    }

    public static int aD(int n) {
        return 65535 & n;
    }

    public static void b(Parcel parcel, int n) {
        parcel.setDataPosition(a.a(parcel, n) + parcel.dataPosition());
    }

    public static <T> T[] b(Parcel parcel, int n, Parcelable.Creator<T> arrT) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        arrT = parcel.createTypedArray(arrT);
        parcel.setDataPosition(n + n2);
        return arrT;
    }

    public static <T> ArrayList<T> c(Parcel parcel, int n, Parcelable.Creator<T> object) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        object = parcel.createTypedArrayList(object);
        parcel.setDataPosition(n + n2);
        return object;
    }

    public static boolean c(Parcel parcel, int n) {
        a.a(parcel, n, 4);
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Boolean d(Parcel parcel, int n) {
        boolean bl;
        int n2 = a.a(parcel, n);
        if (n2 == 0) {
            return null;
        }
        a.a(parcel, n, n2, 4);
        if (parcel.readInt() != 0) {
            bl = true;
            do {
                return bl;
                break;
            } while (true);
        }
        bl = false;
        return bl;
    }

    public static byte e(Parcel parcel, int n) {
        a.a(parcel, n, 4);
        return (byte)parcel.readInt();
    }

    public static short f(Parcel parcel, int n) {
        a.a(parcel, n, 4);
        return (short)parcel.readInt();
    }

    public static int g(Parcel parcel, int n) {
        a.a(parcel, n, 4);
        return parcel.readInt();
    }

    public static Integer h(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        if (n2 == 0) {
            return null;
        }
        a.a(parcel, n, n2, 4);
        return parcel.readInt();
    }

    public static long i(Parcel parcel, int n) {
        a.a(parcel, n, 8);
        return parcel.readLong();
    }

    public static Long j(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        if (n2 == 0) {
            return null;
        }
        a.a(parcel, n, n2, 8);
        return parcel.readLong();
    }

    public static BigInteger k(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        byte[] arrby = parcel.createByteArray();
        parcel.setDataPosition(n + n2);
        return new BigInteger(arrby);
    }

    public static float l(Parcel parcel, int n) {
        a.a(parcel, n, 4);
        return parcel.readFloat();
    }

    public static double m(Parcel parcel, int n) {
        a.a(parcel, n, 8);
        return parcel.readDouble();
    }

    public static BigDecimal n(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        byte[] arrby = parcel.createByteArray();
        int n3 = parcel.readInt();
        parcel.setDataPosition(n + n2);
        return new BigDecimal(new BigInteger(arrby), n3);
    }

    public static String o(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(n + n2);
        return string;
    }

    public static IBinder p(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        IBinder iBinder = parcel.readStrongBinder();
        parcel.setDataPosition(n + n2);
        return iBinder;
    }

    public static Bundle q(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(n + n2);
        return bundle;
    }

    public static byte[] r(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        byte[] arrby = parcel.createByteArray();
        parcel.setDataPosition(n + n2);
        return arrby;
    }

    public static byte[][] s(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        int n3 = parcel.dataPosition();
        if (n2 == 0) {
            return null;
        }
        int n4 = parcel.readInt();
        byte[][] arrarrby = new byte[n4][];
        for (n = 0; n < n4; ++n) {
            arrarrby[n] = parcel.createByteArray();
        }
        parcel.setDataPosition(n3 + n2);
        return arrarrby;
    }

    public static boolean[] t(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        boolean[] arrbl = parcel.createBooleanArray();
        parcel.setDataPosition(n + n2);
        return arrbl;
    }

    public static int[] u(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        int[] arrn = parcel.createIntArray();
        parcel.setDataPosition(n + n2);
        return arrn;
    }

    public static long[] v(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        long[] arrl = parcel.createLongArray();
        parcel.setDataPosition(n + n2);
        return arrl;
    }

    public static BigInteger[] w(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        int n3 = parcel.dataPosition();
        if (n2 == 0) {
            return null;
        }
        int n4 = parcel.readInt();
        BigInteger[] arrbigInteger = new BigInteger[n4];
        for (n = 0; n < n4; ++n) {
            arrbigInteger[n] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(n3 + n2);
        return arrbigInteger;
    }

    public static float[] x(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        float[] arrf = parcel.createFloatArray();
        parcel.setDataPosition(n + n2);
        return arrf;
    }

    public static double[] y(Parcel parcel, int n) {
        n = a.a(parcel, n);
        int n2 = parcel.dataPosition();
        if (n == 0) {
            return null;
        }
        double[] arrd = parcel.createDoubleArray();
        parcel.setDataPosition(n + n2);
        return arrd;
    }

    public static BigDecimal[] z(Parcel parcel, int n) {
        int n2 = a.a(parcel, n);
        int n3 = parcel.dataPosition();
        if (n2 == 0) {
            return null;
        }
        int n4 = parcel.readInt();
        BigDecimal[] arrbigDecimal = new BigDecimal[n4];
        for (n = 0; n < n4; ++n) {
            byte[] arrby = parcel.createByteArray();
            int n5 = parcel.readInt();
            arrbigDecimal[n] = new BigDecimal(new BigInteger(arrby), n5);
        }
        parcel.setDataPosition(n3 + n2);
        return arrbigDecimal;
    }

    public static class a
    extends RuntimeException {
        public a(String string, Parcel parcel) {
            super(string + " Parcel: pos=" + parcel.dataPosition() + " size=" + parcel.dataSize());
        }
    }

}

