/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.jz;
import com.google.android.gms.internal.kc;
import org.json.JSONException;
import org.json.JSONObject;

public final class TextTrackStyle {
    public static final int COLOR_UNSPECIFIED = 0;
    public static final float DEFAULT_FONT_SCALE = 1.0f;
    public static final int EDGE_TYPE_DEPRESSED = 4;
    public static final int EDGE_TYPE_DROP_SHADOW = 2;
    public static final int EDGE_TYPE_NONE = 0;
    public static final int EDGE_TYPE_OUTLINE = 1;
    public static final int EDGE_TYPE_RAISED = 3;
    public static final int EDGE_TYPE_UNSPECIFIED = -1;
    public static final int FONT_FAMILY_CASUAL = 4;
    public static final int FONT_FAMILY_CURSIVE = 5;
    public static final int FONT_FAMILY_MONOSPACED_SANS_SERIF = 1;
    public static final int FONT_FAMILY_MONOSPACED_SERIF = 3;
    public static final int FONT_FAMILY_SANS_SERIF = 0;
    public static final int FONT_FAMILY_SERIF = 2;
    public static final int FONT_FAMILY_SMALL_CAPITALS = 6;
    public static final int FONT_FAMILY_UNSPECIFIED = -1;
    public static final int FONT_STYLE_BOLD = 1;
    public static final int FONT_STYLE_BOLD_ITALIC = 3;
    public static final int FONT_STYLE_ITALIC = 2;
    public static final int FONT_STYLE_NORMAL = 0;
    public static final int FONT_STYLE_UNSPECIFIED = -1;
    public static final int WINDOW_TYPE_NONE = 0;
    public static final int WINDOW_TYPE_NORMAL = 1;
    public static final int WINDOW_TYPE_ROUNDED = 2;
    public static final int WINDOW_TYPE_UNSPECIFIED = -1;
    private JSONObject Fl;
    private float Gd;
    private int Ge;
    private int Gf;
    private int Gg;
    private int Gh;
    private int Gi;
    private int Gj;
    private String Gk;
    private int Gl;
    private int Gm;
    private int xm;

    public TextTrackStyle() {
        this.clear();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int aC(String string) {
        int n;
        int n2 = n = 0;
        if (string == null) return n2;
        n2 = n;
        if (string.length() != 9) return n2;
        n2 = n;
        if (string.charAt(0) != '#') return n2;
        try {
            n2 = Integer.parseInt(string.substring(1, 3), 16);
            n = Integer.parseInt(string.substring(3, 5), 16);
            int n3 = Integer.parseInt(string.substring(5, 7), 16);
            return Color.argb(Integer.parseInt(string.substring(7, 9), 16), n2, n, n3);
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    private void clear() {
        this.Gd = 1.0f;
        this.Ge = 0;
        this.xm = 0;
        this.Gf = -1;
        this.Gg = 0;
        this.Gh = -1;
        this.Gi = 0;
        this.Gj = 0;
        this.Gk = null;
        this.Gl = -1;
        this.Gm = -1;
        this.Fl = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static TextTrackStyle fromSystemSettings(Context object) {
        TextTrackStyle textTrackStyle = new TextTrackStyle();
        if (!kc.hH()) {
            return textTrackStyle;
        }
        object = (CaptioningManager)object.getSystemService("captioning");
        textTrackStyle.setFontScale(object.getFontScale());
        object = object.getUserStyle();
        textTrackStyle.setBackgroundColor(object.backgroundColor);
        textTrackStyle.setForegroundColor(object.foregroundColor);
        switch (object.edgeType) {
            default: {
                textTrackStyle.setEdgeType(0);
                break;
            }
            case 1: {
                textTrackStyle.setEdgeType(1);
                break;
            }
            case 2: {
                textTrackStyle.setEdgeType(2);
            }
        }
        textTrackStyle.setEdgeColor(object.edgeColor);
        object = object.getTypeface();
        if (object == null) return textTrackStyle;
        if (Typeface.MONOSPACE.equals(object)) {
            textTrackStyle.setFontGenericFamily(1);
        } else if (Typeface.SANS_SERIF.equals(object)) {
            textTrackStyle.setFontGenericFamily(0);
        } else if (Typeface.SERIF.equals(object)) {
            textTrackStyle.setFontGenericFamily(2);
        } else {
            textTrackStyle.setFontGenericFamily(0);
        }
        boolean bl = object.isBold();
        boolean bl2 = object.isItalic();
        if (bl && bl2) {
            textTrackStyle.setFontStyle(3);
            return textTrackStyle;
        }
        if (bl) {
            textTrackStyle.setFontStyle(1);
            return textTrackStyle;
        }
        if (bl2) {
            textTrackStyle.setFontStyle(2);
            return textTrackStyle;
        }
        textTrackStyle.setFontStyle(0);
        return textTrackStyle;
    }

    private String t(int n) {
        return String.format("#%02X%02X%02X%02X", Color.red(n), Color.green(n), Color.blue(n), Color.alpha(n));
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
    public void c(JSONObject jSONObject) throws JSONException {
        String string;
        this.clear();
        this.Gd = (float)jSONObject.optDouble("fontScale", 1.0);
        this.Ge = this.aC(jSONObject.optString("foregroundColor"));
        this.xm = this.aC(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.Gf = 0;
            } else if ("OUTLINE".equals(string)) {
                this.Gf = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.Gf = 2;
            } else if ("RAISED".equals(string)) {
                this.Gf = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.Gf = 4;
            }
        }
        this.Gg = this.aC(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            string = jSONObject.getString("windowType");
            if ("NONE".equals(string)) {
                this.Gh = 0;
            } else if ("NORMAL".equals(string)) {
                this.Gh = 1;
            } else if ("ROUNDED_CORNERS".equals(string)) {
                this.Gh = 2;
            }
        }
        this.Gi = this.aC(jSONObject.optString("windowColor"));
        if (this.Gh == 2) {
            this.Gj = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.Gk = jSONObject.optString("fontFamily", null);
        if (jSONObject.has("fontGenericFamily")) {
            string = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string)) {
                this.Gl = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string)) {
                this.Gl = 1;
            } else if ("SERIF".equals(string)) {
                this.Gl = 2;
            } else if ("MONOSPACED_SERIF".equals(string)) {
                this.Gl = 3;
            } else if ("CASUAL".equals(string)) {
                this.Gl = 4;
            } else if ("CURSIVE".equals(string)) {
                this.Gl = 5;
            } else if ("SMALL_CAPITALS".equals(string)) {
                this.Gl = 6;
            }
        }
        if (jSONObject.has("fontStyle")) {
            string = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string)) {
                this.Gm = 0;
            } else if ("BOLD".equals(string)) {
                this.Gm = 1;
            } else if ("ITALIC".equals(string)) {
                this.Gm = 2;
            } else if ("BOLD_ITALIC".equals(string)) {
                this.Gm = 3;
            }
        }
        this.Fl = jSONObject.optJSONObject("customData");
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
        if (!(object instanceof TextTrackStyle)) return bl3;
        object = (TextTrackStyle)object;
        boolean bl4 = this.Fl == null;
        boolean bl5 = object.Fl == null;
        bl3 = bl2;
        if (bl4 != bl5) return bl3;
        if (this.Fl != null && object.Fl != null) {
            bl3 = bl2;
            if (!jz.d(this.Fl, object.Fl)) return bl3;
        }
        if (this.Gd != object.Gd) return false;
        if (this.Ge != object.Ge) return false;
        if (this.xm != object.xm) return false;
        if (this.Gf != object.Gf) return false;
        if (this.Gg != object.Gg) return false;
        if (this.Gh != object.Gh) return false;
        if (this.Gj != object.Gj) return false;
        if (!ik.a(this.Gk, object.Gk)) return false;
        if (this.Gl != object.Gl) return false;
        if (this.Gm != object.Gm) return false;
        return bl;
    }

    public int getBackgroundColor() {
        return this.xm;
    }

    public JSONObject getCustomData() {
        return this.Fl;
    }

    public int getEdgeColor() {
        return this.Gg;
    }

    public int getEdgeType() {
        return this.Gf;
    }

    public String getFontFamily() {
        return this.Gk;
    }

    public int getFontGenericFamily() {
        return this.Gl;
    }

    public float getFontScale() {
        return this.Gd;
    }

    public int getFontStyle() {
        return this.Gm;
    }

    public int getForegroundColor() {
        return this.Ge;
    }

    public int getWindowColor() {
        return this.Gi;
    }

    public int getWindowCornerRadius() {
        return this.Gj;
    }

    public int getWindowType() {
        return this.Gh;
    }

    public int hashCode() {
        return n.hashCode(Float.valueOf(this.Gd), this.Ge, this.xm, this.Gf, this.Gg, this.Gh, this.Gi, this.Gj, this.Gk, this.Gl, this.Gm, this.Fl);
    }

    public void setBackgroundColor(int n) {
        this.xm = n;
    }

    public void setCustomData(JSONObject jSONObject) {
        this.Fl = jSONObject;
    }

    public void setEdgeColor(int n) {
        this.Gg = n;
    }

    public void setEdgeType(int n) {
        if (n < 0 || n > 4) {
            throw new IllegalArgumentException("invalid edgeType");
        }
        this.Gf = n;
    }

    public void setFontFamily(String string) {
        this.Gk = string;
    }

    public void setFontGenericFamily(int n) {
        if (n < 0 || n > 6) {
            throw new IllegalArgumentException("invalid fontGenericFamily");
        }
        this.Gl = n;
    }

    public void setFontScale(float f) {
        this.Gd = f;
    }

    public void setFontStyle(int n) {
        if (n < 0 || n > 3) {
            throw new IllegalArgumentException("invalid fontStyle");
        }
        this.Gm = n;
    }

    public void setForegroundColor(int n) {
        this.Ge = n;
    }

    public void setWindowColor(int n) {
        this.Gi = n;
    }

    public void setWindowCornerRadius(int n) {
        if (n < 0) {
            throw new IllegalArgumentException("invalid windowCornerRadius");
        }
        this.Gj = n;
    }

    public void setWindowType(int n) {
        if (n < 0 || n > 2) {
            throw new IllegalArgumentException("invalid windowType");
        }
        this.Gh = n;
    }
}

