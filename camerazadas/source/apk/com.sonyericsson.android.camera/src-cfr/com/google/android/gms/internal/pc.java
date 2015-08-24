/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.pd;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class pc {
    /*
     * Enabled aggressive block sorting
     */
    private static int a(String string, pd.a.a[] arra) {
        int n = arra.length;
        int n2 = 0;
        int n3 = 14;
        while (n2 < n) {
            int n4;
            pd.a.a a = arra[n2];
            if (n3 == 14) {
                if (a.type == 9 || a.type == 2 || a.type == 6) {
                    n4 = a.type;
                } else {
                    n4 = n3;
                    if (a.type != 14) {
                        throw new IllegalArgumentException("Unexpected TypedValue type: " + a.type + " for key " + string);
                    }
                }
            } else {
                n4 = n3;
                if (a.type != n3) {
                    throw new IllegalArgumentException("The ArrayList elements should all be the same type, but ArrayList with key " + string + " contains items of type " + n3 + " and " + a.type);
                }
            }
            ++n2;
            n3 = n4;
        }
        return n3;
    }

    static int a(List<Asset> list, Asset asset) {
        list.add(asset);
        return list.size() - 1;
    }

    public static a a(DataMap dataMap) {
        pd pd = new pd();
        ArrayList<Asset> arrayList = new ArrayList<Asset>();
        pd.awd = pc.a(dataMap, arrayList);
        return new a(pd, arrayList);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static pd.a.a a(List<Asset> list, Object object) {
        pd.a.a a = new pd.a.a();
        if (object == null) {
            a.type = 14;
            return a;
        }
        a.awh = new pd.a.a.a();
        if (object instanceof String) {
            a.type = 2;
            a.awh.awj = (String)object;
            return a;
        }
        if (object instanceof Integer) {
            a.type = 6;
            a.awh.awn = (Integer)object;
            return a;
        }
        if (object instanceof Long) {
            a.type = 5;
            a.awh.awm = (Long)object;
            return a;
        }
        if (object instanceof Double) {
            a.type = 3;
            a.awh.awk = (Double)object;
            return a;
        }
        if (object instanceof Float) {
            a.type = 4;
            a.awh.awl = ((Float)object).floatValue();
            return a;
        }
        if (object instanceof Boolean) {
            a.type = 8;
            a.awh.awp = (Boolean)object;
            return a;
        }
        if (object instanceof Byte) {
            a.type = 7;
            a.awh.awo = ((Byte)object).byteValue();
            return a;
        }
        if (object instanceof byte[]) {
            a.type = 1;
            a.awh.awi = (byte[])object;
            return a;
        }
        if (object instanceof String[]) {
            a.type = 11;
            a.awh.aws = (String[])object;
            return a;
        }
        if (object instanceof long[]) {
            a.type = 12;
            a.awh.awt = (long[])object;
            return a;
        }
        if (object instanceof float[]) {
            a.type = 15;
            a.awh.awu = (float[])object;
            return a;
        }
        if (object instanceof Asset) {
            a.type = 13;
            a.awh.awv = pc.a(list, (Asset)object);
            return a;
        }
        if (object instanceof DataMap) {
            a.type = 9;
            object = (DataMap)object;
            Object object2 = object.keySet();
            pd.a[] arra = new pd.a[object2.size()];
            object2 = object2.iterator();
            int n = 0;
            do {
                if (!object2.hasNext()) {
                    a.awh.awq = arra;
                    return a;
                }
                String string = (String)object2.next();
                arra[n] = new pd.a();
                arra[n].name = string;
                arra[n].awf = pc.a(list, object.get(string));
                ++n;
            } while (true);
        }
        if (!(object instanceof ArrayList)) throw new RuntimeException("newFieldValueFromValue: unexpected value " + object.getClass().getSimpleName());
        a.type = 10;
        ArrayList arrayList = (ArrayList)object;
        pd.a.a[] arra = new pd.a.a[arrayList.size()];
        object = null;
        int n = arrayList.size();
        int n2 = 0;
        int n3 = 14;
        do {
            if (n2 >= n) {
                a.awh.awr = arra;
                return a;
            }
            Object e = arrayList.get(n2);
            pd.a.a a2 = pc.a(list, e);
            if (a2.type != 14 && a2.type != 2 && a2.type != 6 && a2.type != 9) {
                throw new IllegalArgumentException("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a " + e.getClass());
            }
            if (n3 == 14 && a2.type != 14) {
                n3 = a2.type;
                object = e;
            } else if (a2.type != n3) {
                throw new IllegalArgumentException("ArrayList elements must all be of the sameclass, but this one contains a " + object.getClass() + " and a " + e.getClass());
            }
            arra[n2] = a2;
            ++n2;
        } while (true);
    }

    public static DataMap a(a a) {
        DataMap dataMap = new DataMap();
        for (pd.a a2 : a.awb.awd) {
            pc.a(a.awc, dataMap, a2.name, a2.awf);
        }
        return dataMap;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static ArrayList a(List<Asset> list, pd.a.a.a arra, int n) {
        ArrayList<Object> arrayList = new ArrayList<Object>(arra.awr.length);
        for (pd.a.a a : arra.awr) {
            if (a.type == 14) {
                arrayList.add(null);
                continue;
            }
            if (n == 9) {
                DataMap dataMap = new DataMap();
                for (pd.a a2 : a.awh.awq) {
                    pc.a(list, dataMap, a2.name, a2.awf);
                }
                arrayList.add(dataMap);
                continue;
            }
            if (n == 2) {
                arrayList.add(a.awh.awj);
                continue;
            }
            if (n != 6) {
                throw new IllegalArgumentException("Unexpected typeOfArrayList: " + n);
            }
            arrayList.add(a.awh.awn);
        }
        return arrayList;
    }

    private static void a(List<Asset> arrayList, DataMap dataMap, String string, pd.a.a object) {
        int n = object.type;
        if (n == 14) {
            dataMap.putString(string, null);
            return;
        }
        pd.a[] arra = object.awh;
        if (n == 1) {
            dataMap.putByteArray(string, arra.awi);
            return;
        }
        if (n == 11) {
            dataMap.putStringArray(string, arra.aws);
            return;
        }
        if (n == 12) {
            dataMap.putLongArray(string, arra.awt);
            return;
        }
        if (n == 15) {
            dataMap.putFloatArray(string, arra.awu);
            return;
        }
        if (n == 2) {
            dataMap.putString(string, arra.awj);
            return;
        }
        if (n == 3) {
            dataMap.putDouble(string, arra.awk);
            return;
        }
        if (n == 4) {
            dataMap.putFloat(string, arra.awl);
            return;
        }
        if (n == 5) {
            dataMap.putLong(string, arra.awm);
            return;
        }
        if (n == 6) {
            dataMap.putInt(string, arra.awn);
            return;
        }
        if (n == 7) {
            dataMap.putByte(string, (byte)arra.awo);
            return;
        }
        if (n == 8) {
            dataMap.putBoolean(string, arra.awp);
            return;
        }
        if (n == 13) {
            if (arrayList == null) {
                throw new RuntimeException("populateBundle: unexpected type for: " + string);
            }
            dataMap.putAsset(string, arrayList.get((int)arra.awv));
            return;
        }
        if (n == 9) {
            object = new DataMap();
            for (pd.a a : arra.awq) {
                pc.a(arrayList, (DataMap)object, a.name, a.awf);
            }
            dataMap.putDataMap(string, (DataMap)object);
            return;
        }
        if (n == 10) {
            n = pc.a(string, arra.awr);
            arrayList = pc.a(arrayList, (pd.a.a.a)arra, n);
            if (n == 14) {
                dataMap.putStringArrayList(string, arrayList);
                return;
            }
            if (n == 9) {
                dataMap.putDataMapArrayList(string, arrayList);
                return;
            }
            if (n == 2) {
                dataMap.putStringArrayList(string, arrayList);
                return;
            }
            if (n == 6) {
                dataMap.putIntegerArrayList(string, arrayList);
                return;
            }
            throw new IllegalStateException("Unexpected typeOfArrayList: " + n);
        }
        throw new RuntimeException("populateBundle: unexpected type " + n);
    }

    private static pd.a[] a(DataMap dataMap, List<Asset> list) {
        Object object = dataMap.keySet();
        pd.a[] arra = new pd.a[object.size()];
        object = object.iterator();
        int n = 0;
        while (object.hasNext()) {
            String string = (String)object.next();
            Object t = dataMap.get(string);
            arra[n] = new pd.a();
            arra[n].name = string;
            arra[n].awf = pc.a(list, t);
            ++n;
        }
        return arra;
    }

    public static class a {
        public final pd awb;
        public final List<Asset> awc;

        public a(pd pd, List<Asset> list) {
            this.awb = pd;
            this.awc = list;
        }
    }

}

