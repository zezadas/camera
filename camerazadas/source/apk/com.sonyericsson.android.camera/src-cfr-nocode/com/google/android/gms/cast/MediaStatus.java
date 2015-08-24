/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import com.google.android.gms.cast.MediaInfo;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 */
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

    public MediaStatus(JSONObject var1) throws JSONException;

    public int a(JSONObject var1, int var2) throws JSONException;

    public long fw();

    public long[] getActiveTrackIds();

    public JSONObject getCustomData();

    public int getIdleReason();

    public MediaInfo getMediaInfo();

    public double getPlaybackRate();

    public int getPlayerState();

    public long getStreamPosition();

    public double getStreamVolume();

    public boolean isMediaCommandSupported(long var1);

    public boolean isMute();
}

