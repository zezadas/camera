/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.location.Location;

public interface LocationSource {
    public void activate(OnLocationChangedListener var1);

    public void deactivate();

    public static interface OnLocationChangedListener {
        public void onLocationChanged(Location var1);
    }

}

