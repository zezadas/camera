/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.location.Location;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.a;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ez;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@ez
public final class db {
    public static int a(AdRequest.ErrorCode errorCode) {
        switch (.qL[errorCode.ordinal()]) {
            default: {
                return 0;
            }
            case 2: {
                return 1;
            }
            case 3: {
                return 2;
            }
            case 4: 
        }
        return 3;
    }

    public static AdSize b(ay ay) {
        AdSize[] arradSize = new AdSize[]{AdSize.SMART_BANNER, AdSize.BANNER, AdSize.IAB_MRECT, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_WIDE_SKYSCRAPER};
        for (int i = 0; i < arradSize.length; ++i) {
            if (arradSize[i].getWidth() != ay.width || arradSize[i].getHeight() != ay.height) continue;
            return arradSize[i];
        }
        return new AdSize(a.a(ay.width, ay.height, ay.of));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static MediationAdRequest d(av av) {
        HashSet<String> hashSet;
        if (av.nV != null) {
            hashSet = new HashSet<String>(av.nV);
            do {
                return new MediationAdRequest(new Date(av.nT), db.k(av.nU), hashSet, av.nW, av.ob);
                break;
            } while (true);
        }
        hashSet = null;
        return new MediationAdRequest(new Date(av.nT), db.k(av.nU), hashSet, av.nW, av.ob);
    }

    public static AdRequest.Gender k(int n) {
        switch (n) {
            default: {
                return AdRequest.Gender.UNKNOWN;
            }
            case 2: {
                return AdRequest.Gender.FEMALE;
            }
            case 1: 
        }
        return AdRequest.Gender.MALE;
    }

}

