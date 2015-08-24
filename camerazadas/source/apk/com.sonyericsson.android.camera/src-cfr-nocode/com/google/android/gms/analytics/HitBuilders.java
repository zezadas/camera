/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis ignored.
 */
public class HitBuilders {
    public HitBuilders();

    /*
     * Exception performing whole class analysis ignored.
     */
    @Deprecated
    public static class AppViewBuilder
    extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class EventBuilder
    extends HitBuilder<EventBuilder> {
        public EventBuilder();

        public EventBuilder(String var1, String var2);

        public EventBuilder setAction(String var1);

        public EventBuilder setCategory(String var1);

        public EventBuilder setLabel(String var1);

        public EventBuilder setValue(long var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ExceptionBuilder
    extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder();

        public ExceptionBuilder setDescription(String var1);

        public ExceptionBuilder setFatal(boolean var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected static class HitBuilder<T extends HitBuilder> {
        private Map<String, String> AI;
        ProductAction AJ;
        Map<String, List<Product>> AK;
        List<Promotion> AL;
        List<Product> AM;

        protected HitBuilder();

        public T addImpression(Product var1, String var2);

        public T addProduct(Product var1);

        public T addPromotion(Promotion var1);

        public Map<String, String> build();

        protected String get(String var1);

        public final T set(String var1, String var2);

        public final T setAll(Map<String, String> var1);

        public T setCampaignParamsFromUrl(String var1);

        public T setCustomDimension(int var1, String var2);

        public T setCustomMetric(int var1, float var2);

        protected T setHitType(String var1);

        public T setNewSession();

        public T setNonInteraction(boolean var1);

        public T setProductAction(ProductAction var1);

        public T setPromotionAction(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    @Deprecated
    public static class ItemBuilder
    extends HitBuilder<ItemBuilder> {
        public ItemBuilder();

        public ItemBuilder setCategory(String var1);

        public ItemBuilder setCurrencyCode(String var1);

        public ItemBuilder setName(String var1);

        public ItemBuilder setPrice(double var1);

        public ItemBuilder setQuantity(long var1);

        public ItemBuilder setSku(String var1);

        public ItemBuilder setTransactionId(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ScreenViewBuilder
    extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class SocialBuilder
    extends HitBuilder<SocialBuilder> {
        public SocialBuilder();

        public SocialBuilder setAction(String var1);

        public SocialBuilder setNetwork(String var1);

        public SocialBuilder setTarget(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class TimingBuilder
    extends HitBuilder<TimingBuilder> {
        public TimingBuilder();

        public TimingBuilder(String var1, String var2, long var3);

        public TimingBuilder setCategory(String var1);

        public TimingBuilder setLabel(String var1);

        public TimingBuilder setValue(long var1);

        public TimingBuilder setVariable(String var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    @Deprecated
    public static class TransactionBuilder
    extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder();

        public TransactionBuilder setAffiliation(String var1);

        public TransactionBuilder setCurrencyCode(String var1);

        public TransactionBuilder setRevenue(double var1);

        public TransactionBuilder setShipping(double var1);

        public TransactionBuilder setTax(double var1);

        public TransactionBuilder setTransactionId(String var1);
    }

}

