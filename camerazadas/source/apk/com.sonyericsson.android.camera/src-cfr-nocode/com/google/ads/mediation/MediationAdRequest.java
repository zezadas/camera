/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Date;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
@Deprecated
public final class MediationAdRequest {
    private final Date d;
    private final AdRequest.Gender e;
    private final Set<String> f;
    private final boolean g;
    private final Location h;

    public MediationAdRequest(Date var1, AdRequest.Gender var2, Set<String> var3, boolean var4, Location var5);

    public Integer getAgeInYears();

    public Date getBirthday();

    public AdRequest.Gender getGender();

    public Set<String> getKeywords();

    public Location getLocation();

    public boolean isTesting();
}

