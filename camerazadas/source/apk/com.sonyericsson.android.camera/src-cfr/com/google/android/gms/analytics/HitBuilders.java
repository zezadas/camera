/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.aj;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.n;
import com.google.android.gms.analytics.t;
import com.google.android.gms.analytics.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class HitBuilders {

    @Deprecated
    public static class AppViewBuilder
    extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            t.ep().a(t.a.Ap);
            this.set("&t", "screenview");
        }
    }

    public static class EventBuilder
    extends HitBuilder<EventBuilder> {
        public EventBuilder() {
            t.ep().a(t.a.Ad);
            this.set("&t", "event");
        }

        public EventBuilder(String string, String string2) {
            this();
            this.setCategory(string);
            this.setAction(string2);
        }

        public EventBuilder setAction(String string) {
            this.set("&ea", string);
            return this;
        }

        public EventBuilder setCategory(String string) {
            this.set("&ec", string);
            return this;
        }

        public EventBuilder setLabel(String string) {
            this.set("&el", string);
            return this;
        }

        public EventBuilder setValue(long l) {
            this.set("&ev", Long.toString(l));
            return this;
        }
    }

    public static class ExceptionBuilder
    extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder() {
            t.ep().a(t.a.zM);
            this.set("&t", "exception");
        }

        public ExceptionBuilder setDescription(String string) {
            this.set("&exd", string);
            return this;
        }

        public ExceptionBuilder setFatal(boolean bl) {
            this.set("&exf", aj.C(bl));
            return this;
        }
    }

    protected static class HitBuilder<T extends HitBuilder> {
        private Map<String, String> AI = new HashMap<String, String>();
        ProductAction AJ;
        Map<String, List<Product>> AK = new HashMap<String, List<Product>>();
        List<Promotion> AL = new ArrayList<Promotion>();
        List<Product> AM = new ArrayList<Product>();

        protected HitBuilder() {
        }

        public T addImpression(Product product, String string) {
            if (product == null) {
                z.W("product should be non-null");
                return (T)this;
            }
            String string2 = string;
            if (string == null) {
                string2 = "";
            }
            if (!this.AK.containsKey(string2)) {
                this.AK.put(string2, new ArrayList());
            }
            this.AK.get(string2).add(product);
            return (T)this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                z.W("product should be non-null");
                return (T)this;
            }
            this.AM.add(product);
            return (T)this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                z.W("promotion should be non-null");
                return (T)this;
            }
            this.AL.add(promotion);
            return (T)this;
        }

        public Map<String, String> build() {
            HashMap<String, String> hashMap = new HashMap<String, String>(this.AI);
            if (this.AJ != null) {
                hashMap.putAll(this.AJ.build());
            }
            Iterator iterator = this.AL.iterator();
            int n = 1;
            while (iterator.hasNext()) {
                hashMap.putAll(iterator.next().aq(n.A(n)));
                ++n;
            }
            iterator = this.AM.iterator();
            n = 1;
            while (iterator.hasNext()) {
                hashMap.putAll(((Product)iterator.next()).aq(n.z(n)));
                ++n;
            }
            iterator = this.AK.entrySet().iterator();
            n = 1;
            while (iterator.hasNext()) {
                Map.Entry entry = (Map.Entry)iterator.next();
                Object object = (List)entry.getValue();
                String string = n.C(n);
                object = object.iterator();
                int n2 = 1;
                while (object.hasNext()) {
                    hashMap.putAll(((Product)object.next()).aq(string + n.B(n2)));
                    ++n2;
                }
                if (!TextUtils.isEmpty((CharSequence)entry.getKey())) {
                    hashMap.put(string + "nm", (String)entry.getKey());
                }
                ++n;
            }
            return hashMap;
        }

        protected String get(String string) {
            return this.AI.get(string);
        }

        public final T set(String string, String string2) {
            t.ep().a(t.a.zf);
            if (string != null) {
                this.AI.put(string, string2);
                return (T)this;
            }
            z.W(" HitBuilder.set() called with a null paramName.");
            return (T)this;
        }

        public final T setAll(Map<String, String> map) {
            t.ep().a(t.a.zg);
            if (map == null) {
                return (T)this;
            }
            this.AI.putAll(new HashMap<String, String>(map));
            return (T)this;
        }

        public T setCampaignParamsFromUrl(String object) {
            t.ep().a(t.a.zi);
            object = aj.ao((String)object);
            if (TextUtils.isEmpty((CharSequence)object)) {
                return (T)this;
            }
            object = aj.an((String)object);
            this.set("&cc", (String)object.get("utm_content"));
            this.set("&cm", (String)object.get("utm_medium"));
            this.set("&cn", (String)object.get("utm_campaign"));
            this.set("&cs", (String)object.get("utm_source"));
            this.set("&ck", (String)object.get("utm_term"));
            this.set("&ci", (String)object.get("utm_id"));
            this.set("&gclid", (String)object.get("gclid"));
            this.set("&dclid", (String)object.get("dclid"));
            this.set("&gmob_t", (String)object.get("gmob_t"));
            return (T)this;
        }

        public T setCustomDimension(int n, String string) {
            this.set(n.x(n), string);
            return (T)this;
        }

        public T setCustomMetric(int n, float f) {
            this.set(n.y(n), Float.toString(f));
            return (T)this;
        }

        protected T setHitType(String string) {
            this.set("&t", string);
            return (T)this;
        }

        public T setNewSession() {
            this.set("&sc", "start");
            return (T)this;
        }

        public T setNonInteraction(boolean bl) {
            this.set("&ni", aj.C(bl));
            return (T)this;
        }

        public T setProductAction(ProductAction productAction) {
            this.AJ = productAction;
            return (T)this;
        }

        public T setPromotionAction(String string) {
            this.AI.put("&promoa", string);
            return (T)this;
        }
    }

    @Deprecated
    public static class ItemBuilder
    extends HitBuilder<ItemBuilder> {
        public ItemBuilder() {
            t.ep().a(t.a.Ae);
            this.set("&t", "item");
        }

        public ItemBuilder setCategory(String string) {
            this.set("&iv", string);
            return this;
        }

        public ItemBuilder setCurrencyCode(String string) {
            this.set("&cu", string);
            return this;
        }

        public ItemBuilder setName(String string) {
            this.set("&in", string);
            return this;
        }

        public ItemBuilder setPrice(double d) {
            this.set("&ip", Double.toString(d));
            return this;
        }

        public ItemBuilder setQuantity(long l) {
            this.set("&iq", Long.toString(l));
            return this;
        }

        public ItemBuilder setSku(String string) {
            this.set("&ic", string);
            return this;
        }

        public ItemBuilder setTransactionId(String string) {
            this.set("&ti", string);
            return this;
        }
    }

    public static class ScreenViewBuilder
    extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            t.ep().a(t.a.Ap);
            this.set("&t", "screenview");
        }
    }

    public static class SocialBuilder
    extends HitBuilder<SocialBuilder> {
        public SocialBuilder() {
            t.ep().a(t.a.zP);
            this.set("&t", "social");
        }

        public SocialBuilder setAction(String string) {
            this.set("&sa", string);
            return this;
        }

        public SocialBuilder setNetwork(String string) {
            this.set("&sn", string);
            return this;
        }

        public SocialBuilder setTarget(String string) {
            this.set("&st", string);
            return this;
        }
    }

    public static class TimingBuilder
    extends HitBuilder<TimingBuilder> {
        public TimingBuilder() {
            t.ep().a(t.a.zO);
            this.set("&t", "timing");
        }

        public TimingBuilder(String string, String string2, long l) {
            this();
            this.setVariable(string2);
            this.setValue(l);
            this.setCategory(string);
        }

        public TimingBuilder setCategory(String string) {
            this.set("&utc", string);
            return this;
        }

        public TimingBuilder setLabel(String string) {
            this.set("&utl", string);
            return this;
        }

        public TimingBuilder setValue(long l) {
            this.set("&utt", Long.toString(l));
            return this;
        }

        public TimingBuilder setVariable(String string) {
            this.set("&utv", string);
            return this;
        }
    }

    @Deprecated
    public static class TransactionBuilder
    extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder() {
            t.ep().a(t.a.zL);
            this.set("&t", "transaction");
        }

        public TransactionBuilder setAffiliation(String string) {
            this.set("&ta", string);
            return this;
        }

        public TransactionBuilder setCurrencyCode(String string) {
            this.set("&cu", string);
            return this;
        }

        public TransactionBuilder setRevenue(double d) {
            this.set("&tr", Double.toString(d));
            return this;
        }

        public TransactionBuilder setShipping(double d) {
            this.set("&ts", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTax(double d) {
            this.set("&tt", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTransactionId(String string) {
            this.set("&ti", string);
            return this;
        }
    }

}

