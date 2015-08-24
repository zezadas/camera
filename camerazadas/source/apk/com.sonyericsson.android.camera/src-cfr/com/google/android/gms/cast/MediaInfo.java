/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.jz;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

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

    MediaInfo(String string) throws IllegalArgumentException {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        }
        this.Fe = string;
        this.Ff = -1;
    }

    /*
     * Enabled aggressive block sorting
     */
    MediaInfo(JSONObject jSONObject) throws JSONException {
        Object object;
        int n = 0;
        this.Fe = jSONObject.getString("contentId");
        Object object2 = jSONObject.getString("streamType");
        this.Ff = "NONE".equals(object2) ? 0 : ("BUFFERED".equals(object2) ? 1 : ("LIVE".equals(object2) ? 2 : -1));
        this.Fg = jSONObject.getString("contentType");
        if (jSONObject.has("metadata")) {
            object2 = jSONObject.getJSONObject("metadata");
            this.Fh = new MediaMetadata(object2.getInt("metadataType"));
            this.Fh.c((JSONObject)object2);
        }
        this.Fi = ik.b(jSONObject.optDouble("duration", 0.0));
        if (jSONObject.has("tracks")) {
            this.Fj = new ArrayList<MediaTrack>();
            object2 = jSONObject.getJSONArray("tracks");
            for (; n < object2.length(); ++n) {
                object = new MediaTrack(object2.getJSONObject(n));
                this.Fj.add((MediaTrack)object);
            }
        } else {
            this.Fj = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            object2 = jSONObject.getJSONObject("textTrackStyle");
            object = new TextTrackStyle();
            object.c((JSONObject)object2);
            this.Fk = object;
        } else {
            this.Fk = null;
        }
        this.Fl = jSONObject.optJSONObject("customData");
    }

    void a(MediaMetadata mediaMetadata) {
        this.Fh = mediaMetadata;
    }

    /*
     * Exception decompiling
     */
    public JSONObject bK() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    void c(List<MediaTrack> list) {
        this.Fj = list;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        boolean bl = true;
        boolean bl2 = false;
        if (this == object) {
            return true;
        }
        boolean bl3 = bl2;
        if (!(object instanceof MediaInfo)) return bl3;
        object = (MediaInfo)object;
        boolean bl4 = this.Fl == null;
        boolean bl5 = object.Fl == null;
        bl3 = bl2;
        if (bl4 != bl5) return bl3;
        if (this.Fl != null && object.Fl != null) {
            bl3 = bl2;
            if (!jz.d(this.Fl, object.Fl)) return bl3;
        }
        if (!ik.a(this.Fe, object.Fe)) return false;
        if (this.Ff != object.Ff) return false;
        if (!ik.a(this.Fg, object.Fg)) return false;
        if (!ik.a(this.Fh, object.Fh)) return false;
        if (this.Fi != object.Fi) return false;
        return bl;
    }

    void fv() throws IllegalArgumentException {
        if (TextUtils.isEmpty((CharSequence)this.Fe)) {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        }
        if (TextUtils.isEmpty((CharSequence)this.Fg)) {
            throw new IllegalArgumentException("content type cannot be null or empty");
        }
        if (this.Ff == -1) {
            throw new IllegalArgumentException("a valid stream type must be specified");
        }
    }

    public String getContentId() {
        return this.Fe;
    }

    public String getContentType() {
        return this.Fg;
    }

    public JSONObject getCustomData() {
        return this.Fl;
    }

    public List<MediaTrack> getMediaTracks() {
        return this.Fj;
    }

    public MediaMetadata getMetadata() {
        return this.Fh;
    }

    public long getStreamDuration() {
        return this.Fi;
    }

    public int getStreamType() {
        return this.Ff;
    }

    public TextTrackStyle getTextTrackStyle() {
        return this.Fk;
    }

    public int hashCode() {
        return n.hashCode(this.Fe, this.Ff, this.Fg, this.Fh, this.Fi, String.valueOf(this.Fl));
    }

    void m(long l) throws IllegalArgumentException {
        if (l < 0) {
            throw new IllegalArgumentException("Stream duration cannot be negative");
        }
        this.Fi = l;
    }

    void setContentType(String string) throws IllegalArgumentException {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("content type cannot be null or empty");
        }
        this.Fg = string;
    }

    void setCustomData(JSONObject jSONObject) {
        this.Fl = jSONObject;
    }

    void setStreamType(int n) throws IllegalArgumentException {
        if (n < -1 || n > 2) {
            throw new IllegalArgumentException("invalid stream type");
        }
        this.Ff = n;
    }

    public void setTextTrackStyle(TextTrackStyle textTrackStyle) {
        this.Fk = textTrackStyle;
    }

    public static class Builder {
        private final MediaInfo Fm;

        public Builder(String string) throws IllegalArgumentException {
            if (TextUtils.isEmpty((CharSequence)string)) {
                throw new IllegalArgumentException("Content ID cannot be empty");
            }
            this.Fm = new MediaInfo(string);
        }

        public MediaInfo build() throws IllegalArgumentException {
            this.Fm.fv();
            return this.Fm;
        }

        public Builder setContentType(String string) throws IllegalArgumentException {
            this.Fm.setContentType(string);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.Fm.setCustomData(jSONObject);
            return this;
        }

        public Builder setMediaTracks(List<MediaTrack> list) {
            this.Fm.c(list);
            return this;
        }

        public Builder setMetadata(MediaMetadata mediaMetadata) {
            this.Fm.a(mediaMetadata);
            return this;
        }

        public Builder setStreamDuration(long l) throws IllegalArgumentException {
            this.Fm.m(l);
            return this;
        }

        public Builder setStreamType(int n) throws IllegalArgumentException {
            this.Fm.setStreamType(n);
            return this;
        }

        public Builder setTextTrackStyle(TextTrackStyle textTrackStyle) {
            this.Fm.setTextTrackStyle(textTrackStyle);
            return this;
        }
    }

}

