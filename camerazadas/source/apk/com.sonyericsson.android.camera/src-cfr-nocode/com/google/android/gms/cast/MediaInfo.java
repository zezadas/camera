/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.TextTrackStyle;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 */
public final class MediaInfo {
    public static final int STREAM_TYPE_BUFFERED = 1;
    public static final int STREAM_TYPE_INVALID = -1;
    public static final int STREAM_TYPE_LIVE = 2;
    public static final int STREAM_TYPE_NONE = 0;
    private final String Fe;
    private int Ff;
    private String Fg;
    private MediaMetadata Fh;
    private long Fi;
    private List<MediaTrack> Fj;
    private TextTrackStyle Fk;
    private JSONObject Fl;

    MediaInfo(String var1) throws IllegalArgumentException;

    MediaInfo(JSONObject var1) throws JSONException;

    void a(MediaMetadata var1);

    public JSONObject bK();

    void c(List<MediaTrack> var1);

    public boolean equals(Object var1);

    void fv() throws IllegalArgumentException;

    public String getContentId();

    public String getContentType();

    public JSONObject getCustomData();

    public List<MediaTrack> getMediaTracks();

    public MediaMetadata getMetadata();

    public long getStreamDuration();

    public int getStreamType();

    public TextTrackStyle getTextTrackStyle();

    public int hashCode();

    void m(long var1) throws IllegalArgumentException;

    void setContentType(String var1) throws IllegalArgumentException;

    void setCustomData(JSONObject var1);

    void setStreamType(int var1) throws IllegalArgumentException;

    public void setTextTrackStyle(TextTrackStyle var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private final MediaInfo Fm;

        public Builder(String var1) throws IllegalArgumentException;

        public MediaInfo build() throws IllegalArgumentException;

        public Builder setContentType(String var1) throws IllegalArgumentException;

        public Builder setCustomData(JSONObject var1);

        public Builder setMediaTracks(List<MediaTrack> var1);

        public Builder setMetadata(MediaMetadata var1);

        public Builder setStreamDuration(long var1) throws IllegalArgumentException;

        public Builder setStreamType(int var1) throws IllegalArgumentException;

        public Builder setTextTrackStyle(TextTrackStyle var1);
    }

}

