/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@ez
class fv {
    private int tc;
    private final List<String> uJ;
    private final List<String> uK;
    private final String uL;
    private final String uM;
    private final String uN;
    private final String uO;
    private final boolean uP;
    private final int uQ;
    private String uR;

    public fv(int n, Map<String, String> map) {
        this.uR = map.get("url");
        this.uM = map.get("base_uri");
        this.uN = map.get("post_parameters");
        this.uP = fv.parseBoolean(map.get("drt_include"));
        this.uL = map.get("activation_overlay_url");
        this.uK = this.J(map.get("check_packages"));
        this.uQ = this.parseInt(map.get("request_id"));
        this.uO = map.get("type");
        this.uJ = this.J(map.get("errors"));
        this.tc = n;
    }

    private List<String> J(String string) {
        if (string == null) {
            return null;
        }
        return Arrays.asList(string.split(","));
    }

    private static boolean parseBoolean(String string) {
        if (string != null && (string.equals("1") || string.equals("true"))) {
            return true;
        }
        return false;
    }

    private int parseInt(String string) {
        if (string == null) {
            return 0;
        }
        return Integer.parseInt(string);
    }

    public List<String> cL() {
        return this.uJ;
    }

    public String cM() {
        return this.uN;
    }

    public boolean cN() {
        return this.uP;
    }

    public int getErrorCode() {
        return this.tc;
    }

    public String getType() {
        return this.uO;
    }

    public String getUrl() {
        return this.uR;
    }

    public void setUrl(String string) {
        this.uR = string;
    }
}

