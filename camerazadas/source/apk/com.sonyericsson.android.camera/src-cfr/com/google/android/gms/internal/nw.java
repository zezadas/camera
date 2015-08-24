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
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class nw
extends jj
implements Moment {
    public static final nx CREATOR = new nx();
    private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
    String BL;
    final int BR;
    String amP;
    nu amX;
    nu amY;
    final Set<Integer> amc;
    String uO;

    static {
        amb.put("id", ji.a.l("id", 2));
        amb.put("result", ji.a.a("result", 4, nu.class));
        amb.put("startDate", ji.a.l("startDate", 5));
        amb.put("target", ji.a.a("target", 6, nu.class));
        amb.put("type", ji.a.l("type", 7));
    }

    public nw() {
        this.BR = 1;
        this.amc = new HashSet<Integer>();
    }

    nw(Set<Integer> set, int n, String string, nu nu, String string2, nu nu2, String string3) {
        this.amc = set;
        this.BR = n;
        this.BL = string;
        this.amX = nu;
        this.amP = string2;
        this.amY = nu2;
        this.uO = string3;
    }

    public nw(Set<Integer> set, String string, nu nu, String string2, nu nu2, String string3) {
        this.amc = set;
        this.BR = 1;
        this.BL = string;
        this.amX = nu;
        this.amP = string2;
        this.amY = nu2;
        this.uO = string3;
    }

    @Override
    protected boolean a(ji.a a) {
        return this.amc.contains(a.hm());
    }

    @Override
    protected Object b(ji.a a) {
        switch (a.hm()) {
            default: {
                throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
            }
            case 2: {
                return this.BL;
            }
            case 4: {
                return this.amX;
            }
            case 5: {
                return this.amP;
            }
            case 6: {
                return this.amY;
            }
            case 7: 
        }
        return this.uO;
    }

    @Override
    public int describeContents() {
        nx nx = CREATOR;
        return 0;
    }

    public boolean equals(Object object) {
        if (!(object instanceof nw)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        object = (nw)object;
        for (ji.a a : amb.values()) {
            if (this.a(a)) {
                if (object.a(a)) {
                    if (this.b(a).equals(object.b(a))) continue;
                    return false;
                }
                return false;
            }
            if (!object.a(a)) continue;
            return false;
        }
        return true;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.ns();
    }

    @Override
    public String getId() {
        return this.BL;
    }

    @Override
    public ItemScope getResult() {
        return this.amX;
    }

    @Override
    public String getStartDate() {
        return this.amP;
    }

    @Override
    public ItemScope getTarget() {
        return this.amY;
    }

    @Override
    public String getType() {
        return this.uO;
    }

    @Override
    public boolean hasId() {
        return this.amc.contains(2);
    }

    @Override
    public boolean hasResult() {
        return this.amc.contains(4);
    }

    @Override
    public boolean hasStartDate() {
        return this.amc.contains(5);
    }

    @Override
    public boolean hasTarget() {
        return this.amc.contains(6);
    }

    @Override
    public boolean hasType() {
        return this.amc.contains(7);
    }

    public int hashCode() {
        Iterator iterator = amb.values().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            ji.a a = iterator.next();
            if (!this.a(a)) continue;
            int n2 = a.hm();
            n = this.b(a).hashCode() + (n + n2);
        }
        return n;
    }

    @Override
    public HashMap<String, ji.a<?, ?>> hf() {
        return amb;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public nw ns() {
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        nx nx = CREATOR;
        nx.a(this, parcel, n);
    }
}

