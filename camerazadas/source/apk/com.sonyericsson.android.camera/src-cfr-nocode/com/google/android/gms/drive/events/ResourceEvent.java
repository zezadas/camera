/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.DriveEvent;

public interface ResourceEvent
extends DriveEvent {
    public DriveId getDriveId();
}

