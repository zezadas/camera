/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jj;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.nx;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;
import java.util.HashMap;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class nw
extends jj
implements Moment {
    public static final nx CREATOR;
    private static final HashMap<String, ji.a<?, ?>> amb;
    String BL;
    final int BR;
    String amP;
    nu amX;
    nu amY;
    final Set<Integer> amc;
    String uO;

    static;

    public nw();

    nw(Set<Integer> var1, int var2, String var3, nu var4, String var5, nu var6, String var7);

    public nw(Set<Integer> var1, String var2, nu var3, String var4, nu var5, String var6);

    @Override
    protected boolean a(ji.a var1);

    @Override
    protected Object b(ji.a var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getId();

    @Override
    public ItemScope getResult();

    @Override
    public String getStartDate();

    @Override
    public ItemScope getTarget();

    @Override
    public String getType();

    @Override
    public boolean hasId();

    @Override
    public boolean hasResult();

    @Override
    public boolean hasStartDate();

    @Override
    public boolean hasTarget();

    @Override
    public boolean hasType();

    public int hashCode();

    @Override
    public HashMap<String, ji.a<?, ?>> hf();

    @Override
    public boolean isDataValid();

    public nw ns();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

