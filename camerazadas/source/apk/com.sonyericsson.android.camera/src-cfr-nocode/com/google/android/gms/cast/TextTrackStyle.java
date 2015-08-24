/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    public TextTrackStyle();

    private int aC(String var1);

    private void clear();

    public static TextTrackStyle fromSystemSettings(Context var0);

    private String t(int var1);

    public JSONObject bK();

    public void c(JSONObject var1) throws JSONException;

    public boolean equals(Object var1);

    public int getBackgroundColor();

    public JSONObject getCustomData();

    public int getEdgeColor();

    public int getEdgeType();

    public String getFontFamily();

    public int getFontGenericFamily();

    public float getFontScale();

    public int getFontStyle();

    public int getForegroundColor();

    public int getWindowColor();

    public int getWindowCornerRadius();

    public int getWindowType();

    public int hashCode();

    public void setBackgroundColor(int var1);

    public void setCustomData(JSONObject var1);

    public void setEdgeColor(int var1);

    public void setEdgeType(int var1);

    public void setFontFamily(String var1);

    public void setFontGenericFamily(int var1);

    public void setFontScale(float var1);

    public void setFontStyle(int var1);

    public void setForegroundColor(int var1);

    public void setWindowColor(int var1);

    public void setWindowCornerRadius(int var1);

    public void setWindowType(int var1);
}

