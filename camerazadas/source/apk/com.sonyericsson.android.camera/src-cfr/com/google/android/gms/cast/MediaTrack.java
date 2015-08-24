/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.jz;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

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

    MediaTrack(long l, int n) throws IllegalArgumentException {
        this.clear();
        this.Dj = l;
        if (n <= 0 || n > 3) {
            throw new IllegalArgumentException("invalid type " + n);
        }
        this.FD = n;
    }

    MediaTrack(JSONObject jSONObject) throws JSONException {
        this.c(jSONObject);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c(JSONObject jSONObject) throws JSONException {
        this.clear();
        this.Dj = jSONObject.getLong("trackId");
        String string = jSONObject.getString("type");
        if ("TEXT".equals(string)) {
            this.FD = 1;
        } else if ("AUDIO".equals(string)) {
            this.FD = 2;
        } else {
            if (!"VIDEO".equals(string)) {
                throw new JSONException("invalid type: " + string);
            }
            this.FD = 3;
        }
        this.Fe = jSONObject.optString("trackContentId", null);
        this.Fg = jSONObject.optString("trackContentType", null);
        this.mName = jSONObject.optString("name", null);
        this.Fc = jSONObject.optString("language", null);
        if (jSONObject.has("subtype")) {
            string = jSONObject.getString("subtype");
            if ("SUBTITLES".equals(string)) {
                this.FE = 1;
            } else if ("CAPTIONS".equals(string)) {
                this.FE = 2;
            } else if ("DESCRIPTIONS".equals(string)) {
                this.FE = 3;
            } else if ("CHAPTERS".equals(string)) {
                this.FE = 4;
            } else {
                if (!"METADATA".equals(string)) {
                    throw new JSONException("invalid subtype: " + string);
                }
                this.FE = 5;
            }
        } else {
            this.FE = 0;
        }
        this.Fl = jSONObject.optJSONObject("customData");
    }

    private void clear() {
        this.Dj = 0;
        this.FD = 0;
        this.Fe = null;
        this.mName = null;
        this.Fc = null;
        this.FE = -1;
        this.Fl = null;
    }

    void aa(int n) throws IllegalArgumentException {
        if (n <= -1 || n > 5) {
            throw new IllegalArgumentException("invalid subtype " + n);
        }
        if (n != 0 && this.FD != 1) {
            throw new IllegalArgumentException("subtypes are only valid for text tracks");
        }
        this.FE = n;
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
        if (!(object instanceof MediaTrack)) return bl3;
        object = (MediaTrack)object;
        boolean bl4 = this.Fl == null;
        boolean bl5 = object.Fl == null;
        bl3 = bl2;
        if (bl4 != bl5) return bl3;
        if (this.Fl != null && object.Fl != null) {
            bl3 = bl2;
            if (!jz.d(this.Fl, object.Fl)) return bl3;
        }
        if (this.Dj != object.Dj) return false;
        if (this.FD != object.FD) return false;
        if (!ik.a(this.Fe, object.Fe)) return false;
        if (!ik.a(this.Fg, object.Fg)) return false;
        if (!ik.a(this.mName, object.mName)) return false;
        if (!ik.a(this.Fc, object.Fc)) return false;
        if (this.FE != object.FE) return false;
        return bl;
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

    public long getId() {
        return this.Dj;
    }

    public String getLanguage() {
        return this.Fc;
    }

    public String getName() {
        return this.mName;
    }

    public int getSubtype() {
        return this.FE;
    }

    public int getType() {
        return this.FD;
    }

    public int hashCode() {
        return n.hashCode(this.Dj, this.FD, this.Fe, this.Fg, this.mName, this.Fc, this.FE, this.Fl);
    }

    public void setContentId(String string) {
        this.Fe = string;
    }

    public void setContentType(String string) {
        this.Fg = string;
    }

    void setCustomData(JSONObject jSONObject) {
        this.Fl = jSONObject;
    }

    void setLanguage(String string) {
        this.Fc = string;
    }

    void setName(String string) {
        this.mName = string;
    }

    public static class Builder {
        private final MediaTrack FF;

        public Builder(long l, int n) throws IllegalArgumentException {
            this.FF = new MediaTrack(l, n);
        }

        public MediaTrack build() {
            return this.FF;
        }

        public Builder setContentId(String string) {
            this.FF.setContentId(string);
            return this;
        }

        public Builder setContentType(String string) {
            this.FF.setContentType(string);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.FF.setCustomData(jSONObject);
            return this;
        }

        public Builder setLanguage(String string) {
            this.FF.setLanguage(string);
            return this;
        }

        public Builder setLanguage(Locale locale) {
            this.FF.setLanguage(ik.b(locale));
            return this;
        }

        public Builder setName(String string) {
            this.FF.setName(string);
            return this;
        }

        public Builder setSubtype(int n) throws IllegalArgumentException {
            this.FF.aa(n);
            return this;
        }
    }

}

