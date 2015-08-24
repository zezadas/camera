/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.internal.ik;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaStatus {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    private double FA;
    private boolean FB;
    private long[] FC;
    private JSONObject Fl;
    private MediaInfo Fm;
    private long Fu;
    private double Fv;
    private int Fw;
    private int Fx;
    private long Fy;
    private long Fz;

    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this.a(jSONObject, 0);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public int a(JSONObject var1_1, int var2_2) throws JSONException {
        var11_3 = 2;
        var10_4 = 0;
        var9_5 = 1;
        var12_6 = var1_1.getLong("mediaSessionId");
        if (var12_6 != this.Fu) {
            this.Fu = var12_6;
            var6_7 = 1;
        } else {
            var6_7 = 0;
        }
        var7_8 = var6_7;
        if (var1_1.has("playerState")) {
            var15_9 = var1_1.getString("playerState");
            var5_10 = var15_9.equals("IDLE") != false ? 1 : (var15_9.equals("PLAYING") != false ? 2 : (var15_9.equals("PAUSED") != false ? 3 : (var15_9.equals("BUFFERING") != false ? 4 : 0)));
            var8_11 = var6_7;
            if (var5_10 != this.Fw) {
                this.Fw = var5_10;
                var8_11 = var6_7 | 2;
            }
            var7_8 = var8_11;
            if (var5_10 == 1) {
                var7_8 = var8_11;
                if (var1_1.has("idleReason")) {
                    var15_9 = var1_1.getString("idleReason");
                    var5_10 = var15_9.equals("CANCELLED") != false ? var11_3 : (var15_9.equals("INTERRUPTED") != false ? 3 : (var15_9.equals("FINISHED") != false ? 1 : (var15_9.equals("ERROR") != false ? 4 : 0)));
                    var7_8 = var8_11;
                    if (var5_10 != this.Fx) {
                        this.Fx = var5_10;
                        var7_8 = var8_11 | 2;
                    }
                }
            }
        }
        var5_10 = var7_8;
        if (var1_1.has("playbackRate")) {
            var3_12 = var1_1.getDouble("playbackRate");
            var5_10 = var7_8;
            if (this.Fv != var3_12) {
                this.Fv = var3_12;
                var5_10 = var7_8 | 2;
            }
        }
        var7_8 = var5_10;
        if (var1_1.has("currentTime")) {
            var7_8 = var5_10;
            if ((var2_2 & 2) == 0) {
                var12_6 = ik.b(var1_1.getDouble("currentTime"));
                var7_8 = var5_10;
                if (var12_6 != this.Fy) {
                    this.Fy = var12_6;
                    var7_8 = var5_10 | 2;
                }
            }
        }
        var6_7 = var7_8;
        if (var1_1.has("supportedMediaCommands")) {
            var12_6 = var1_1.getLong("supportedMediaCommands");
            var6_7 = var7_8;
            if (var12_6 != this.Fz) {
                this.Fz = var12_6;
                var6_7 = var7_8 | 2;
            }
        }
        var5_10 = var6_7;
        if (var1_1.has("volume")) {
            var5_10 = var6_7;
            if ((var2_2 & 1) == 0) {
                var15_9 = var1_1.getJSONObject("volume");
                var3_12 = var15_9.getDouble("level");
                var2_2 = var6_7;
                if (var3_12 != this.FA) {
                    this.FA = var3_12;
                    var2_2 = var6_7 | 2;
                }
                var14_13 = var15_9.getBoolean("muted");
                var5_10 = var2_2;
                if (var14_13 != this.FB) {
                    this.FB = var14_13;
                    var5_10 = var2_2 | 2;
                }
            }
        }
        if (!var1_1.has("activeTrackIds")) ** GOTO lbl83
        var16_14 = var1_1.getJSONArray("activeTrackIds");
        var7_8 = var16_14.length();
        var15_9 = new long[var7_8];
        for (var2_2 = 0; var2_2 < var7_8; ++var2_2) {
            var15_9[var2_2] = var16_14.getLong(var2_2);
        }
        if (this.FC != null) ** GOTO lbl76
        var2_2 = var9_5;
        ** GOTO lbl91
lbl76: // 1 sources:
        var2_2 = var9_5;
        if (this.FC.length != var7_8) ** GOTO lbl91
        for (var6_7 = 0; var6_7 < var7_8; ++var6_7) {
            var2_2 = var9_5;
            if (this.FC[var6_7] == var15_9[var6_7]) {
                continue;
            } else {
                ** GOTO lbl91
            }
        }
        ** GOTO lbl90
lbl83: // 1 sources:
        if (this.FC != null) {
            var6_7 = 1;
            var15_9 = null;
        } else {
            var15_9 = null;
            var6_7 = var10_4;
        }
        ** GOTO lbl94
lbl90: // 1 sources:
        var2_2 = 0;
lbl91: // 5 sources:
        if (var2_2 != 0) {
            this.FC = var15_9;
        }
        var6_7 = var2_2;
lbl94: // 3 sources:
        var2_2 = var5_10;
        if (var6_7 != 0) {
            this.FC = var15_9;
            var2_2 = var5_10 | 2;
        }
        var5_10 = var2_2;
        if (var1_1.has("customData")) {
            this.Fl = var1_1.getJSONObject("customData");
            var5_10 = var2_2 | 2;
        }
        var2_2 = var5_10;
        if (var1_1.has("media") == false) return var2_2;
        var1_1 = var1_1.getJSONObject("media");
        this.Fm = new MediaInfo(var1_1);
        var2_2 = var5_10|=2;
        if (var1_1.has("metadata") == false) return var2_2;
        return var5_10 | 4;
    }

    public long fw() {
        return this.Fu;
    }

    public long[] getActiveTrackIds() {
        return this.FC;
    }

    public JSONObject getCustomData() {
        return this.Fl;
    }

    public int getIdleReason() {
        return this.Fx;
    }

    public MediaInfo getMediaInfo() {
        return this.Fm;
    }

    public double getPlaybackRate() {
        return this.Fv;
    }

    public int getPlayerState() {
        return this.Fw;
    }

    public long getStreamPosition() {
        return this.Fy;
    }

    public double getStreamVolume() {
        return this.FA;
    }

    public boolean isMediaCommandSupported(long l) {
        if ((this.Fz & l) != 0) {
            return true;
        }
        return false;
    }

    public boolean isMute() {
        return this.FB;
    }
}

