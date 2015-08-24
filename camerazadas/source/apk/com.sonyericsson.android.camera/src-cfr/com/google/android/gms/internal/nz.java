/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.internal.jf;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jj;
import com.google.android.gms.internal.oa;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.od;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.og;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.oj;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class nz
extends jj
implements Person {
    public static final oa CREATOR = new oa();
    private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
    String BL;
    final int BR;
    String Fc;
    String NH;
    final Set<Integer> amc;
    String ana;
    a anb;
    String anc;
    String and;
    int ane;
    b anf;
    String ang;
    c anh;
    boolean ani;
    d anj;
    String ank;
    int anl;
    List<f> anm;
    List<g> ann;
    int ano;
    int anp;
    String anq;
    List<h> anr;
    boolean ans;
    int om;
    String uR;

    static {
        amb.put("aboutMe", ji.a.l("aboutMe", 2));
        amb.put("ageRange", ji.a.a("ageRange", 3, a.class));
        amb.put("birthday", ji.a.l("birthday", 4));
        amb.put("braggingRights", ji.a.l("braggingRights", 5));
        amb.put("circledByCount", ji.a.i("circledByCount", 6));
        amb.put("cover", ji.a.a("cover", 7, b.class));
        amb.put("currentLocation", ji.a.l("currentLocation", 8));
        amb.put("displayName", ji.a.l("displayName", 9));
        amb.put("gender", ji.a.a("gender", 12, new jf().h("male", 0).h("female", 1).h("other", 2), false));
        amb.put("id", ji.a.l("id", 14));
        amb.put("image", ji.a.a("image", 15, c.class));
        amb.put("isPlusUser", ji.a.k("isPlusUser", 16));
        amb.put("language", ji.a.l("language", 18));
        amb.put("name", ji.a.a("name", 19, d.class));
        amb.put("nickname", ji.a.l("nickname", 20));
        amb.put("objectType", ji.a.a("objectType", 21, new jf().h("person", 0).h("page", 1), false));
        amb.put("organizations", ji.a.b("organizations", 22, f.class));
        amb.put("placesLived", ji.a.b("placesLived", 23, g.class));
        amb.put("plusOneCount", ji.a.i("plusOneCount", 24));
        amb.put("relationshipStatus", ji.a.a("relationshipStatus", 25, new jf().h("single", 0).h("in_a_relationship", 1).h("engaged", 2).h("married", 3).h("its_complicated", 4).h("open_relationship", 5).h("widowed", 6).h("in_domestic_partnership", 7).h("in_civil_union", 8), false));
        amb.put("tagline", ji.a.l("tagline", 26));
        amb.put("url", ji.a.l("url", 27));
        amb.put("urls", ji.a.b("urls", 28, h.class));
        amb.put("verified", ji.a.k("verified", 29));
    }

    public nz() {
        this.BR = 1;
        this.amc = new HashSet<Integer>();
    }

    public nz(String string, String string2, c c, int n, String string3) {
        this.BR = 1;
        this.amc = new HashSet<Integer>();
        this.NH = string;
        this.amc.add(9);
        this.BL = string2;
        this.amc.add(14);
        this.anh = c;
        this.amc.add(15);
        this.anl = n;
        this.amc.add(21);
        this.uR = string3;
        this.amc.add(27);
    }

    nz(Set<Integer> set, int n, String string, a a, String string2, String string3, int n2, b b, String string4, String string5, int n3, String string6, c c, boolean bl, String string7, d d, String string8, int n4, List<f> list, List<g> list2, int n5, int n6, String string9, String string10, List<h> list3, boolean bl2) {
        this.amc = set;
        this.BR = n;
        this.ana = string;
        this.anb = a;
        this.anc = string2;
        this.and = string3;
        this.ane = n2;
        this.anf = b;
        this.ang = string4;
        this.NH = string5;
        this.om = n3;
        this.BL = string6;
        this.anh = c;
        this.ani = bl;
        this.Fc = string7;
        this.anj = d;
        this.ank = string8;
        this.anl = n4;
        this.anm = list;
        this.ann = list2;
        this.ano = n5;
        this.anp = n6;
        this.anq = string9;
        this.uR = string10;
        this.anr = list3;
        this.ans = bl2;
    }

    public static nz i(byte[] object) {
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall((byte[])object, 0, object.length);
        parcel.setDataPosition(0);
        object = CREATOR.dd(parcel);
        parcel.recycle();
        return object;
    }

    @Override
    protected boolean a(ji.a a) {
        return this.amc.contains(a.hm());
    }

    @Override
    protected Object b(ji.a a) {
        switch (a.hm()) {
            default: {
                throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
            }
            case 2: {
                return this.ana;
            }
            case 3: {
                return this.anb;
            }
            case 4: {
                return this.anc;
            }
            case 5: {
                return this.and;
            }
            case 6: {
                return this.ane;
            }
            case 7: {
                return this.anf;
            }
            case 8: {
                return this.ang;
            }
            case 9: {
                return this.NH;
            }
            case 12: {
                return this.om;
            }
            case 14: {
                return this.BL;
            }
            case 15: {
                return this.anh;
            }
            case 16: {
                return this.ani;
            }
            case 18: {
                return this.Fc;
            }
            case 19: {
                return this.anj;
            }
            case 20: {
                return this.ank;
            }
            case 21: {
                return this.anl;
            }
            case 22: {
                return this.anm;
            }
            case 23: {
                return this.ann;
            }
            case 24: {
                return this.ano;
            }
            case 25: {
                return this.anp;
            }
            case 26: {
                return this.anq;
            }
            case 27: {
                return this.uR;
            }
            case 28: {
                return this.anr;
            }
            case 29: 
        }
        return this.ans;
    }

    @Override
    public int describeContents() {
        oa oa = CREATOR;
        return 0;
    }

    public boolean equals(Object object) {
        if (!(object instanceof nz)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        object = (nz)object;
        for (ji.a a : amb.values()) {
            if (this.a(a)) {
                if (object.a(a)) {
                    if (this.b(a).equals(object.b(a))) continue;
                    return false;
                }
                return false;
            }
            if (!object.a(a)) continue;
            return false;
        }
        return true;
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.nu();
    }

    @Override
    public String getAboutMe() {
        return this.ana;
    }

    @Override
    public Person.AgeRange getAgeRange() {
        return this.anb;
    }

    @Override
    public String getBirthday() {
        return this.anc;
    }

    @Override
    public String getBraggingRights() {
        return this.and;
    }

    @Override
    public int getCircledByCount() {
        return this.ane;
    }

    @Override
    public Person.Cover getCover() {
        return this.anf;
    }

    @Override
    public String getCurrentLocation() {
        return this.ang;
    }

    @Override
    public String getDisplayName() {
        return this.NH;
    }

    @Override
    public int getGender() {
        return this.om;
    }

    @Override
    public String getId() {
        return this.BL;
    }

    @Override
    public Person.Image getImage() {
        return this.anh;
    }

    @Override
    public String getLanguage() {
        return this.Fc;
    }

    @Override
    public Person.Name getName() {
        return this.anj;
    }

    @Override
    public String getNickname() {
        return this.ank;
    }

    @Override
    public int getObjectType() {
        return this.anl;
    }

    @Override
    public List<Person.Organizations> getOrganizations() {
        return (ArrayList)this.anm;
    }

    @Override
    public List<Person.PlacesLived> getPlacesLived() {
        return (ArrayList)this.ann;
    }

    @Override
    public int getPlusOneCount() {
        return this.ano;
    }

    @Override
    public int getRelationshipStatus() {
        return this.anp;
    }

    @Override
    public String getTagline() {
        return this.anq;
    }

    @Override
    public String getUrl() {
        return this.uR;
    }

    @Override
    public List<Person.Urls> getUrls() {
        return (ArrayList)this.anr;
    }

    @Override
    public boolean hasAboutMe() {
        return this.amc.contains(2);
    }

    @Override
    public boolean hasAgeRange() {
        return this.amc.contains(3);
    }

    @Override
    public boolean hasBirthday() {
        return this.amc.contains(4);
    }

    @Override
    public boolean hasBraggingRights() {
        return this.amc.contains(5);
    }

    @Override
    public boolean hasCircledByCount() {
        return this.amc.contains(6);
    }

    @Override
    public boolean hasCover() {
        return this.amc.contains(7);
    }

    @Override
    public boolean hasCurrentLocation() {
        return this.amc.contains(8);
    }

    @Override
    public boolean hasDisplayName() {
        return this.amc.contains(9);
    }

    @Override
    public boolean hasGender() {
        return this.amc.contains(12);
    }

    @Override
    public boolean hasId() {
        return this.amc.contains(14);
    }

    @Override
    public boolean hasImage() {
        return this.amc.contains(15);
    }

    @Override
    public boolean hasIsPlusUser() {
        return this.amc.contains(16);
    }

    @Override
    public boolean hasLanguage() {
        return this.amc.contains(18);
    }

    @Override
    public boolean hasName() {
        return this.amc.contains(19);
    }

    @Override
    public boolean hasNickname() {
        return this.amc.contains(20);
    }

    @Override
    public boolean hasObjectType() {
        return this.amc.contains(21);
    }

    @Override
    public boolean hasOrganizations() {
        return this.amc.contains(22);
    }

    @Override
    public boolean hasPlacesLived() {
        return this.amc.contains(23);
    }

    @Override
    public boolean hasPlusOneCount() {
        return this.amc.contains(24);
    }

    @Override
    public boolean hasRelationshipStatus() {
        return this.amc.contains(25);
    }

    @Override
    public boolean hasTagline() {
        return this.amc.contains(26);
    }

    @Override
    public boolean hasUrl() {
        return this.amc.contains(27);
    }

    @Override
    public boolean hasUrls() {
        return this.amc.contains(28);
    }

    @Override
    public boolean hasVerified() {
        return this.amc.contains(29);
    }

    public int hashCode() {
        Iterator iterator = amb.values().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            ji.a a = iterator.next();
            if (!this.a(a)) continue;
            int n2 = a.hm();
            n = this.b(a).hashCode() + (n + n2);
        }
        return n;
    }

    @Override
    public HashMap<String, ji.a<?, ?>> hf() {
        return amb;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    @Override
    public boolean isPlusUser() {
        return this.ani;
    }

    @Override
    public boolean isVerified() {
        return this.ans;
    }

    public nz nu() {
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        oa oa = CREATOR;
        oa.a(this, parcel, n);
    }

    public static final class a
    extends jj
    implements Person.AgeRange {
        public static final ob CREATOR = new ob();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        final Set<Integer> amc;
        int ant;
        int anu;

        static {
            amb.put("max", ji.a.i("max", 2));
            amb.put("min", ji.a.i("min", 3));
        }

        public a() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        a(Set<Integer> set, int n, int n2, int n3) {
            this.amc = set;
            this.BR = n;
            this.ant = n2;
            this.anu = n3;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 2: {
                    return this.ant;
                }
                case 3: 
            }
            return this.anu;
        }

        @Override
        public int describeContents() {
            ob ob = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof a)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (a)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nv();
        }

        @Override
        public int getMax() {
            return this.ant;
        }

        @Override
        public int getMin() {
            return this.anu;
        }

        @Override
        public boolean hasMax() {
            return this.amc.contains(2);
        }

        @Override
        public boolean hasMin() {
            return this.amc.contains(3);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        public a nv() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            ob ob = CREATOR;
            ob.a(this, parcel, n);
        }
    }

    public static final class com.google.android.gms.internal.nz$b
    extends jj
    implements Person.Cover {
        public static final oc CREATOR = new oc();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        final Set<Integer> amc;
        a anv;
        b anw;
        int anx;

        static {
            amb.put("coverInfo", ji.a.a("coverInfo", 2, a.class));
            amb.put("coverPhoto", ji.a.a("coverPhoto", 3, b.class));
            amb.put("layout", ji.a.a("layout", 4, new jf().h("banner", 0), false));
        }

        public com.google.android.gms.internal.nz$b() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        com.google.android.gms.internal.nz$b(Set<Integer> set, int n, a a, b b, int n2) {
            this.amc = set;
            this.BR = n;
            this.anv = a;
            this.anw = b;
            this.anx = n2;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 2: {
                    return this.anv;
                }
                case 3: {
                    return this.anw;
                }
                case 4: 
            }
            return this.anx;
        }

        @Override
        public int describeContents() {
            oc oc = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof com.google.android.gms.internal.nz$b)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (com.google.android.gms.internal.nz$b)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nw();
        }

        @Override
        public Person.Cover.CoverInfo getCoverInfo() {
            return this.anv;
        }

        @Override
        public Person.Cover.CoverPhoto getCoverPhoto() {
            return this.anw;
        }

        @Override
        public int getLayout() {
            return this.anx;
        }

        @Override
        public boolean hasCoverInfo() {
            return this.amc.contains(2);
        }

        @Override
        public boolean hasCoverPhoto() {
            return this.amc.contains(3);
        }

        @Override
        public boolean hasLayout() {
            return this.amc.contains(4);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        public com.google.android.gms.internal.nz$b nw() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            oc oc = CREATOR;
            oc.a(this, parcel, n);
        }

        public static final class a
        extends jj
        implements Person.Cover.CoverInfo {
            public static final od CREATOR = new od();
            private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
            final int BR;
            final Set<Integer> amc;
            int any;
            int anz;

            static {
                amb.put("leftImageOffset", ji.a.i("leftImageOffset", 2));
                amb.put("topImageOffset", ji.a.i("topImageOffset", 3));
            }

            public a() {
                this.BR = 1;
                this.amc = new HashSet<Integer>();
            }

            a(Set<Integer> set, int n, int n2, int n3) {
                this.amc = set;
                this.BR = n;
                this.any = n2;
                this.anz = n3;
            }

            @Override
            protected boolean a(ji.a a) {
                return this.amc.contains(a.hm());
            }

            @Override
            protected Object b(ji.a a) {
                switch (a.hm()) {
                    default: {
                        throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                    }
                    case 2: {
                        return this.any;
                    }
                    case 3: 
                }
                return this.anz;
            }

            @Override
            public int describeContents() {
                od od = CREATOR;
                return 0;
            }

            public boolean equals(Object object) {
                if (!(object instanceof a)) {
                    return false;
                }
                if (this == object) {
                    return true;
                }
                object = (a)object;
                for (ji.a a : amb.values()) {
                    if (this.a(a)) {
                        if (object.a(a)) {
                            if (this.b(a).equals(object.b(a))) continue;
                            return false;
                        }
                        return false;
                    }
                    if (!object.a(a)) continue;
                    return false;
                }
                return true;
            }

            @Override
            public /* synthetic */ Object freeze() {
                return this.nx();
            }

            @Override
            public int getLeftImageOffset() {
                return this.any;
            }

            @Override
            public int getTopImageOffset() {
                return this.anz;
            }

            @Override
            public boolean hasLeftImageOffset() {
                return this.amc.contains(2);
            }

            @Override
            public boolean hasTopImageOffset() {
                return this.amc.contains(3);
            }

            public int hashCode() {
                Iterator iterator = amb.values().iterator();
                int n = 0;
                while (iterator.hasNext()) {
                    ji.a a = iterator.next();
                    if (!this.a(a)) continue;
                    int n2 = a.hm();
                    n = this.b(a).hashCode() + (n + n2);
                }
                return n;
            }

            @Override
            public HashMap<String, ji.a<?, ?>> hf() {
                return amb;
            }

            @Override
            public boolean isDataValid() {
                return true;
            }

            public a nx() {
                return this;
            }

            @Override
            public void writeToParcel(Parcel parcel, int n) {
                od od = CREATOR;
                od.a(this, parcel, n);
            }
        }

        public static final class b
        extends jj
        implements Person.Cover.CoverPhoto {
            public static final oe CREATOR = new oe();
            private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
            final int BR;
            final Set<Integer> amc;
            int lf;
            int lg;
            String uR;

            static {
                amb.put("height", ji.a.i("height", 2));
                amb.put("url", ji.a.l("url", 3));
                amb.put("width", ji.a.i("width", 4));
            }

            public b() {
                this.BR = 1;
                this.amc = new HashSet<Integer>();
            }

            b(Set<Integer> set, int n, int n2, String string, int n3) {
                this.amc = set;
                this.BR = n;
                this.lg = n2;
                this.uR = string;
                this.lf = n3;
            }

            @Override
            protected boolean a(ji.a a) {
                return this.amc.contains(a.hm());
            }

            @Override
            protected Object b(ji.a a) {
                switch (a.hm()) {
                    default: {
                        throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                    }
                    case 2: {
                        return this.lg;
                    }
                    case 3: {
                        return this.uR;
                    }
                    case 4: 
                }
                return this.lf;
            }

            @Override
            public int describeContents() {
                oe oe = CREATOR;
                return 0;
            }

            public boolean equals(Object object) {
                if (!(object instanceof b)) {
                    return false;
                }
                if (this == object) {
                    return true;
                }
                object = (b)object;
                for (ji.a a : amb.values()) {
                    if (this.a(a)) {
                        if (object.a(a)) {
                            if (this.b(a).equals(object.b(a))) continue;
                            return false;
                        }
                        return false;
                    }
                    if (!object.a(a)) continue;
                    return false;
                }
                return true;
            }

            @Override
            public /* synthetic */ Object freeze() {
                return this.ny();
            }

            @Override
            public int getHeight() {
                return this.lg;
            }

            @Override
            public String getUrl() {
                return this.uR;
            }

            @Override
            public int getWidth() {
                return this.lf;
            }

            @Override
            public boolean hasHeight() {
                return this.amc.contains(2);
            }

            @Override
            public boolean hasUrl() {
                return this.amc.contains(3);
            }

            @Override
            public boolean hasWidth() {
                return this.amc.contains(4);
            }

            public int hashCode() {
                Iterator iterator = amb.values().iterator();
                int n = 0;
                while (iterator.hasNext()) {
                    ji.a a = iterator.next();
                    if (!this.a(a)) continue;
                    int n2 = a.hm();
                    n = this.b(a).hashCode() + (n + n2);
                }
                return n;
            }

            @Override
            public HashMap<String, ji.a<?, ?>> hf() {
                return amb;
            }

            @Override
            public boolean isDataValid() {
                return true;
            }

            public b ny() {
                return this;
            }

            @Override
            public void writeToParcel(Parcel parcel, int n) {
                oe oe = CREATOR;
                oe.a(this, parcel, n);
            }
        }

    }

    public static final class c
    extends jj
    implements Person.Image {
        public static final of CREATOR = new of();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        final Set<Integer> amc;
        String uR;

        static {
            amb.put("url", ji.a.l("url", 2));
        }

        public c() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        public c(String string) {
            this.amc = new HashSet<Integer>();
            this.BR = 1;
            this.uR = string;
            this.amc.add(2);
        }

        c(Set<Integer> set, int n, String string) {
            this.amc = set;
            this.BR = n;
            this.uR = string;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 2: 
            }
            return this.uR;
        }

        @Override
        public int describeContents() {
            of of = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof c)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (c)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nz();
        }

        @Override
        public String getUrl() {
            return this.uR;
        }

        @Override
        public boolean hasUrl() {
            return this.amc.contains(2);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        public c nz() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            of of = CREATOR;
            of.a(this, parcel, n);
        }
    }

    public static final class d
    extends jj
    implements Person.Name {
        public static final og CREATOR = new og();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        String amA;
        String amD;
        final Set<Integer> amc;
        String anA;
        String anB;
        String anC;
        String anD;

        static {
            amb.put("familyName", ji.a.l("familyName", 2));
            amb.put("formatted", ji.a.l("formatted", 3));
            amb.put("givenName", ji.a.l("givenName", 4));
            amb.put("honorificPrefix", ji.a.l("honorificPrefix", 5));
            amb.put("honorificSuffix", ji.a.l("honorificSuffix", 6));
            amb.put("middleName", ji.a.l("middleName", 7));
        }

        public d() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        d(Set<Integer> set, int n, String string, String string2, String string3, String string4, String string5, String string6) {
            this.amc = set;
            this.BR = n;
            this.amA = string;
            this.anA = string2;
            this.amD = string3;
            this.anB = string4;
            this.anC = string5;
            this.anD = string6;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 2: {
                    return this.amA;
                }
                case 3: {
                    return this.anA;
                }
                case 4: {
                    return this.amD;
                }
                case 5: {
                    return this.anB;
                }
                case 6: {
                    return this.anC;
                }
                case 7: 
            }
            return this.anD;
        }

        @Override
        public int describeContents() {
            og og = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof d)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (d)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nA();
        }

        @Override
        public String getFamilyName() {
            return this.amA;
        }

        @Override
        public String getFormatted() {
            return this.anA;
        }

        @Override
        public String getGivenName() {
            return this.amD;
        }

        @Override
        public String getHonorificPrefix() {
            return this.anB;
        }

        @Override
        public String getHonorificSuffix() {
            return this.anC;
        }

        @Override
        public String getMiddleName() {
            return this.anD;
        }

        @Override
        public boolean hasFamilyName() {
            return this.amc.contains(2);
        }

        @Override
        public boolean hasFormatted() {
            return this.amc.contains(3);
        }

        @Override
        public boolean hasGivenName() {
            return this.amc.contains(4);
        }

        @Override
        public boolean hasHonorificPrefix() {
            return this.amc.contains(5);
        }

        @Override
        public boolean hasHonorificSuffix() {
            return this.amc.contains(6);
        }

        @Override
        public boolean hasMiddleName() {
            return this.amc.contains(7);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        public d nA() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            og og = CREATOR;
            og.a(this, parcel, n);
        }
    }

    public static class e {
        public static int ci(String string) {
            if (string.equals("person")) {
                return 0;
            }
            if (string.equals("page")) {
                return 1;
            }
            throw new IllegalArgumentException("Unknown objectType string: " + string);
        }
    }

    public static final class f
    extends jj
    implements Person.Organizations {
        public static final oh CREATOR = new oh();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        int FD;
        String Nw;
        String Tr;
        String amP;
        final Set<Integer> amc;
        String amz;
        String anE;
        String anF;
        boolean anG;
        String mName;

        static {
            amb.put("department", ji.a.l("department", 2));
            amb.put("description", ji.a.l("description", 3));
            amb.put("endDate", ji.a.l("endDate", 4));
            amb.put("location", ji.a.l("location", 5));
            amb.put("name", ji.a.l("name", 6));
            amb.put("primary", ji.a.k("primary", 7));
            amb.put("startDate", ji.a.l("startDate", 8));
            amb.put("title", ji.a.l("title", 9));
            amb.put("type", ji.a.a("type", 10, new jf().h("work", 0).h("school", 1), false));
        }

        public f() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        f(Set<Integer> set, int n, String string, String string2, String string3, String string4, String string5, boolean bl, String string6, String string7, int n2) {
            this.amc = set;
            this.BR = n;
            this.anE = string;
            this.Tr = string2;
            this.amz = string3;
            this.anF = string4;
            this.mName = string5;
            this.anG = bl;
            this.amP = string6;
            this.Nw = string7;
            this.FD = n2;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 2: {
                    return this.anE;
                }
                case 3: {
                    return this.Tr;
                }
                case 4: {
                    return this.amz;
                }
                case 5: {
                    return this.anF;
                }
                case 6: {
                    return this.mName;
                }
                case 7: {
                    return this.anG;
                }
                case 8: {
                    return this.amP;
                }
                case 9: {
                    return this.Nw;
                }
                case 10: 
            }
            return this.FD;
        }

        @Override
        public int describeContents() {
            oh oh = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof f)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (f)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nB();
        }

        @Override
        public String getDepartment() {
            return this.anE;
        }

        @Override
        public String getDescription() {
            return this.Tr;
        }

        @Override
        public String getEndDate() {
            return this.amz;
        }

        @Override
        public String getLocation() {
            return this.anF;
        }

        @Override
        public String getName() {
            return this.mName;
        }

        @Override
        public String getStartDate() {
            return this.amP;
        }

        @Override
        public String getTitle() {
            return this.Nw;
        }

        @Override
        public int getType() {
            return this.FD;
        }

        @Override
        public boolean hasDepartment() {
            return this.amc.contains(2);
        }

        @Override
        public boolean hasDescription() {
            return this.amc.contains(3);
        }

        @Override
        public boolean hasEndDate() {
            return this.amc.contains(4);
        }

        @Override
        public boolean hasLocation() {
            return this.amc.contains(5);
        }

        @Override
        public boolean hasName() {
            return this.amc.contains(6);
        }

        @Override
        public boolean hasPrimary() {
            return this.amc.contains(7);
        }

        @Override
        public boolean hasStartDate() {
            return this.amc.contains(8);
        }

        @Override
        public boolean hasTitle() {
            return this.amc.contains(9);
        }

        @Override
        public boolean hasType() {
            return this.amc.contains(10);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        @Override
        public boolean isPrimary() {
            return this.anG;
        }

        public f nB() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            oh oh = CREATOR;
            oh.a(this, parcel, n);
        }
    }

    public static final class g
    extends jj
    implements Person.PlacesLived {
        public static final oi CREATOR = new oi();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        final Set<Integer> amc;
        boolean anG;
        String mValue;

        static {
            amb.put("primary", ji.a.k("primary", 2));
            amb.put("value", ji.a.l("value", 3));
        }

        public g() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        g(Set<Integer> set, int n, boolean bl, String string) {
            this.amc = set;
            this.BR = n;
            this.anG = bl;
            this.mValue = string;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 2: {
                    return this.anG;
                }
                case 3: 
            }
            return this.mValue;
        }

        @Override
        public int describeContents() {
            oi oi = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof g)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (g)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nC();
        }

        @Override
        public String getValue() {
            return this.mValue;
        }

        @Override
        public boolean hasPrimary() {
            return this.amc.contains(2);
        }

        @Override
        public boolean hasValue() {
            return this.amc.contains(3);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        @Override
        public boolean isPrimary() {
            return this.anG;
        }

        public g nC() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            oi oi = CREATOR;
            oi.a(this, parcel, n);
        }
    }

    public static final class h
    extends jj
    implements Person.Urls {
        public static final oj CREATOR = new oj();
        private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
        final int BR;
        int FD;
        final Set<Integer> amc;
        String anH;
        private final int anI = 4;
        String mValue;

        static {
            amb.put("label", ji.a.l("label", 5));
            amb.put("type", ji.a.a("type", 6, new jf().h("home", 0).h("work", 1).h("blog", 2).h("profile", 3).h("other", 4).h("otherProfile", 5).h("contributor", 6).h("website", 7), false));
            amb.put("value", ji.a.l("value", 4));
        }

        public h() {
            this.BR = 1;
            this.amc = new HashSet<Integer>();
        }

        h(Set<Integer> set, int n, String string, int n2, String string2, int n3) {
            this.amc = set;
            this.BR = n;
            this.anH = string;
            this.FD = n2;
            this.mValue = string2;
        }

        @Override
        protected boolean a(ji.a a) {
            return this.amc.contains(a.hm());
        }

        @Override
        protected Object b(ji.a a) {
            switch (a.hm()) {
                default: {
                    throw new IllegalStateException("Unknown safe parcelable id=" + a.hm());
                }
                case 5: {
                    return this.anH;
                }
                case 6: {
                    return this.FD;
                }
                case 4: 
            }
            return this.mValue;
        }

        @Override
        public int describeContents() {
            oj oj = CREATOR;
            return 0;
        }

        public boolean equals(Object object) {
            if (!(object instanceof h)) {
                return false;
            }
            if (this == object) {
                return true;
            }
            object = (h)object;
            for (ji.a a : amb.values()) {
                if (this.a(a)) {
                    if (object.a(a)) {
                        if (this.b(a).equals(object.b(a))) continue;
                        return false;
                    }
                    return false;
                }
                if (!object.a(a)) continue;
                return false;
            }
            return true;
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.nE();
        }

        @Override
        public String getLabel() {
            return this.anH;
        }

        @Override
        public int getType() {
            return this.FD;
        }

        @Override
        public String getValue() {
            return this.mValue;
        }

        @Override
        public boolean hasLabel() {
            return this.amc.contains(5);
        }

        @Override
        public boolean hasType() {
            return this.amc.contains(6);
        }

        @Override
        public boolean hasValue() {
            return this.amc.contains(4);
        }

        public int hashCode() {
            Iterator iterator = amb.values().iterator();
            int n = 0;
            while (iterator.hasNext()) {
                ji.a a = iterator.next();
                if (!this.a(a)) continue;
                int n2 = a.hm();
                n = this.b(a).hashCode() + (n + n2);
            }
            return n;
        }

        @Override
        public HashMap<String, ji.a<?, ?>> hf() {
            return amb;
        }

        @Override
        public boolean isDataValid() {
            return true;
        }

        @Deprecated
        public int nD() {
            return 4;
        }

        public h nE() {
            return this;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            oj oj = CREATOR;
            oj.a(this, parcel, n);
        }
    }

}

