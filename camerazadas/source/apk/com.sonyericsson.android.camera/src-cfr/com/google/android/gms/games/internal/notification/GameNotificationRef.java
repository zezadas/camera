/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.internal.notification.GameNotification;

public final class GameNotificationRef
extends d
implements GameNotification {
    GameNotificationRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    public long getId() {
        return this.getLong("_id");
    }

    public String getText() {
        return this.getString("text");
    }

    public String getTitle() {
        return this.getString("title");
    }

    public int getType() {
        return this.getInteger("type");
    }

    public String lk() {
        return this.getString("notification_id");
    }

    public String ll() {
        return this.getString("ticker");
    }

    public String lm() {
        return this.getString("coalesced_text");
    }

    public boolean ln() {
        if (this.getInteger("acknowledged") > 0) {
            return true;
        }
        return false;
    }

    public boolean lo() {
        if (this.getInteger("alert_level") == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return n.h(this).a("Id", this.getId()).a("NotificationId", this.lk()).a("Type", this.getType()).a("Title", this.getTitle()).a("Ticker", this.ll()).a("Text", this.getText()).a("CoalescedText", this.lm()).a("isAcknowledged", this.ln()).a("isSilent", this.lo()).toString();
    }
}

