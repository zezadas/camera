/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jm;
import com.google.android.gms.internal.jq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class jp
extends ji
implements SafeParcelable {
    public static final jq CREATOR;
    private final int BR;
    private final jm MG;
    private final Parcel MN;
    private final int MO;
    private int MP;
    private int MQ;
    private final String mClassName;

    static;

    jp(int var1, Parcel var2, jm var3);

    private jp(SafeParcelable var1, jm var2, String var3);

    public static <T extends ji> jp a(T var0);

    private static void a(jm var0, ji var1);

    private void a(StringBuilder var1, int var2, Object var3);

    private void a(StringBuilder var1, ji.a<?, ?> var2, Parcel var3, int var4);

    private void a(StringBuilder var1, String var2, ji.a<?, ?> var3, Parcel var4, int var5);

    private void a(StringBuilder var1, HashMap<String, ji.a<?, ?>> var2, Parcel var3);

    private static jm b(ji var0);

    private static HashMap<Integer, Map.Entry<String, ji.a<?, ?>>> b(HashMap<String, ji.a<?, ?>> var0);

    private void b(StringBuilder var1, ji.a<?, ?> var2, Parcel var3, int var4);

    private void b(StringBuilder var1, ji.a<?, ?> var2, Object var3);

    private void b(StringBuilder var1, ji.a<?, ?> var2, ArrayList<?> var3);

    public static HashMap<String, String> e(Bundle var0);

    @Override
    protected Object ba(String var1);

    @Override
    protected boolean bb(String var1);

    @Override
    public int describeContents();

    public int getVersionCode();

    @Override
    public HashMap<String, ji.a<?, ?>> hf();

    public Parcel hx();

    jm hy();

    @Override
    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

