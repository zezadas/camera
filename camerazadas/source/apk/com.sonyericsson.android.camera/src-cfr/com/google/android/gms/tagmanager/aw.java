/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.bm;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

class aw
implements bm {
    private HttpURLConnection apv;

    aw() {
    }

    private InputStream a(HttpURLConnection object) throws IOException {
        int n = object.getResponseCode();
        if (n == 200) {
            return object.getInputStream();
        }
        object = "Bad response: " + n;
        if (n == 404) {
            throw new FileNotFoundException((String)object);
        }
        throw new IOException((String)object);
    }

    private void b(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override
    public InputStream cD(String string) throws IOException {
        this.apv = this.cE(string);
        return this.a(this.apv);
    }

    HttpURLConnection cE(String object) throws IOException {
        object = (HttpURLConnection)new URL((String)object).openConnection();
        object.setReadTimeout(20000);
        object.setConnectTimeout(20000);
        return object;
    }

    @Override
    public void close() {
        this.b(this.apv);
    }
}

