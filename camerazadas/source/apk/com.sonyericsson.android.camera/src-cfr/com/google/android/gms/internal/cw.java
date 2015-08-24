/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.internal.ez;
import java.util.Date;
import java.util.Set;

@ez
public final class cw
implements MediationAdRequest {
    private final Date d;
    private final Set<String> f;
    private final boolean g;
    private final Location h;
    private final int om;
    private final int qD;

    public cw(Date date, int n, Set<String> set, Location location, boolean bl, int n2) {
        this.d = date;
        this.om = n;
        this.f = set;
        this.h = location;
        this.g = bl;
        this.qD = n2;
    }

    @Override
    public Date getBirthday() {
        return this.d;
    }

    @Override
    public int getGender() {
        return this.om;
    }

    @Override
    public Set<String> getKeywords() {
        return this.f;
    }

    @Override
    public Location getLocation() {
        return this.h;
    }

    @Override
    public boolean isTesting() {
        return this.g;
    }

    @Override
    public int taggedForChildDirectedTreatment() {
        return this.qD;
    }
}

