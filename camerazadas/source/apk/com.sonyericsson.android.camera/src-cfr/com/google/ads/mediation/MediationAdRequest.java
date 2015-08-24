/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

@Deprecated
public final class MediationAdRequest {
    private final Date d;
    private final AdRequest.Gender e;
    private final Set<String> f;
    private final boolean g;
    private final Location h;

    public MediationAdRequest(Date date, AdRequest.Gender gender, Set<String> set, boolean bl, Location location) {
        this.d = date;
        this.e = gender;
        this.f = set;
        this.g = bl;
        this.h = location;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Integer getAgeInYears() {
        if (this.d == null) return null;
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(this.d);
        Integer n = calendar2.get(1) - calendar.get(1);
        if (calendar2.get(2) < calendar.get(2)) return n - 1;
        Integer n2 = n;
        if (calendar2.get(2) != calendar.get(2)) return n2;
        n2 = n;
        if (calendar2.get(5) >= calendar.get(5)) return n2;
        return n - 1;
    }

    public Date getBirthday() {
        return this.d;
    }

    public AdRequest.Gender getGender() {
        return this.e;
    }

    public Set<String> getKeywords() {
        return this.f;
    }

    public Location getLocation() {
        return this.h;
    }

    public boolean isTesting() {
        return this.g;
    }
}

