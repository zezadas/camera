/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bj;
import com.google.android.gms.internal.ez;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

@ez
public class ax {
    public static final ax oe = new ax();

    private ax() {
    }

    public static ax bb() {
        return oe;
    }

    /*
     * Enabled aggressive block sorting
     */
    public av a(Context object, bg bg) {
        Set<String> set = bg.getBirthday();
        long l = set != null ? set.getTime() : -1;
        String string = bg.getContentUrl();
        int n = bg.getGender();
        set = bg.getKeywords();
        set = !set.isEmpty() ? Collections.unmodifiableList(new ArrayList(set)) : null;
        boolean bl = bg.isTestDevice((Context)object);
        int n2 = bg.bg();
        Location location = bg.getLocation();
        Bundle bundle = bg.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean bl2 = bg.getManualImpressionsEnabled();
        String string2 = bg.getPublisherProvidedId();
        object = bg.bd();
        if (object != null) {
            object = new bj((SearchAdRequest)object);
            return new av(4, l, bundle, n, (List<String>)set, bl, n2, bl2, string2, (bj)object, location, string, bg.bf());
        }
        object = null;
        return new av(4, l, bundle, n, (List<String>)set, bl, n2, bl2, string2, (bj)object, location, string, bg.bf());
    }
}

