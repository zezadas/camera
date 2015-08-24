/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 */
public final class MediaTrack {
    public static final int SUBTYPE_CAPTIONS = 2;
    public static final int SUBTYPE_CHAPTERS = 4;
    public static final int SUBTYPE_DESCRIPTIONS = 3;
    public static final int SUBTYPE_METADATA = 5;
    public static final int SUBTYPE_NONE = 0;
    public static final int SUBTYPE_SUBTITLES = 1;
    public static final int SUBTYPE_UNKNOWN = -1;
    public static final int TYPE_AUDIO = 2;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIDEO = 3;
    private long Dj;
    private int FD;
    private int FE;
    private String Fc;
    private String Fe;
    private String Fg;
    private JSONObject Fl;
    private String mName;

    MediaTrack(long var1, int var3) throws IllegalArgumentException;

    MediaTrack(JSONObject var1) throws JSONException;

    private void c(JSONObject var1) throws JSONException;

    private void clear();

    void aa(int var1) throws IllegalArgumentException;

    public JSONObject bK();

    public boolean equals(Object var1);

    public String getContentId();

    public String getContentType();

    public JSONObject getCustomData();

    public long getId();

    public String getLanguage();

    public String getName();

    public int getSubtype();

    public int getType();

    public int hashCode();

    public void setContentId(String var1);

    public void setContentType(String var1);

    void setCustomData(JSONObject var1);

    void setLanguage(String var1);

    void setName(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private final MediaTrack FF;

        public Builder(long var1, int var3) throws IllegalArgumentException;

        public MediaTrack build();

        public Builder setContentId(String var1);

        public Builder setContentType(String var1);

        public Builder setCustomData(JSONObject var1);

        public Builder setLanguage(String var1);

        public Builder setLanguage(Locale var1);

        public Builder setName(String var1);

        public Builder setSubtype(int var1) throws IllegalArgumentException;
    }

}

