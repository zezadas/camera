/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics.ecommerce;

import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
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
    Map<String, String> BK;

    public ProductAction(String var1);

    public Map<String, String> build();

    void put(String var1, String var2);

    public ProductAction setCheckoutOptions(String var1);

    public ProductAction setCheckoutStep(int var1);

    public ProductAction setProductActionList(String var1);

    public ProductAction setProductListSource(String var1);

    public ProductAction setTransactionAffiliation(String var1);

    public ProductAction setTransactionCouponCode(String var1);

    public ProductAction setTransactionId(String var1);

    public ProductAction setTransactionRevenue(double var1);

    public ProductAction setTransactionShipping(double var1);

    public ProductAction setTransactionTax(double var1);
}

