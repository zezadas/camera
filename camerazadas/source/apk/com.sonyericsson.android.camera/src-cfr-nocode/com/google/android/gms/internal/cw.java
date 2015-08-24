/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.internal.ez;
import java.util.Date;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class cw
implements MediationAdRequest {
    private final Date d;
    private final Set<String> f;
    private final boolean g;
    private final Location h;
    private final int om;
    private final int qD;

    public cw(Date var1, int var2, Set<String> var3, Location var4, boolean var5, int var6);

    @Override
    public Date getBirthday();

    @Override
    public int getGender();

    @Override
    public Set<String> getKeywords();

    @Override
    public Location getLocation();

    @Override
    public boolean isTesting();

    @Override
    public int taggedForChildDirectedTreatment();
}

