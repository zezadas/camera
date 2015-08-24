/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.api.GoogleAuthApiRequestCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GoogleAuthApiRequest
implements SafeParcelable {
    public static final GoogleAuthApiRequestCreator CREATOR;
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

    static;

    GoogleAuthApiRequest(int var1, String var2, String var3, String var4, String var5, Bundle var6, String var7, List<String> var8, String var9, int var10, Bundle var11, byte[] var12, long var13);

    public GoogleAuthApiRequest(String var1, String var2, String var3);

    public GoogleAuthApiRequest(String var1, String var2, String var3, int var4);

    private void T(int var1);

    private void ay(String var1);

    private void setPath(String var1);

    public void addParameter(String var1, String var2);

    public void addScope(String var1);

    @Override
    public int describeContents();

    public String getAccountName();

    public String getApiId();

    public String getFullScope();

    public String getHeader(String var1);

    public Bundle getHeaders();

    public Map<String, String> getHeadersAsMap();

    public byte[] getHttpBody();

    public JSONObject getHttpBodyAsJson() throws JSONException;

    public int getHttpMethod();

    public String getName();

    public Bundle getParameters();

    public Map<String, List<String>> getParametersAsMap();

    public String getPath();

    public String getScope();

    public long getTimeout();

    public String getVersion();

    public void putHeader(String var1, String var2);

    public void setAccountName(String var1);

    public void setHttpBody(String var1);

    public void setTimeout(long var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

