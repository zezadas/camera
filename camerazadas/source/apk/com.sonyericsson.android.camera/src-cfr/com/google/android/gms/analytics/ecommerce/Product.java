/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.n;
import com.google.android.gms.common.internal.o;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Product {
    Map<String, String> BK = new HashMap<String, String>();

    public Map<String, String> aq(String string) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (Map.Entry<String, String> entry : this.BK.entrySet()) {
            hashMap.put(string + entry.getKey(), entry.getValue());
        }
        return hashMap;
    }

    void put(String string, String string2) {
        o.b(string, (Object)"Name should be non-null");
        this.BK.put(string, string2);
    }

    public Product setBrand(String string) {
        this.put("br", string);
        return this;
    }

    public Product setCategory(String string) {
        this.put("ca", string);
        return this;
    }

    public Product setCouponCode(String string) {
        this.put("cc", string);
        return this;
    }

    public Product setCustomDimension(int n, String string) {
        this.put(n.D(n), string);
        return this;
    }

    public Product setCustomMetric(int n, int n2) {
        this.put(n.E(n), Integer.toString(n2));
        return this;
    }

    public Product setId(String string) {
        this.put("id", string);
        return this;
    }

    public Product setName(String string) {
        this.put("nm", string);
        return this;
    }

    public Product setPosition(int n) {
        this.put("ps", Integer.toString(n));
        return this;
    }

    public Product setPrice(double d) {
        this.put("pr", Double.toString(d));
        return this;
    }

    public Product setQuantity(int n) {
        this.put("qt", Integer.toString(n));
        return this;
    }

    public Product setVariant(String string) {
        this.put("va", string);
        return this;
    }
}

