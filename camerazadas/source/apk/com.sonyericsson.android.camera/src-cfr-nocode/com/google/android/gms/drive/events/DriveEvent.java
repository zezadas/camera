/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.c;

public interface DriveEvent
extends SafeParcelable {
    public int getType();

    public static interface Listener<E extends DriveEvent>
    extends c {
        public void onEvent(E var1);
    }

}

