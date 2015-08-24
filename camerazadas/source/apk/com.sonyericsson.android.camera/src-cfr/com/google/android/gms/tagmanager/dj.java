/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.df;
import com.google.android.gms.tagmanager.dg;
import com.google.android.gms.tagmanager.di;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

class dj
extends dg {
    private static final String ID = a.aO.toString();
    private static final String asd = b.bj.toString();
    private static final String ase = b.bs.toString();
    private static final String asf = b.cE.toString();
    private static final String asg = b.cz.toString();
    private static final String ash = b.cy.toString();
    private static final String asi = b.br.toString();
    private static final String asj = b.eN.toString();
    private static final String ask = b.eQ.toString();
    private static final String asl = b.eS.toString();
    private static final List<String> asm = Arrays.asList("detail", "checkout", "checkout_option", "click", "add", "remove", "purchase", "refund");
    private static Map<String, String> asn;
    private static Map<String, String> aso;
    private final DataLayer aod;
    private final Set<String> asp;
    private final df asq;

    public dj(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new df(context));
    }

    dj(Context context, DataLayer dataLayer, df df) {
        super(ID, new String[0]);
        this.aod = dataLayer;
        this.asq = df;
        this.asp = new HashSet<String>();
        this.asp.add("");
        this.asp.add("0");
        this.asp.add("false");
    }

    private Promotion M(Map<String, String> object) {
        Promotion promotion = new Promotion();
        String string = object.get("id");
        if (string != null) {
            promotion.setId(String.valueOf(string));
        }
        if ((string = object.get("name")) != null) {
            promotion.setName(String.valueOf(string));
        }
        if ((string = object.get("creative")) != null) {
            promotion.setCreative(String.valueOf(string));
        }
        if ((object = object.get("position")) != null) {
            promotion.setPosition(String.valueOf(object));
        }
        return promotion;
    }

    private Product N(Map<String, Object> object) {
        Product product = new Product();
        Object object2 = object.get("id");
        if (object2 != null) {
            product.setId(String.valueOf(object2));
        }
        if ((object2 = object.get("name")) != null) {
            product.setName(String.valueOf(object2));
        }
        if ((object2 = object.get("brand")) != null) {
            product.setBrand(String.valueOf(object2));
        }
        if ((object2 = object.get("category")) != null) {
            product.setCategory(String.valueOf(object2));
        }
        if ((object2 = object.get("variant")) != null) {
            product.setVariant(String.valueOf(object2));
        }
        if ((object2 = object.get("coupon")) != null) {
            product.setCouponCode(String.valueOf(object2));
        }
        if ((object2 = object.get("position")) != null) {
            product.setPosition(this.z(object2));
        }
        if ((object2 = object.get("price")) != null) {
            product.setPrice(this.y(object2));
        }
        if ((object = object.get("quantity")) != null) {
            product.setQuantity(this.z(object));
        }
        return product;
    }

    private Map<String, String> O(Map<String, d.a> hashMap) {
        if ((hashMap = hashMap.get(ask)) != null) {
            return this.c((d.a)hashMap);
        }
        if (asn == null) {
            hashMap = new HashMap<String, String>();
            hashMap.put("transactionId", "&ti");
            hashMap.put("transactionAffiliation", "&ta");
            hashMap.put("transactionTax", "&tt");
            hashMap.put("transactionShipping", "&ts");
            hashMap.put("transactionTotal", "&tr");
            hashMap.put("transactionCurrency", "&cu");
            asn = hashMap;
        }
        return asn;
    }

    private Map<String, String> P(Map<String, d.a> hashMap) {
        if ((hashMap = hashMap.get(asl)) != null) {
            return this.c((d.a)hashMap);
        }
        if (aso == null) {
            hashMap = new HashMap<String, String>();
            hashMap.put("name", "&in");
            hashMap.put("sku", "&ic");
            hashMap.put("category", "&iv");
            hashMap.put("price", "&ip");
            hashMap.put("quantity", "&iq");
            hashMap.put("currency", "&cu");
            aso = hashMap;
        }
        return aso;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void a(Tracker tracker, Map<String, d.a> object) {
        LinkedList<Object> linkedList;
        block9 : {
            Iterator iterator;
            String string = this.dc("transactionId");
            if (string == null) {
                bh.T("Cannot find transactionId in data layer.");
                return;
            }
            linkedList = new LinkedList<Object>();
            try {
                iterator = this.p(object.get(asi));
                iterator.put((String)"&t", (String)"transaction");
                for (Object object2 : this.O((Map<String, d.a>)object).entrySet()) {
                    this.b((Map<String, String>)iterator, object2.getValue(), this.dc(object2.getKey()));
                }
                linkedList.add(iterator);
                iterator = this.dd("transactionProducts");
                if (iterator == null) break block9;
                iterator = iterator.iterator();
            }
            catch (IllegalArgumentException var1_2) {
                bh.b("Unable to send transaction", var1_2);
                return;
            }
            while (iterator.hasNext()) {
                Object object2;
                Object object3 = (Map)iterator.next();
                if (object3.get("name") == null) {
                    bh.T("Unable to send transaction item hit due to missing 'name' field.");
                    return;
                }
                object2 = this.p((d.a)object.get(asi));
                object2.put("&t", "item");
                object2.put("&ti", string);
                for (Map.Entry<String, String> entry : this.P((Map<String, d.a>)object).entrySet()) {
                    this.b((Map<String, String>)object2, entry.getValue(), (String)object3.get(entry.getKey()));
                }
                linkedList.add(object2);
            }
        }
        object = linkedList.iterator();
        while (object.hasNext()) {
            tracker.send((Map)object.next());
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void b(Tracker var1_1, Map<String, d.a> var2_2) {
        var6_4 = new HitBuilders.ScreenViewBuilder();
        var4_5 = this.p((d.a)var2_2.get(dj.asi));
        var6_4.setAll((Map<String, String>)var4_5);
        var2_2 = this.f((Map<String, d.a>)var2_2, dj.asg) ? ((var2_2 = this.aod.get("ecommerce")) instanceof Map ? (Map)var2_2 : null) : ((var2_2 = di.o((d.a)var2_2.get(dj.ash))) instanceof Map != false ? (Map)var2_2 : null);
        if (var2_2 == null) ** GOTO lbl53
        var4_5 = var5_6 = var4_5.get("&cu");
        if (var5_6 == null) {
            var4_5 = (String)var2_2.get("currencyCode");
        }
        if (var4_5 != null) {
            var6_4.set("&cu", (String)var4_5);
        }
        if ((var4_5 = var2_2.get("impressions")) instanceof List) {
            for (Iterator<E> var5_6 : (List)var4_5) {
                try {
                    var6_4.addImpression(this.N((Map<String, Object>)var5_6), (String)var5_6.get("list"));
                }
                catch (RuntimeException var5_7) {
                    bh.T("Failed to extract a product from DataLayer. " + var5_7.getMessage());
                }
            }
        }
        var4_5 = var2_2.containsKey("promoClick") != false ? (List)((Map)var2_2.get("promoClick")).get("promotions") : (var2_2.containsKey("promoView") != false ? (List)((Map)var2_2.get("promoView")).get("promotions") : null);
        if (var4_5 == null) ** GOTO lbl33
        for (Iterator<E> var5_6 : var4_5) {
            try {
                var6_4.addPromotion(this.M((Map<String, String>)var5_6));
            }
            catch (RuntimeException var5_8) {
                bh.T("Failed to extract a promotion from DataLayer. " + var5_8.getMessage());
            }
        }
        if (var2_2.containsKey("promoClick")) {
            var6_4.set("&promoa", "click");
            var3_9 = false;
        } else {
            var6_4.set("&promoa", "view");
lbl33: // 2 sources:
            var3_9 = true;
        }
        if (var3_9) {
            var5_6 = dj.asm.iterator();
            while (var5_6.hasNext()) {
                var4_5 = (String)var5_6.next();
                if (!var2_2.containsKey(var4_5)) continue;
                var2_2 = (Map)var2_2.get(var4_5);
                for (Map var7_10 : (List)var2_2.get("products")) {
                    try {
                        var6_4.addProduct(this.N(var7_10));
                    }
                    catch (RuntimeException var7_11) {
                        bh.T("Failed to extract a product from DataLayer. " + var7_11.getMessage());
                    }
                }
                try {
                    var2_2 = var2_2.containsKey("actionField") != false ? this.c((String)var4_5, (Map)var2_2.get("actionField")) : new ProductAction((String)var4_5);
                    var6_4.setProductAction((ProductAction)var2_2);
                    break;
                }
                catch (RuntimeException var2_3) {
                    bh.T("Failed to extract a product action from DataLayer. " + var2_3.getMessage());
                }
            }
        }
lbl53: // 6 sources:
        var1_1.send(var6_4.build());
    }

    private void b(Map<String, String> map, String string, String string2) {
        if (string2 != null) {
            map.put(string, string2);
        }
    }

    private ProductAction c(String object, Map<String, Object> object2) {
        object = new ProductAction((String)object);
        Object object3 = object2.get("id");
        if (object3 != null) {
            object.setTransactionId(String.valueOf(object3));
        }
        if ((object3 = object2.get("affiliation")) != null) {
            object.setTransactionAffiliation(String.valueOf(object3));
        }
        if ((object3 = object2.get("coupon")) != null) {
            object.setTransactionCouponCode(String.valueOf(object3));
        }
        if ((object3 = object2.get("list")) != null) {
            object.setProductActionList(String.valueOf(object3));
        }
        if ((object3 = object2.get("option")) != null) {
            object.setCheckoutOptions(String.valueOf(object3));
        }
        if ((object3 = object2.get("revenue")) != null) {
            object.setTransactionRevenue(this.y(object3));
        }
        if ((object3 = object2.get("tax")) != null) {
            object.setTransactionTax(this.y(object3));
        }
        if ((object3 = object2.get("shipping")) != null) {
            object.setTransactionShipping(this.y(object3));
        }
        if ((object2 = object2.get("step")) != null) {
            object.setCheckoutStep(this.z(object2));
        }
        return object;
    }

    private Map<String, String> c(d.a linkedHashMap) {
        if (!((linkedHashMap = di.o(linkedHashMap)) instanceof Map)) {
            return null;
        }
        Object object = linkedHashMap;
        linkedHashMap = new LinkedHashMap<String, String>();
        for (Map.Entry entry : object.entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private String dc(String object) {
        if ((object = this.aod.get((String)object)) == null) {
            return null;
        }
        return object.toString();
    }

    private List<Map<String, String>> dd(String object) {
        if ((object = this.aod.get((String)object)) == null) {
            return null;
        }
        if (!(object instanceof List)) {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        }
        Iterator iterator = ((List)object).iterator();
        while (iterator.hasNext()) {
            if (iterator.next() instanceof Map) continue;
            throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
        }
        return (List)object;
    }

    private boolean f(Map<String, d.a> object, String string) {
        if ((object = object.get(string)) == null) {
            return false;
        }
        return di.n((d.a)object);
    }

    private Map<String, String> p(d.a object) {
        if (object == null) {
            return new HashMap<String, String>();
        }
        if ((object = this.c((d.a)object)) == null) {
            return new HashMap<String, String>();
        }
        String string = (String)object.get("&aip");
        if (string != null && this.asp.contains(string.toLowerCase())) {
            object.remove("&aip");
        }
        return object;
    }

    private Double y(Object object) {
        if (object instanceof String) {
            try {
                object = Double.valueOf((String)object);
                return object;
            }
            catch (NumberFormatException var1_2) {
                throw new RuntimeException("Cannot convert the object to Double: " + var1_2.getMessage());
            }
        }
        if (object instanceof Integer) {
            return ((Integer)object).doubleValue();
        }
        if (object instanceof Double) {
            return (Double)object;
        }
        throw new RuntimeException("Cannot convert the object to Double: " + object.toString());
    }

    private Integer z(Object object) {
        if (object instanceof String) {
            try {
                object = Integer.valueOf((String)object);
                return object;
            }
            catch (NumberFormatException var1_2) {
                throw new RuntimeException("Cannot convert the object to Integer: " + var1_2.getMessage());
            }
        }
        if (object instanceof Double) {
            return ((Double)object).intValue();
        }
        if (object instanceof Integer) {
            return (Integer)object;
        }
        throw new RuntimeException("Cannot convert the object to Integer: " + object.toString());
    }

    @Override
    public void E(Map<String, d.a> map) {
        Tracker tracker = this.asq.cU("_GTM_DEFAULT_TRACKER_");
        if (this.f(map, asf)) {
            this.b(tracker, map);
            return;
        }
        if (this.f(map, ase)) {
            tracker.send(this.p(map.get(asi)));
            return;
        }
        if (this.f(map, asj)) {
            this.a(tracker, map);
            return;
        }
        bh.W("Ignoring unknown tag.");
    }
}

