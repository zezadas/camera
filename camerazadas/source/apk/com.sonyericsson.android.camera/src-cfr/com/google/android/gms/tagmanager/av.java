/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.bm;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

class av
implements bm {
    private HttpClient apu;

    av() {
    }

    private InputStream a(HttpClient object, HttpResponse httpResponse) throws IOException {
        int n = httpResponse.getStatusLine().getStatusCode();
        if (n == 200) {
            bh.V("Success response");
            return httpResponse.getEntity().getContent();
        }
        object = "Bad response: " + n;
        if (n == 404) {
            throw new FileNotFoundException((String)object);
        }
        throw new IOException((String)object);
    }

    private void a(HttpClient httpClient) {
        if (httpClient != null && httpClient.getConnectionManager() != null) {
            httpClient.getConnectionManager().shutdown();
        }
    }

    @Override
    public InputStream cD(String object) throws IOException {
        this.apu = this.ov();
        object = this.apu.execute(new HttpGet((String)object));
        return this.a(this.apu, (HttpResponse)object);
    }

    @Override
    public void close() {
        this.a(this.apu);
    }

    HttpClient ov() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 20000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
        return new DefaultHttpClient(basicHttpParams);
    }
}

