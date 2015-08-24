/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.auth.api.GoogleAuthApiRequestCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleAuthApiRequest
implements SafeParcelable {
    public static final GoogleAuthApiRequestCreator CREATOR = new GoogleAuthApiRequestCreator();
    public static final String DEFAULT_SCOPE_PREFIX = "oauth2:";
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int VERSION_CODE = 1;
    byte[] DA;
    long DB;
    String Dt;
    Bundle Du;
    String Dv;
    List<String> Dw;
    String Dx;
    int Dy;
    Bundle Dz;
    String name;
    String version;
    final int versionCode;
    String yR;

    GoogleAuthApiRequest(int n, String string, String string2, String string3, String string4, Bundle bundle, String string5, List<String> list, String string6, int n2, Bundle bundle2, byte[] arrby, long l) {
        this.versionCode = n;
        this.name = string;
        this.version = string2;
        this.Dt = string3;
        this.yR = string4;
        this.Du = bundle;
        this.Dv = string5;
        this.Dw = list;
        this.Dx = string6;
        this.Dy = n2;
        this.Dz = bundle2;
        this.DA = arrby;
        this.DB = l;
    }

    public GoogleAuthApiRequest(String string, String string2, String string3) {
        this.versionCode = 1;
        this.name = string;
        this.ay(string2);
        this.Dt = string3;
        this.Du = new Bundle();
        this.Dw = new ArrayList<String>();
        this.Dx = "oauth2:";
        this.Dz = new Bundle();
        this.DA = new byte[0];
    }

    public GoogleAuthApiRequest(String string, String string2, String string3, int n) {
        this.versionCode = 1;
        this.name = string;
        this.ay(string2);
        this.setPath(string3);
        this.T(n);
        this.Du = new Bundle();
        this.Dw = new ArrayList<String>();
        this.Dx = "oauth2:";
        this.Dz = new Bundle();
        this.DA = new byte[0];
    }

    private void T(int n) {
        if (n < 0 || n > 7) {
            throw new IllegalArgumentException("Invalid HTTP method.");
        }
        this.Dy = n;
    }

    private void ay(String string) {
        String string2 = string;
        if (string.charAt(0) >= '0') {
            string2 = string;
            if (string.charAt(0) <= '9') {
                string2 = "v" + string;
            }
        }
        this.version = string2;
    }

    private void setPath(String string) {
        String string2 = string;
        if (string.charAt(0) == '/') {
            string2 = string.substring(1);
        }
        string = string2;
        if (string2.charAt(string2.length() - 1) == '/') {
            string = string2.substring(0, string2.length() - 1);
        }
        this.yR = string;
    }

    public void addParameter(String string, String string2) {
        if (!this.Du.containsKey(string)) {
            ArrayList<String> arrayList = new ArrayList<String>();
            arrayList.add(string2);
            this.Du.putStringArrayList(string, arrayList);
            return;
        }
        this.Du.getStringArrayList(string).add(string2);
    }

    public void addScope(String string) {
        this.Dw.add(string);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAccountName() {
        return this.Dv;
    }

    public String getApiId() {
        return this.Dt;
    }

    public String getFullScope() {
        String string = this.getScope();
        if (string == null) {
            return null;
        }
        return this.Dx + string;
    }

    public String getHeader(String string) {
        return this.Dz.getString(string);
    }

    public Bundle getHeaders() {
        return this.Dz;
    }

    public Map<String, String> getHeadersAsMap() {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (String string : this.Dz.keySet()) {
            hashMap.put(string, this.Dz.getString(string));
        }
        return hashMap;
    }

    public byte[] getHttpBody() {
        return this.DA;
    }

    public JSONObject getHttpBodyAsJson() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject(new String(this.DA, "UTF-8"));
            return jSONObject;
        }
        catch (UnsupportedEncodingException var1_2) {
            Log.e("GoogleAuthApiRequest", "Unsupported encoding error.");
            return null;
        }
    }

    public int getHttpMethod() {
        return this.Dy;
    }

    public String getName() {
        return this.name;
    }

    public Bundle getParameters() {
        return this.Du;
    }

    public Map<String, List<String>> getParametersAsMap() {
        HashMap<String, List<String>> hashMap = new HashMap<String, List<String>>();
        for (String string : this.Du.keySet()) {
            hashMap.put(string, this.Du.getStringArrayList(string));
        }
        return hashMap;
    }

    public String getPath() {
        return this.yR;
    }

    public String getScope() {
        if (this.Dw.size() == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < this.Dw.size(); ++i) {
            stringBuffer.append(this.Dw.get(i));
            if (i == this.Dw.size() - 1) continue;
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public long getTimeout() {
        return this.DB;
    }

    public String getVersion() {
        return this.version;
    }

    public void putHeader(String string, String string2) {
        this.Dz.putString(string, string2);
    }

    public void setAccountName(String string) {
        this.Dv = string;
    }

    public void setHttpBody(String string) {
        try {
            this.DA = string.getBytes("UTF-8");
            return;
        }
        catch (UnsupportedEncodingException var1_2) {
            Log.e("GoogleAuthApiRequest", "Unsupported encoding error.");
            return;
        }
    }

    public void setTimeout(long l) {
        this.DB = l;
    }

    public String toString() {
        return "{ API: " + this.name + "/" + this.version + ", Scope: " + this.getFullScope() + ", Account: " + this.getAccountName() + " }";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        GoogleAuthApiRequestCreator.a(this, parcel, n);
    }
}

