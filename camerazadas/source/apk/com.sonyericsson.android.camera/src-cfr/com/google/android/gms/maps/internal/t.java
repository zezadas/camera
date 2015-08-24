/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.Parcelable;

public final class t {
    private t() {
    }

    public static void a(Bundle bundle, String string, Parcelable parcelable) {
        Bundle bundle2;
        bundle.setClassLoader(t.class.getClassLoader());
        Bundle bundle3 = bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        bundle3.setClassLoader(t.class.getClassLoader());
        bundle3.putParcelable(string, parcelable);
        bundle.putBundle("map_state", bundle3);
    }
}

