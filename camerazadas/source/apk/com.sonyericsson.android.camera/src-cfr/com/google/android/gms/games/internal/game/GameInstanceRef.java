/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.games.internal.constants.PlatformType;
import com.google.android.gms.games.internal.game.GameInstance;

public final class GameInstanceRef
extends d
implements GameInstance {
    GameInstanceRef(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    public String getApplicationId() {
        return this.getString("external_game_id");
    }

    public String getDisplayName() {
        return this.getString("instance_display_name");
    }

    public String getPackageName() {
        return this.getString("package_name");
    }

    public int iR() {
        return this.getInteger("platform_type");
    }

    public boolean le() {
        if (this.getInteger("real_time_support") > 0) {
            return true;
        }
        return false;
    }

    public boolean lf() {
        if (this.getInteger("turn_based_support") > 0) {
            return true;
        }
        return false;
    }

    public boolean lg() {
        if (this.getInteger("piracy_check") > 0) {
            return true;
        }
        return false;
    }

    public boolean lh() {
        if (this.getInteger("installed") > 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return n.h(this).a("ApplicationId", this.getApplicationId()).a("DisplayName", this.getDisplayName()).a("SupportsRealTime", this.le()).a("SupportsTurnBased", this.lf()).a("PlatformType", PlatformType.dH(this.iR())).a("PackageName", this.getPackageName()).a("PiracyCheckEnabled", this.lg()).a("Installed", this.lh()).toString();
    }
}

