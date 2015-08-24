/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.common.internal.o;
import java.util.HashMap;
import java.util.Map;

public class ProductAction {
    public static final String ACTION_ADD = "add";
    public static final String ACTION_CHECKOUT = "checkout";
    public static final String ACTION_CHECKOUT_OPTION = "checkout_option";
    @Deprecated
    public static final String ACTION_CHECKOUT_OPTIONS = "checkout_options";
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_DETAIL = "detail";
    public static final String ACTION_PURCHASE = "purchase";
    public static final String ACTION_REFUND = "refund";
    public static final String ACTION_REMOVE = "remove";
    Map<String, String> BK = new HashMap<String, String>();

    public ProductAction(String string) {
        this.put("&pa", string);
    }

    public Map<String, String> build() {
        return new HashMap<String, String>(this.BK);
    }

    void put(String string, String string2) {
        o.b(string, (Object)"Name should be non-null");
        this.BK.put(string, string2);
    }

    public ProductAction setCheckoutOptions(String string) {
        this.put("&col", string);
        return this;
    }

    public ProductAction setCheckoutStep(int n) {
        this.put("&cos", Integer.toString(n));
        return this;
    }

    public ProductAction setProductActionList(String string) {
        this.put("&pal", string);
        return this;
    }

    public ProductAction setProductListSource(String string) {
        this.put("&pls", string);
        return this;
    }

    public ProductAction setTransactionAffiliation(String string) {
        this.put("&ta", string);
        return this;
    }

    public ProductAction setTransactionCouponCode(String string) {
        this.put("&tcc", string);
        return this;
    }

    public ProductAction setTransactionId(String string) {
        this.put("&ti", string);
        return this;
    }

    public ProductAction setTransactionRevenue(double d) {
        this.put("&tr", Double.toString(d));
        return this;
    }

    public ProductAction setTransactionShipping(double d) {
        this.put("&ts", Double.toString(d));
        return this;
    }

    public ProductAction setTransactionTax(double d) {
        this.put("&tt", Double.toString(d));
        return this;
    }
}

