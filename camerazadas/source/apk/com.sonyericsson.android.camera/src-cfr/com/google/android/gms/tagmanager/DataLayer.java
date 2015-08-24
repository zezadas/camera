/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.bh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT = new Object();
    static final String[] aoG = "gtm.lifetime".toString().split("\\.");
    private static final Pattern aoH = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<b, Integer> aoI;
    private final Map<String, Object> aoJ;
    private final ReentrantLock aoK;
    private final LinkedList<Map<String, Object>> aoL;
    private final c aoM;
    private final CountDownLatch aoN;

    DataLayer() {
        this(new c(){

            @Override
            public void a(c.a a) {
                a.g(new ArrayList<a>());
            }

            @Override
            public void a(List<a> list, long l) {
            }

            @Override
            public void cx(String string) {
            }
        });
    }

    DataLayer(c c) {
        this.aoM = c;
        this.aoI = new ConcurrentHashMap();
        this.aoJ = new HashMap<String, Object>();
        this.aoK = new ReentrantLock();
        this.aoL = new LinkedList();
        this.aoN = new CountDownLatch(1);
        this.oe();
    }

    private void F(Map<String, Object> map) {
        this.aoK.lock();
        try {
            this.aoL.offer(map);
            if (this.aoK.getHoldCount() == 1) {
                this.of();
            }
            this.G(map);
            return;
        }
        finally {
            this.aoK.unlock();
        }
    }

    private void G(Map<String, Object> object) {
        Long l = this.H((Map<String, Object>)object);
        if (l == null) {
            return;
        }
        object = this.J((Map<String, Object>)object);
        object.remove("gtm.lifetime");
        this.aoM.a((List<a>)object, l);
    }

    private Long H(Map<String, Object> object) {
        if ((object = this.I((Map<String, Object>)object)) == null) {
            return null;
        }
        return DataLayer.cw(object.toString());
    }

    private Object I(Map<String, Object> object) {
        String[] arrstring = aoG;
        int n = arrstring.length;
        int n2 = 0;
        do {
            Object object2 = object;
            if (n2 < n) {
                object2 = arrstring[n2];
                if (!(object instanceof Map)) {
                    object2 = null;
                }
            } else {
                return object2;
            }
            object = object.get(object2);
            ++n2;
        } while (true);
    }

    private List<a> J(Map<String, Object> map) {
        ArrayList<a> arrayList = new ArrayList<a>();
        this.a(map, "", arrayList);
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void K(Map<String, Object> map) {
        Map<String, Object> map2 = this.aoJ;
        synchronized (map2) {
            Iterator<String> iterator = map.keySet().iterator();
            do {
                if (!iterator.hasNext()) {
                    // MONITOREXIT [2, 3, 4] lbl6 : MonitorExitStatement: MONITOREXIT : var2_2
                    this.L(map);
                    return;
                }
                String string = iterator.next();
                this.a(this.c(string, map.get(string)), this.aoJ);
            } while (true);
        }
    }

    private void L(Map<String, Object> map) {
        Iterator iterator = this.aoI.keySet().iterator();
        while (iterator.hasNext()) {
            ((b)iterator.next()).D(map);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(Map<String, Object> object, String string, Collection<a> collection) {
        Iterator iterator = object.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            StringBuilder stringBuilder = new StringBuilder().append(string);
            object = string.length() == 0 ? "" : ".";
            object = stringBuilder.append((String)object).append((String)entry.getKey()).toString();
            if (entry.getValue() instanceof Map) {
                this.a((Map)entry.getValue(), (String)object, collection);
                continue;
            }
            if (object.equals("gtm.lifetime")) continue;
            collection.add(new a((String)object, entry.getValue()));
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static Long cw(String string) {
        long l;
        Object object = aoH.matcher((CharSequence)string);
        if (!object.matches()) {
            bh.U("unknown _lifetime: " + string);
            return null;
        }
        try {
            l = Long.parseLong(object.group(1));
        }
        catch (NumberFormatException var4_3) {
            bh.W("illegal number in _lifetime value: " + string);
            l = 0;
        }
        if (l <= 0) {
            bh.U("non-positive _lifetime: " + string);
            return null;
        }
        if ((object = object.group(2)).length() == 0) {
            return l;
        }
        switch (object.charAt(0)) {
            default: {
                bh.W("unknown units in _lifetime: " + string);
                return null;
            }
            case 's': {
                return l * 1000;
            }
            case 'm': {
                return l * 1000 * 60;
            }
            case 'h': {
                return l * 1000 * 60 * 60;
            }
            case 'd': 
        }
        return l * 1000 * 60 * 60 * 24;
    }

    public static /* varargs */ List<Object> listOf(Object ... arrobject) {
        ArrayList<Object> arrayList = new ArrayList<Object>();
        for (int i = 0; i < arrobject.length; ++i) {
            arrayList.add(arrobject[i]);
        }
        return arrayList;
    }

    public static /* varargs */ Map<String, Object> mapOf(Object ... arrobject) {
        if (arrobject.length % 2 != 0) {
            throw new IllegalArgumentException("expected even number of key-value pairs");
        }
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        for (int i = 0; i < arrobject.length; i+=2) {
            if (!(arrobject[i] instanceof String)) {
                throw new IllegalArgumentException("key is not a string: " + arrobject[i]);
            }
            hashMap.put((String)arrobject[i], arrobject[i + 1]);
        }
        return hashMap;
    }

    private void oe() {
        this.aoM.a(new c.a(){

            @Override
            public void g(List<a> object) {
                for (a a : object) {
                    DataLayer.this.F(DataLayer.this.c(a.JO, a.wq));
                }
                DataLayer.this.aoN.countDown();
            }
        });
    }

    private void of() {
        Map<String, Object> map;
        int n = 0;
        while ((map = this.aoL.poll()) != null) {
            this.K(map);
            if (++n <= 500) continue;
            this.aoL.clear();
            throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
        }
    }

    void a(b b) {
        this.aoI.put(b, 0);
    }

    void a(Map<String, Object> map, Map<String, Object> map2) {
        for (String string : map.keySet()) {
            Object object = map.get(string);
            if (object instanceof List) {
                if (!(map2.get(string) instanceof List)) {
                    map2.put(string, new ArrayList());
                }
                this.b((List)object, (List)map2.get(string));
                continue;
            }
            if (object instanceof Map) {
                if (!(map2.get(string) instanceof Map)) {
                    map2.put(string, new HashMap());
                }
                this.a((Map)object, (Map)map2.get(string));
                continue;
            }
            map2.put(string, object);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void b(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        for (int i = 0; i < list.size(); ++i) {
            Object object = list.get(i);
            if (object instanceof List) {
                if (!(list2.get(i) instanceof List)) {
                    list2.set(i, new ArrayList());
                }
                this.b((List)object, (List)list2.get(i));
                continue;
            }
            if (object instanceof Map) {
                if (!(list2.get(i) instanceof Map)) {
                    list2.set(i, new HashMap());
                }
                this.a((Map)object, (Map)list2.get(i));
                continue;
            }
            if (object == OBJECT_NOT_PRESENT) continue;
            list2.set(i, object);
        }
    }

    Map<String, Object> c(String hashMap, Object object) {
        HashMap<String, Object> hashMap2 = new HashMap<String, Object>();
        String[] arrstring = hashMap.toString().split("\\.");
        hashMap = hashMap2;
        for (int i = 0; i < arrstring.length - 1; ++i) {
            HashMap<String, HashMap<String, Object>> hashMap3 = new HashMap<String, HashMap<String, Object>>();
            hashMap.put(arrstring[i], hashMap3);
            hashMap = hashMap3;
        }
        hashMap.put(arrstring[arrstring.length - 1], (HashMap<String, Object>)object);
        return hashMap2;
    }

    void cv(String string) {
        this.push(string, null);
        this.aoM.cx(string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Object get(String object) {
        Map<String, Object> map = this.aoJ;
        synchronized (map) {
            Object object2 = this.aoJ;
            String[] arrstring = object.split("\\.");
            int n = arrstring.length;
            object = object2;
            for (int i = 0; i < n; ++i) {
                object2 = arrstring[i];
                if (!(object instanceof Map)) {
                    return null;
                }
                if ((object = ((Map)object).get(object2)) != null) continue;
                return null;
            }
            return object;
        }
    }

    public void push(String string, Object object) {
        this.push(this.c(string, object));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void push(Map<String, Object> map) {
        try {
            this.aoN.await();
        }
        catch (InterruptedException var2_2) {
            bh.W("DataLayer.push: unexpected InterruptedException");
        }
        this.F(map);
    }

    public void pushEvent(String string, Map<String, Object> map) {
        map = new HashMap<String, Object>(map);
        map.put("event", string);
        this.push(map);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public String toString() {
        Map<String, Object> map = this.aoJ;
        synchronized (map) {
            Object object = new StringBuilder();
            Iterator<Map.Entry<String, Object>> iterator = this.aoJ.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry<String, Object> entry = iterator.next();
                object.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", entry.getKey(), entry.getValue()));
            }
            return object.toString();
        }
    }

    static final class a {
        public final String JO;
        public final Object wq;

        a(String string, Object object) {
            this.JO = string;
            this.wq = object;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            if (!(object instanceof a)) {
                return false;
            }
            object = (a)object;
            if (!this.JO.equals(object.JO)) return false;
            if (!this.wq.equals(object.wq)) return false;
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode((Object[])new Integer[]{this.JO.hashCode(), this.wq.hashCode()});
        }

        public String toString() {
            return "Key: " + this.JO + " value: " + this.wq.toString();
        }
    }

    static interface b {
        public void D(Map<String, Object> var1);
    }

    static interface c {
        public void a(a var1);

        public void a(List<com.google.android.gms.tagmanager.DataLayer$a> var1, long var2);

        public void cx(String var1);

        public static interface a {
            public void g(List<com.google.android.gms.tagmanager.DataLayer$a> var1);
        }

    }

}

