/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONException;
import org.json.JSONObject;

public final class WebImage
implements SafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new b();
    private final int BR;
    private final Uri KQ;
    private final int lf;
    private final int lg;

    WebImage(int n, Uri uri, int n2, int n3) {
        this.BR = n;
        this.KQ = uri;
        this.lf = n2;
        this.lg = n3;
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int n, int n2) throws IllegalArgumentException {
        this(1, uri, n, n2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (n < 0 || n2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    public WebImage(JSONObject jSONObject) throws IllegalArgumentException {
        this(WebImage.d(jSONObject), jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Uri d(JSONObject jSONObject) {
        Uri uri = null;
        if (!jSONObject.has("url")) return uri;
        try {
            return Uri.parse(jSONObject.getString("url"));
        }
        catch (JSONException jSONException) {
            return null;
        }
    }

    public JSONObject bK() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", this.KQ.toString());
            jSONObject.put("width", this.lf);
            jSONObject.put("height", this.lg);
            return jSONObject;
        }
        catch (JSONException var2_2) {
            return jSONObject;
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object == null) return false;
        if (!(object instanceof WebImage)) {
            return false;
        }
        object = (WebImage)object;
        if (!n.equal(this.KQ, object.KQ)) return false;
        if (this.lf != object.lf) return false;
        if (this.lg == object.lg) return true;
        return false;
    }

    public int getHeight() {
        return this.lg;
    }

    public Uri getUrl() {
        return this.KQ;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int getWidth() {
        return this.lf;
    }

    public int hashCode() {
        return n.hashCode(this.KQ, this.lf, this.lg);
    }

    public String toString() {
        return String.format("Image %dx%d %s", this.lf, this.lg, this.KQ.toString());
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }
}

