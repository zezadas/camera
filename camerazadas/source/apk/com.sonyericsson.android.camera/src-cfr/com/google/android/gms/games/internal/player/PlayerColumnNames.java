/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.player;

import android.text.TextUtils;

public final class PlayerColumnNames {
    public final String aaS;
    public final String aaT;
    public final String aaU;
    public final String aaV;
    public final String aaW;
    public final String aaX;
    public final String aaY;
    public final String aaZ;
    public final String aba;
    public final String abb;
    public final String abc;
    public final String abd;
    public final String abe;
    public final String abf;
    public final String abg;
    public final String abh;
    public final String abi;
    public final String abj;
    public final String abk;
    public final String abl;
    public final String abm;
    public final String abn;
    public final String abo;
    public final String abp;
    public final String abq;

    public PlayerColumnNames(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            this.aaS = "external_player_id";
            this.aaT = "profile_name";
            this.aaU = "profile_icon_image_uri";
            this.aaV = "profile_icon_image_url";
            this.aaW = "profile_hi_res_image_uri";
            this.aaX = "profile_hi_res_image_url";
            this.aaY = "last_updated";
            this.aaZ = "is_in_circles";
            this.aba = "played_with_timestamp";
            this.abb = "current_xp_total";
            this.abc = "current_level";
            this.abd = "current_level_min_xp";
            this.abe = "current_level_max_xp";
            this.abf = "next_level";
            this.abg = "next_level_max_xp";
            this.abh = "last_level_up_timestamp";
            this.abi = "player_title";
            this.abj = "has_all_public_acls";
            this.abk = "is_profile_visible";
            this.abl = "most_recent_external_game_id";
            this.abm = "most_recent_game_name";
            this.abn = "most_recent_activity_timestamp";
            this.abo = "most_recent_game_icon_uri";
            this.abp = "most_recent_game_hi_res_uri";
            this.abq = "most_recent_game_featured_uri";
            return;
        }
        this.aaS = string + "external_player_id";
        this.aaT = string + "profile_name";
        this.aaU = string + "profile_icon_image_uri";
        this.aaV = string + "profile_icon_image_url";
        this.aaW = string + "profile_hi_res_image_uri";
        this.aaX = string + "profile_hi_res_image_url";
        this.aaY = string + "last_updated";
        this.aaZ = string + "is_in_circles";
        this.aba = string + "played_with_timestamp";
        this.abb = string + "current_xp_total";
        this.abc = string + "current_level";
        this.abd = string + "current_level_min_xp";
        this.abe = string + "current_level_max_xp";
        this.abf = string + "next_level";
        this.abg = string + "next_level_max_xp";
        this.abh = string + "last_level_up_timestamp";
        this.abi = string + "player_title";
        this.abj = string + "has_all_public_acls";
        this.abk = string + "is_profile_visible";
        this.abl = string + "most_recent_external_game_id";
        this.abm = string + "most_recent_game_name";
        this.abn = string + "most_recent_activity_timestamp";
        this.abo = string + "most_recent_game_icon_uri";
        this.abp = string + "most_recent_game_hi_res_uri";
        this.abq = string + "most_recent_game_featured_uri";
    }
}

