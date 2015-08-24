/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.pc;
import com.google.android.gms.internal.pd;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import com.google.android.gms.wearable.Asset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class DataMap {
    public static final String TAG = "DataMap";
    private final HashMap<String, Object> auW = new HashMap();

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void a(Bundle bundle, String string, Object iterator) {
        if (iterator instanceof String) {
            bundle.putString(string, (String)iterator);
            return;
        }
        if (iterator instanceof Integer) {
            bundle.putInt(string, (Integer)iterator);
            return;
        }
        if (iterator instanceof Long) {
            bundle.putLong(string, (Long)iterator);
            return;
        }
        if (iterator instanceof Double) {
            bundle.putDouble(string, (Double)iterator);
            return;
        }
        if (iterator instanceof Float) {
            bundle.putFloat(string, ((Float)iterator).floatValue());
            return;
        }
        if (iterator instanceof Boolean) {
            bundle.putBoolean(string, (Boolean)iterator);
            return;
        }
        if (iterator instanceof Byte) {
            bundle.putByte(string, ((Byte)iterator).byteValue());
            return;
        }
        if (iterator instanceof byte[]) {
            bundle.putByteArray(string, (byte[])iterator);
            return;
        }
        if (iterator instanceof String[]) {
            bundle.putStringArray(string, (String[])iterator);
            return;
        }
        if (iterator instanceof long[]) {
            bundle.putLongArray(string, (long[])iterator);
            return;
        }
        if (iterator instanceof float[]) {
            bundle.putFloatArray(string, (float[])iterator);
            return;
        }
        if (iterator instanceof Asset) {
            bundle.putParcelable(string, (Asset)iterator);
            return;
        }
        if (iterator instanceof DataMap) {
            bundle.putParcelable(string, ((DataMap)iterator).toBundle());
            return;
        }
        if (!(iterator instanceof ArrayList)) return;
        switch (DataMap.d((ArrayList)iterator)) {
            default: {
                return;
            }
            case 0: {
                bundle.putStringArrayList(string, (ArrayList)iterator);
                return;
            }
            case 1: {
                bundle.putStringArrayList(string, (ArrayList)iterator);
                return;
            }
            case 3: {
                bundle.putStringArrayList(string, (ArrayList)iterator);
                return;
            }
            case 2: {
                bundle.putIntegerArrayList(string, (ArrayList)iterator);
                return;
            }
            case 4: 
        }
        ArrayList<Bundle> arrayList = new ArrayList<Bundle>();
        iterator = ((ArrayList)iterator).iterator();
        do {
            if (!iterator.hasNext()) {
                bundle.putParcelableArrayList(string, arrayList);
                return;
            }
            arrayList.add(((DataMap)iterator.next()).toBundle());
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static void a(DataMap dataMap, String string, Object object) {
        if (object instanceof String) {
            dataMap.putString(string, (String)object);
            return;
        }
        if (object instanceof Integer) {
            dataMap.putInt(string, (Integer)object);
            return;
        }
        if (object instanceof Long) {
            dataMap.putLong(string, (Long)object);
            return;
        }
        if (object instanceof Double) {
            dataMap.putDouble(string, (Double)object);
            return;
        }
        if (object instanceof Float) {
            dataMap.putFloat(string, ((Float)object).floatValue());
            return;
        }
        if (object instanceof Boolean) {
            dataMap.putBoolean(string, (Boolean)object);
            return;
        }
        if (object instanceof Byte) {
            dataMap.putByte(string, ((Byte)object).byteValue());
            return;
        }
        if (object instanceof byte[]) {
            dataMap.putByteArray(string, (byte[])object);
            return;
        }
        if (object instanceof String[]) {
            dataMap.putStringArray(string, (String[])object);
            return;
        }
        if (object instanceof long[]) {
            dataMap.putLongArray(string, (long[])object);
            return;
        }
        if (object instanceof float[]) {
            dataMap.putFloatArray(string, (float[])object);
            return;
        }
        if (object instanceof Asset) {
            dataMap.putAsset(string, (Asset)object);
            return;
        }
        if (object instanceof Bundle) {
            dataMap.putDataMap(string, DataMap.fromBundle((Bundle)object));
            return;
        }
        if (!(object instanceof ArrayList)) return;
        switch (DataMap.d((ArrayList)object)) {
            default: {
                return;
            }
            case 0: {
                dataMap.putStringArrayList(string, (ArrayList)object);
                return;
            }
            case 1: {
                dataMap.putStringArrayList(string, (ArrayList)object);
                return;
            }
            case 3: {
                dataMap.putStringArrayList(string, (ArrayList)object);
                return;
            }
            case 2: {
                dataMap.putIntegerArrayList(string, (ArrayList)object);
                return;
            }
            case 5: 
        }
        dataMap.putDataMapArrayList(string, DataMap.arrayListFromBundleArrayList((ArrayList)object));
    }

    private void a(String string, Object object, String string2, ClassCastException classCastException) {
        this.a(string, object, string2, "<null>", classCastException);
    }

    private void a(String string, Object object, String string2, Object object2, ClassCastException classCastException) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Key ");
        stringBuilder.append(string);
        stringBuilder.append(" expected ");
        stringBuilder.append(string2);
        stringBuilder.append(" but value was a ");
        stringBuilder.append(object.getClass().getName());
        stringBuilder.append(".  The default value ");
        stringBuilder.append(object2);
        stringBuilder.append(" was returned.");
        Log.w("DataMap", stringBuilder.toString());
        Log.w("DataMap", "Attempt to cast generated internal exception:", classCastException);
    }

    private static boolean a(Asset asset, Asset asset2) {
        if (asset == null || asset2 == null) {
            if (asset == asset2) {
                return true;
            }
            return false;
        }
        if (!TextUtils.isEmpty((CharSequence)asset.getDigest())) {
            return asset.getDigest().equals(asset2.getDigest());
        }
        return Arrays.equals(asset.getData(), asset2.getData());
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean a(DataMap var0, DataMap var1_1) {
        if (var0.size() != var1_1.size()) {
            return false;
        }
        var3_2 = var0.keySet().iterator();
        do lbl-1000: // 7 sources:
        {
            if (var3_2.hasNext() == false) return true;
            var5_4 = var3_2.next();
            var4_3 = var0.get((String)var5_4);
            var5_4 = var1_1.get((String)var5_4);
            if (!(var4_3 instanceof Asset)) ** GOTO lbl13
            if (var5_4 instanceof Asset == false) return false;
            if (DataMap.a((Asset)var4_3, (Asset)var5_4)) ** GOTO lbl-1000
            return false;
lbl13: // 1 sources:
            if (!(var4_3 instanceof String[])) ** GOTO lbl17
            if (var5_4 instanceof String[] == false) return false;
            if (Arrays.equals((String[])var4_3, (String[])var5_4)) ** GOTO lbl-1000
            return false;
lbl17: // 1 sources:
            if (!(var4_3 instanceof long[])) ** GOTO lbl21
            if (var5_4 instanceof long[] == false) return false;
            if (Arrays.equals((long[])var4_3, (long[])var5_4)) ** GOTO lbl-1000
            return false;
lbl21: // 1 sources:
            if (!(var4_3 instanceof float[])) ** GOTO lbl25
            if (var5_4 instanceof float[] == false) return false;
            if (Arrays.equals((float[])var4_3, (float[])var5_4)) ** GOTO lbl-1000
            return false;
lbl25: // 1 sources:
            if (!(var4_3 instanceof byte[])) ** GOTO lbl29
            if (var5_4 instanceof byte[] == false) return false;
            if (Arrays.equals((byte[])var4_3, (byte[])var5_4)) ** GOTO lbl-1000
            return false;
lbl29: // 1 sources:
            if (var4_3 != null && var5_4 != null) continue;
            if (var4_3 != var5_4) return false;
            return true;
        } while (var4_3.equals(var5_4));
        return false;
    }

    public static ArrayList<DataMap> arrayListFromBundleArrayList(ArrayList<Bundle> object) {
        ArrayList<DataMap> arrayList = new ArrayList<DataMap>();
        object = object.iterator();
        while (object.hasNext()) {
            arrayList.add(DataMap.fromBundle((Bundle)object.next()));
        }
        return arrayList;
    }

    private static int d(ArrayList<?> object) {
        if (object.isEmpty()) {
            return 0;
        }
        for (Object e : object) {
            if (e == null) continue;
            if (e instanceof Integer) {
                return 2;
            }
            if (e instanceof String) {
                return 3;
            }
            if (e instanceof DataMap) {
                return 4;
            }
            if (!(e instanceof Bundle)) continue;
            return 5;
        }
        return 1;
    }

    public static DataMap fromBundle(Bundle bundle) {
        bundle.setClassLoader(Asset.class.getClassLoader());
        DataMap dataMap = new DataMap();
        for (String string : bundle.keySet()) {
            DataMap.a(dataMap, string, bundle.get(string));
        }
        return dataMap;
    }

    public static DataMap fromByteArray(byte[] object) {
        try {
            object = pc.a(new pc.a(pd.n((byte[])object), new ArrayList<Asset>()));
            return object;
        }
        catch (pm var0_1) {
            throw new IllegalArgumentException("Unable to convert data", var0_1);
        }
    }

    public void clear() {
        this.auW.clear();
    }

    public boolean containsKey(String string) {
        return this.auW.containsKey(string);
    }

    public boolean equals(Object object) {
        if (!(object instanceof DataMap)) {
            return false;
        }
        return DataMap.a(this, (DataMap)object);
    }

    public <T> T get(String string) {
        return (T)this.auW.get(string);
    }

    public Asset getAsset(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            Asset asset = (Asset)object;
            return asset;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "Asset", var3_4);
            return null;
        }
    }

    public boolean getBoolean(String string) {
        return this.getBoolean(string, false);
    }

    public boolean getBoolean(String string, boolean bl) {
        Object object = this.auW.get(string);
        if (object == null) {
            return bl;
        }
        try {
            boolean bl2 = (Boolean)object;
            return bl2;
        }
        catch (ClassCastException var5_5) {
            this.a(string, object, "Boolean", bl, var5_5);
            return bl;
        }
    }

    public byte getByte(String string) {
        return this.getByte(string, 0);
    }

    public byte getByte(String string, byte by) {
        Object object = this.auW.get(string);
        if (object == null) {
            return by;
        }
        try {
            byte by2 = ((Byte)object).byteValue();
            return by2;
        }
        catch (ClassCastException var5_5) {
            this.a(string, object, "Byte", Byte.valueOf(by), var5_5);
            return by;
        }
    }

    public byte[] getByteArray(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            byte[] arrby = (byte[])object;
            return arrby;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "byte[]", var3_4);
            return null;
        }
    }

    public DataMap getDataMap(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            DataMap dataMap = (DataMap)object;
            return dataMap;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "DataMap", var3_4);
            return null;
        }
    }

    public ArrayList<DataMap> getDataMapArrayList(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            ArrayList arrayList = (ArrayList)object;
            return arrayList;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "ArrayList<DataMap>", var3_4);
            return null;
        }
    }

    public double getDouble(String string) {
        return this.getDouble(string, 0.0);
    }

    public double getDouble(String string, double d) {
        Object object = this.auW.get(string);
        if (object == null) {
            return d;
        }
        try {
            double d2 = (Double)object;
            return d2;
        }
        catch (ClassCastException var7_5) {
            this.a(string, object, "Double", d, var7_5);
            return d;
        }
    }

    public float getFloat(String string) {
        return this.getFloat(string, 0.0f);
    }

    public float getFloat(String string, float f) {
        Object object = this.auW.get(string);
        if (object == null) {
            return f;
        }
        try {
            float f2 = ((Float)object).floatValue();
            return f2;
        }
        catch (ClassCastException var5_5) {
            this.a(string, object, "Float", Float.valueOf(f), var5_5);
            return f;
        }
    }

    public float[] getFloatArray(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            float[] arrf = (float[])object;
            return arrf;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "float[]", var3_4);
            return null;
        }
    }

    public int getInt(String string) {
        return this.getInt(string, 0);
    }

    public int getInt(String string, int n) {
        Object object = this.auW.get(string);
        if (object == null) {
            return n;
        }
        try {
            int n2 = (Integer)object;
            return n2;
        }
        catch (ClassCastException var5_5) {
            this.a(string, object, "Integer", var5_5);
            return n;
        }
    }

    public ArrayList<Integer> getIntegerArrayList(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            ArrayList arrayList = (ArrayList)object;
            return arrayList;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "ArrayList<Integer>", var3_4);
            return null;
        }
    }

    public long getLong(String string) {
        return this.getLong(string, 0);
    }

    public long getLong(String string, long l) {
        Object object = this.auW.get(string);
        if (object == null) {
            return l;
        }
        try {
            long l2 = (Long)object;
            return l2;
        }
        catch (ClassCastException var7_5) {
            this.a(string, object, "long", var7_5);
            return l;
        }
    }

    public long[] getLongArray(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            long[] arrl = (long[])object;
            return arrl;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "long[]", var3_4);
            return null;
        }
    }

    public String getString(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            String string2 = (String)object;
            return string2;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "String", var3_4);
            return null;
        }
    }

    public String getString(String string, String string2) {
        if ((string = this.getString(string)) == null) {
            return string2;
        }
        return string;
    }

    public String[] getStringArray(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            String[] arrstring = (String[])object;
            return arrstring;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "String[]", var3_4);
            return null;
        }
    }

    public ArrayList<String> getStringArrayList(String string) {
        Object object = this.auW.get(string);
        if (object == null) {
            return null;
        }
        try {
            ArrayList arrayList = (ArrayList)object;
            return arrayList;
        }
        catch (ClassCastException var3_4) {
            this.a(string, object, "ArrayList<String>", var3_4);
            return null;
        }
    }

    public int hashCode() {
        return this.auW.hashCode() * 29;
    }

    public boolean isEmpty() {
        return this.auW.isEmpty();
    }

    public Set<String> keySet() {
        return this.auW.keySet();
    }

    public void putAll(DataMap dataMap) {
        for (String string : dataMap.keySet()) {
            this.auW.put(string, dataMap.get(string));
        }
    }

    public void putAsset(String string, Asset asset) {
        this.auW.put(string, asset);
    }

    public void putBoolean(String string, boolean bl) {
        this.auW.put(string, bl);
    }

    public void putByte(String string, byte by) {
        this.auW.put(string, Byte.valueOf(by));
    }

    public void putByteArray(String string, byte[] arrby) {
        this.auW.put(string, arrby);
    }

    public void putDataMap(String string, DataMap dataMap) {
        this.auW.put(string, dataMap);
    }

    public void putDataMapArrayList(String string, ArrayList<DataMap> arrayList) {
        this.auW.put(string, arrayList);
    }

    public void putDouble(String string, double d) {
        this.auW.put(string, d);
    }

    public void putFloat(String string, float f) {
        this.auW.put(string, Float.valueOf(f));
    }

    public void putFloatArray(String string, float[] arrf) {
        this.auW.put(string, arrf);
    }

    public void putInt(String string, int n) {
        this.auW.put(string, n);
    }

    public void putIntegerArrayList(String string, ArrayList<Integer> arrayList) {
        this.auW.put(string, arrayList);
    }

    public void putLong(String string, long l) {
        this.auW.put(string, l);
    }

    public void putLongArray(String string, long[] arrl) {
        this.auW.put(string, arrl);
    }

    public void putString(String string, String string2) {
        this.auW.put(string, string2);
    }

    public void putStringArray(String string, String[] arrstring) {
        this.auW.put(string, arrstring);
    }

    public void putStringArrayList(String string, ArrayList<String> arrayList) {
        this.auW.put(string, arrayList);
    }

    public Object remove(String string) {
        return this.auW.remove(string);
    }

    public int size() {
        return this.auW.size();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        for (String string : this.auW.keySet()) {
            DataMap.a(bundle, string, this.auW.get(string));
        }
        return bundle;
    }

    public byte[] toByteArray() {
        return pn.f(pc.a((DataMap)this).awb);
    }

    public String toString() {
        return this.auW.toString();
    }
}

