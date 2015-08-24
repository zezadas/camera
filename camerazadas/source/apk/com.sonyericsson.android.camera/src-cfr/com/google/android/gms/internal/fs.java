/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.bj;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.fr;
import com.google.android.gms.internal.fw;
import com.google.android.gms.internal.gf;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public final class fs {
    private static final SimpleDateFormat up = new SimpleDateFormat("yyyyMMdd");

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static fk a(Context var0, fi var1_2, String var2_3) {
        block27 : {
            try {
                var19_4 = new JSONObject((String)var2_3);
                var12_5 = var19_4.optString("ad_base_url", null);
                var2_3 = var19_4.optString("ad_url", null);
                var17_6 = var19_4.optString("ad_size", null);
                var13_7 = var19_4.optString("ad_html", null);
                var7_8 = -1;
                var18_9 = var19_4.optString("debug_dialog", null);
                var5_10 = var19_4.has("interstitial_timeout") != false ? (long)(var19_4.getDouble("interstitial_timeout") * 1000.0) : -1;
                var14_11 = var19_4.optString("orientation", null);
                var3_12 = -1;
                if ("portrait".equals(var14_11)) {
                    var3_12 = gj.dm();
                } else if ("landscape".equals(var14_11)) {
                    var3_12 = gj.dl();
                }
                if (!TextUtils.isEmpty((CharSequence)var13_7)) {
                    if (TextUtils.isEmpty((CharSequence)var12_5)) {
                        gs.W("Could not parse the mediation config: Missing required ad_base_url field");
                        return new fk(0);
                    } else {
                        ** GOTO lbl29
                    }
                }
                if (!TextUtils.isEmpty((CharSequence)var2_3)) {
                    var14_11 = fr.a((Context)var0, var1_2.lD.wD, (String)var2_3, null, null);
                    var12_5 = var14_11.rP;
                    var13_7 = var14_11.tG;
                    var7_8 = var14_11.tM;
                } else {
                    gs.W("Could not parse the mediation config: Missing required ad_html or ad_url field.");
                    return new fk(0);
lbl29: // 2 sources:
                    var14_11 = null;
                }
                var15_13 = var19_4.optJSONArray("click_urls");
                var0 = var14_11 == null ? null : var14_11.qf;
                if (var15_13 == null) {
                    var15_13 = var0;
                } else {
                    var2_3 = var0;
                    if (var0 == null) {
                        var2_3 = new LinkedList<String>();
                    }
                    for (var4_14 = 0; var4_14 < var15_13.length(); ++var4_14) {
                        var2_3.add((String)var15_13.getString(var4_14));
                    }
                    var15_13 = var2_3;
                }
                var16_15 = var19_4.optJSONArray("impression_urls");
                if (var14_11 != null) ** GOTO lbl47
                var0 = null;
                ** GOTO lbl48
lbl47: // 2 sources:
                var0 = var14_11.qg;
lbl48: // 2 sources:
                if (var16_15 == null) {
                    var16_15 = var0;
                    ** break block26
                }
                var2_3 = var0;
                if (var0 == null) {
                    var2_3 = new LinkedList<String>();
                }
                for (var4_14 = 0; var4_14 < var16_15.length(); ++var4_14) {
                    var2_3.add((String)var16_15.getString(var4_14));
                }
                var16_15 = var2_3;
            }
            catch (JSONException var0_1) {
                gs.W("Could not parse the mediation config: " + var0_1.getMessage());
                return new fk(0);
            }
lbl-1000: // 2 sources:
            {
                
                var20_16 = var19_4.optJSONArray("manual_impression_urls");
                if (var14_11 != null) break block27;
                var0 = null;
            }
        }
        var0 = var14_11.tK;
        if (var20_16 != null) {
            var2_3 = var0;
            if (var0 == null) {
                var2_3 = new LinkedList<String>();
            }
            for (var4_14 = 0; var4_14 < var20_16.length(); ++var4_14) {
                var2_3.add((String)var20_16.getString(var4_14));
            }
            var0 = var2_3;
        }
        var9_17 = var5_10;
        var4_14 = var3_12;
        if (var14_11 != null) {
            if (var14_11.orientation != -1) {
                var3_12 = var14_11.orientation;
            }
            var9_17 = var5_10;
            var4_14 = var3_12;
            if (var14_11.tH > 0) {
                var9_17 = var14_11.tH;
                var4_14 = var3_12;
            }
        }
        var14_11 = var19_4.optString("active_view");
        var2_3 = null;
        var11_18 = var19_4.optBoolean("ad_is_javascript", false);
        if (var11_18 == false) return new fk(var12_5, var13_7, var15_13, var16_15, var9_17, false, -1, (List<String>)var0, -1, var4_14, var17_6, var7_8, var18_9, var11_18, (String)var2_3, (String)var14_11, false, false, var1_2.tF, false);
        var2_3 = var19_4.optString("ad_passback_url", null);
        return new fk(var12_5, var13_7, var15_13, var16_15, var9_17, false, -1, (List<String>)var0, -1, var4_14, var17_6, var7_8, var18_9, var11_18, (String)var2_3, (String)var14_11, false, false, var1_2.tF, false);
    }

    /*
     * Exception decompiling
     */
    public static String a(fi var0, fw var1_2, Location var2_3, String var3_4, String var4_5) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [1[TRYBLOCK], 4[FORLOOP]], but top level block is 2[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
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

    private static void a(HashMap<String, Object> hashMap, Location location) {
        HashMap<String, Number> hashMap2 = new HashMap<String, Number>();
        float f = location.getAccuracy();
        long l = location.getTime();
        long l2 = (long)(location.getLatitude() * 1.0E7);
        long l3 = (long)(location.getLongitude() * 1.0E7);
        hashMap2.put("radius", Float.valueOf(f * 1000.0f));
        hashMap2.put("lat", l2);
        hashMap2.put("long", l3);
        hashMap2.put("time", l * 1000);
        hashMap.put("uule", hashMap2);
    }

    private static void a(HashMap<String, Object> hashMap, av av) {
        String string = gf.di();
        if (string != null) {
            hashMap.put("abf", string);
        }
        if (av.nT != -1) {
            hashMap.put("cust_age", up.format(new Date(av.nT)));
        }
        if (av.extras != null) {
            hashMap.put("extras", av.extras);
        }
        if (av.nU != -1) {
            hashMap.put("cust_gender", av.nU);
        }
        if (av.nV != null) {
            hashMap.put("kw", av.nV);
        }
        if (av.nX != -1) {
            hashMap.put("tag_for_child_directed_treatment", av.nX);
        }
        if (av.nW) {
            hashMap.put("adtest", "on");
        }
        if (av.versionCode >= 2) {
            if (av.nY) {
                hashMap.put("d_imp_hdr", 1);
            }
            if (!TextUtils.isEmpty((CharSequence)av.nZ)) {
                hashMap.put("ppid", av.nZ);
            }
            if (av.oa != null) {
                fs.a(hashMap, av.oa);
            }
        }
        if (av.versionCode >= 3 && av.oc != null) {
            hashMap.put("url", av.oc);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void a(HashMap<String, Object> hashMap, bj bj) {
        String string;
        Object var3_2 = null;
        if (Color.alpha(bj.oH) != 0) {
            hashMap.put("acolor", fs.t(bj.oH));
        }
        if (Color.alpha(bj.backgroundColor) != 0) {
            hashMap.put("bgcolor", fs.t(bj.backgroundColor));
        }
        if (Color.alpha(bj.oI) != 0 && Color.alpha(bj.oJ) != 0) {
            hashMap.put("gradientto", fs.t(bj.oI));
            hashMap.put("gradientfrom", fs.t(bj.oJ));
        }
        if (Color.alpha(bj.oK) != 0) {
            hashMap.put("bcolor", fs.t(bj.oK));
        }
        hashMap.put("bthick", Integer.toString(bj.oL));
        switch (bj.oM) {
            default: {
                string = null;
                break;
            }
            case 0: {
                string = "none";
                break;
            }
            case 1: {
                string = "dashed";
                break;
            }
            case 2: {
                string = "dotted";
                break;
            }
            case 3: {
                string = "solid";
            }
        }
        if (string != null) {
            hashMap.put("btype", string);
        }
        switch (bj.oN) {
            default: {
                string = var3_2;
                break;
            }
            case 2: {
                string = "dark";
                break;
            }
            case 0: {
                string = "light";
                break;
            }
            case 1: {
                string = "medium";
            }
        }
        if (string != null) {
            hashMap.put("callbuttoncolor", string);
        }
        if (bj.oO != null) {
            hashMap.put("channel", bj.oO);
        }
        if (Color.alpha(bj.oP) != 0) {
            hashMap.put("dcolor", fs.t(bj.oP));
        }
        if (bj.oQ != null) {
            hashMap.put("font", bj.oQ);
        }
        if (Color.alpha(bj.oR) != 0) {
            hashMap.put("hcolor", fs.t(bj.oR));
        }
        hashMap.put("headersize", Integer.toString(bj.oS));
        if (bj.oT != null) {
            hashMap.put("q", bj.oT);
        }
    }

    private static void a(HashMap<String, Object> hashMap, fw fw) {
        hashMap.put("am", fw.uS);
        hashMap.put("cog", fs.s(fw.uT));
        hashMap.put("coh", fs.s(fw.uU));
        if (!TextUtils.isEmpty((CharSequence)fw.uV)) {
            hashMap.put("carrier", fw.uV);
        }
        hashMap.put("gl", fw.uW);
        if (fw.uX) {
            hashMap.put("simulator", 1);
        }
        hashMap.put("ma", fs.s(fw.uY));
        hashMap.put("sp", fs.s(fw.uZ));
        hashMap.put("hl", fw.va);
        if (!TextUtils.isEmpty((CharSequence)fw.vb)) {
            hashMap.put("mv", fw.vb);
        }
        hashMap.put("muv", fw.vc);
        if (fw.vd != -2) {
            hashMap.put("cnt", fw.vd);
        }
        hashMap.put("gnt", fw.ve);
        hashMap.put("pt", fw.vf);
        hashMap.put("rm", fw.vg);
        hashMap.put("riv", fw.vh);
        hashMap.put("u_sd", Float.valueOf(fw.vi));
        hashMap.put("sh", fw.vk);
        hashMap.put("sw", fw.vj);
        Bundle bundle = new Bundle();
        bundle.putInt("active_network_state", fw.vo);
        bundle.putBoolean("active_network_metered", fw.vn);
        hashMap.put("connectivity", bundle);
        bundle = new Bundle();
        bundle.putBoolean("is_charging", fw.vm);
        bundle.putDouble("battery_level", fw.vl);
        hashMap.put("battery", bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Integer s(boolean bl) {
        int n;
        if (bl) {
            n = 1;
            do {
                return n;
                break;
            } while (true);
        }
        n = 0;
        return n;
    }

    private static String t(int n) {
        return String.format(Locale.US, "#%06x", 16777215 & n);
    }
}

