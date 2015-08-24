/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.os.Bundle;
import com.google.android.gms.wearable.Asset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataMap {
    public static final String TAG = "DataMap";
    private final HashMap<String, Object> auW;

    public DataMap();

    private static void a(Bundle var0, String var1, Object var2);

    private static void a(DataMap var0, String var1, Object var2);

    private void a(String var1, Object var2, String var3, ClassCastException var4);

    private void a(String var1, Object var2, String var3, Object var4, ClassCastException var5);

    private static boolean a(Asset var0, Asset var1);

    private static boolean a(DataMap var0, DataMap var1);

    public static ArrayList<DataMap> arrayListFromBundleArrayList(ArrayList<Bundle> var0);

    private static int d(ArrayList<?> var0);

    public static DataMap fromBundle(Bundle var0);

    public static DataMap fromByteArray(byte[] var0);

    public void clear();

    public boolean containsKey(String var1);

    public boolean equals(Object var1);

    public <T> T get(String var1);

    public Asset getAsset(String var1);

    public boolean getBoolean(String var1);

    public boolean getBoolean(String var1, boolean var2);

    public byte getByte(String var1);

    public byte getByte(String var1, byte var2);

    public byte[] getByteArray(String var1);

    public DataMap getDataMap(String var1);

    public ArrayList<DataMap> getDataMapArrayList(String var1);

    public double getDouble(String var1);

    public double getDouble(String var1, double var2);

    public float getFloat(String var1);

    public float getFloat(String var1, float var2);

    public float[] getFloatArray(String var1);

    public int getInt(String var1);

    public int getInt(String var1, int var2);

    public ArrayList<Integer> getIntegerArrayList(String var1);

    public long getLong(String var1);

    public long getLong(String var1, long var2);

    public long[] getLongArray(String var1);

    public String getString(String var1);

    public String getString(String var1, String var2);

    public String[] getStringArray(String var1);

    public ArrayList<String> getStringArrayList(String var1);

    public int hashCode();

    public boolean isEmpty();

    public Set<String> keySet();

    public void putAll(DataMap var1);

    public void putAsset(String var1, Asset var2);

    public void putBoolean(String var1, boolean var2);

    public void putByte(String var1, byte var2);

    public void putByteArray(String var1, byte[] var2);

    public void putDataMap(String var1, DataMap var2);

    public void putDataMapArrayList(String var1, ArrayList<DataMap> var2);

    public void putDouble(String var1, double var2);

    public void putFloat(String var1, float var2);

    public void putFloatArray(String var1, float[] var2);

    public void putInt(String var1, int var2);

    public void putIntegerArrayList(String var1, ArrayList<Integer> var2);

    public void putLong(String var1, long var2);

    public void putLongArray(String var1, long[] var2);

    public void putString(String var1, String var2);

    public void putStringArray(String var1, String[] var2);

    public void putStringArrayList(String var1, ArrayList<String> var2);

    public Object remove(String var1);

    public int size();

    public Bundle toBundle();

    public byte[] toByteArray();

    public String toString();
}

