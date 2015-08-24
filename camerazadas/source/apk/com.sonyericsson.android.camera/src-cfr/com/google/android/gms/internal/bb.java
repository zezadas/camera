/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.R;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ez;

@ez
public final class bb {
    private final AdSize[] oj;
    private final String ok;

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public bb(Context var1_1, AttributeSet var2_2) {
        var4_3 = true;
        super();
        var1_1 = var1_1.getResources().obtainAttributes((AttributeSet)var2_2, R.styleable.AdsAttrs);
        var2_2 = var1_1.getString(R.styleable.AdsAttrs_adSize);
        var5_4 = var1_1.getString(R.styleable.AdsAttrs_adSizes);
        var3_5 = TextUtils.isEmpty((CharSequence)var2_2) == false;
        if (TextUtils.isEmpty((CharSequence)var5_4)) {
            var4_3 = false;
        }
        if (var3_5 && !var4_3) {
            this.oj = bb.q((String)var2_2);
        } else if (!var3_5 && var4_3) {
            this.oj = bb.q(var5_4);
        } else {
            ** GOTO lbl17
        }
        this.ok = var1_1.getString(R.styleable.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty((CharSequence)this.ok) == false) return;
        throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
lbl17: // 2 sources:
        if (var3_5 == false) throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        if (var4_3 == false) throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static AdSize[] q(String string) {
        String[] arrstring = string.split("\\s*,\\s*");
        AdSize[] arradSize = new AdSize[arrstring.length];
        for (int i = 0; i < arrstring.length; ++i) {
            String string2 = arrstring[i].trim();
            if (string2.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                int n;
                int n2;
                String[] arrstring2 = string2.split("[xX]");
                arrstring2[0] = arrstring2[0].trim();
                arrstring2[1] = arrstring2[1].trim();
                try {
                    n2 = "FULL_WIDTH".equals(arrstring2[0]) ? -1 : Integer.parseInt(arrstring2[0]);
                    boolean bl = "AUTO_HEIGHT".equals(arrstring2[1]);
                    n = bl ? -2 : Integer.parseInt(arrstring2[1]);
                }
                catch (NumberFormatException var0_1) {
                    throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + string2);
                }
                arradSize[i] = new AdSize(n2, n);
                continue;
            }
            if ("BANNER".equals(string2)) {
                arradSize[i] = AdSize.BANNER;
                continue;
            }
            if ("LARGE_BANNER".equals(string2)) {
                arradSize[i] = AdSize.LARGE_BANNER;
                continue;
            }
            if ("FULL_BANNER".equals(string2)) {
                arradSize[i] = AdSize.FULL_BANNER;
                continue;
            }
            if ("LEADERBOARD".equals(string2)) {
                arradSize[i] = AdSize.LEADERBOARD;
                continue;
            }
            if ("MEDIUM_RECTANGLE".equals(string2)) {
                arradSize[i] = AdSize.MEDIUM_RECTANGLE;
                continue;
            }
            if ("SMART_BANNER".equals(string2)) {
                arradSize[i] = AdSize.SMART_BANNER;
                continue;
            }
            if (!"WIDE_SKYSCRAPER".equals(string2)) {
                throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + string2);
            }
            arradSize[i] = AdSize.WIDE_SKYSCRAPER;
        }
        if (arradSize.length == 0) {
            throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + string);
        }
        return arradSize;
    }

    public AdSize[] f(boolean bl) {
        if (!(bl || this.oj.length == 1)) {
            throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
        }
        return this.oj;
    }

    public String getAdUnitId() {
        return this.ok;
    }
}

