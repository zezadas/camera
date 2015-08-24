/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
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
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class nz
extends jj
implements Person {
    public static final oa CREATOR;
    private static final HashMap<String, ji.a<?, ?>> amb;
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

    static;

    public nz();

    public nz(String var1, String var2, c var3, int var4, String var5);

    nz(Set<Integer> var1, int var2, String var3, a var4, String var5, String var6, int var7, b var8, String var9, String var10, int var11, String var12, c var13, boolean var14, String var15, d var16, String var17, int var18, List<f> var19, List<g> var20, int var21, int var22, String var23, String var24, List<h> var25, boolean var26);

    public static nz i(byte[] var0);

    @Override
    protected boolean a(ji.a var1);

    @Override
    protected Object b(ji.a var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public /* synthetic */ Object freeze();

    @Override
    public String getAboutMe();

    @Override
    public Person.AgeRange getAgeRange();

    @Override
    public String getBirthday();

    @Override
    public String getBraggingRights();

    @Override
    public int getCircledByCount();

    @Override
    public Person.Cover getCover();

    @Override
    public String getCurrentLocation();

    @Override
    public String getDisplayName();

    @Override
    public int getGender();

    @Override
    public String getId();

    @Override
    public Person.Image getImage();

    @Override
    public String getLanguage();

    @Override
    public Person.Name getName();

    @Override
    public String getNickname();

    @Override
    public int getObjectType();

    @Override
    public List<Person.Organizations> getOrganizations();

    @Override
    public List<Person.PlacesLived> getPlacesLived();

    @Override
    public int getPlusOneCount();

    @Override
    public int getRelationshipStatus();

    @Override
    public String getTagline();

    @Override
    public String getUrl();

    @Override
    public List<Person.Urls> getUrls();

    @Override
    public boolean hasAboutMe();

    @Override
    public boolean hasAgeRange();

    @Override
    public boolean hasBirthday();

    @Override
    public boolean hasBraggingRights();

    @Override
    public boolean hasCircledByCount();

    @Override
    public boolean hasCover();

    @Override
    public boolean hasCurrentLocation();

    @Override
    public boolean hasDisplayName();

    @Override
    public boolean hasGender();

    @Override
    public boolean hasId();

    @Override
    public boolean hasImage();

    @Override
    public boolean hasIsPlusUser();

    @Override
    public boolean hasLanguage();

    @Override
    public boolean hasName();

    @Override
    public boolean hasNickname();

    @Override
    public boolean hasObjectType();

    @Override
    public boolean hasOrganizations();

    @Override
    public boolean hasPlacesLived();

    @Override
    public boolean hasPlusOneCount();

    @Override
    public boolean hasRelationshipStatus();

    @Override
    public boolean hasTagline();

    @Override
    public boolean hasUrl();

    @Override
    public boolean hasUrls();

    @Override
    public boolean hasVerified();

    public int hashCode();

    @Override
    public HashMap<String, ji.a<?, ?>> hf();

    @Override
    public boolean isDataValid();

    @Override
    public boolean isPlusUser();

    @Override
    public boolean isVerified();

    public nz nu();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class a
    extends jj
    implements Person.AgeRange {
        public static final ob CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
        final int BR;
        final Set<Integer> amc;
        int ant;
        int anu;

        static;

        public a();

        a(Set<Integer> var1, int var2, int var3, int var4);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public int getMax();

        @Override
        public int getMin();

        @Override
        public boolean hasMax();

        @Override
        public boolean hasMin();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        public a nv();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class com.google.android.gms.internal.nz$b
    extends jj
    implements Person.Cover {
        public static final oc CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
        final int BR;
        final Set<Integer> amc;
        a anv;
        b anw;
        int anx;

        static;

        public com.google.android.gms.internal.nz$b();

        com.google.android.gms.internal.nz$b(Set<Integer> var1, int var2, a var3, b var4, int var5);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public Person.Cover.CoverInfo getCoverInfo();

        @Override
        public Person.Cover.CoverPhoto getCoverPhoto();

        @Override
        public int getLayout();

        @Override
        public boolean hasCoverInfo();

        @Override
        public boolean hasCoverPhoto();

        @Override
        public boolean hasLayout();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        public com.google.android.gms.internal.nz$b nw();

        @Override
        public void writeToParcel(Parcel var1, int var2);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class a
        extends jj
        implements Person.Cover.CoverInfo {
            public static final od CREATOR;
            private static final HashMap<String, ji.a<?, ?>> amb;
            final int BR;
            final Set<Integer> amc;
            int any;
            int anz;

            static;

            public a();

            a(Set<Integer> var1, int var2, int var3, int var4);

            @Override
            protected boolean a(ji.a var1);

            @Override
            protected Object b(ji.a var1);

            @Override
            public int describeContents();

            public boolean equals(Object var1);

            @Override
            public /* synthetic */ Object freeze();

            @Override
            public int getLeftImageOffset();

            @Override
            public int getTopImageOffset();

            @Override
            public boolean hasLeftImageOffset();

            @Override
            public boolean hasTopImageOffset();

            public int hashCode();

            @Override
            public HashMap<String, ji.a<?, ?>> hf();

            @Override
            public boolean isDataValid();

            public a nx();

            @Override
            public void writeToParcel(Parcel var1, int var2);
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class b
        extends jj
        implements Person.Cover.CoverPhoto {
            public static final oe CREATOR;
            private static final HashMap<String, ji.a<?, ?>> amb;
            final int BR;
            final Set<Integer> amc;
            int lf;
            int lg;
            String uR;

            static;

            public b();

            b(Set<Integer> var1, int var2, int var3, String var4, int var5);

            @Override
            protected boolean a(ji.a var1);

            @Override
            protected Object b(ji.a var1);

            @Override
            public int describeContents();

            public boolean equals(Object var1);

            @Override
            public /* synthetic */ Object freeze();

            @Override
            public int getHeight();

            @Override
            public String getUrl();

            @Override
            public int getWidth();

            @Override
            public boolean hasHeight();

            @Override
            public boolean hasUrl();

            @Override
            public boolean hasWidth();

            public int hashCode();

            @Override
            public HashMap<String, ji.a<?, ?>> hf();

            @Override
            public boolean isDataValid();

            public b ny();

            @Override
            public void writeToParcel(Parcel var1, int var2);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class c
    extends jj
    implements Person.Image {
        public static final of CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
        final int BR;
        final Set<Integer> amc;
        String uR;

        static;

        public c();

        public c(String var1);

        c(Set<Integer> var1, int var2, String var3);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public String getUrl();

        @Override
        public boolean hasUrl();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        public c nz();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class d
    extends jj
    implements Person.Name {
        public static final og CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
        final int BR;
        String amA;
        String amD;
        final Set<Integer> amc;
        String anA;
        String anB;
        String anC;
        String anD;

        static;

        public d();

        d(Set<Integer> var1, int var2, String var3, String var4, String var5, String var6, String var7, String var8);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public String getFamilyName();

        @Override
        public String getFormatted();

        @Override
        public String getGivenName();

        @Override
        public String getHonorificPrefix();

        @Override
        public String getHonorificSuffix();

        @Override
        public String getMiddleName();

        @Override
        public boolean hasFamilyName();

        @Override
        public boolean hasFormatted();

        @Override
        public boolean hasGivenName();

        @Override
        public boolean hasHonorificPrefix();

        @Override
        public boolean hasHonorificSuffix();

        @Override
        public boolean hasMiddleName();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        public d nA();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    public static class e {
        public static int ci(String var0);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class f
    extends jj
    implements Person.Organizations {
        public static final oh CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
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

        static;

        public f();

        f(Set<Integer> var1, int var2, String var3, String var4, String var5, String var6, String var7, boolean var8, String var9, String var10, int var11);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public String getDepartment();

        @Override
        public String getDescription();

        @Override
        public String getEndDate();

        @Override
        public String getLocation();

        @Override
        public String getName();

        @Override
        public String getStartDate();

        @Override
        public String getTitle();

        @Override
        public int getType();

        @Override
        public boolean hasDepartment();

        @Override
        public boolean hasDescription();

        @Override
        public boolean hasEndDate();

        @Override
        public boolean hasLocation();

        @Override
        public boolean hasName();

        @Override
        public boolean hasPrimary();

        @Override
        public boolean hasStartDate();

        @Override
        public boolean hasTitle();

        @Override
        public boolean hasType();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        @Override
        public boolean isPrimary();

        public f nB();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class g
    extends jj
    implements Person.PlacesLived {
        public static final oi CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
        final int BR;
        final Set<Integer> amc;
        boolean anG;
        String mValue;

        static;

        public g();

        g(Set<Integer> var1, int var2, boolean var3, String var4);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public String getValue();

        @Override
        public boolean hasPrimary();

        @Override
        public boolean hasValue();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        @Override
        public boolean isPrimary();

        public g nC();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class h
    extends jj
    implements Person.Urls {
        public static final oj CREATOR;
        private static final HashMap<String, ji.a<?, ?>> amb;
        final int BR;
        int FD;
        final Set<Integer> amc;
        String anH;
        private final int anI;
        String mValue;

        static;

        public h();

        h(Set<Integer> var1, int var2, String var3, int var4, String var5, int var6);

        @Override
        protected boolean a(ji.a var1);

        @Override
        protected Object b(ji.a var1);

        @Override
        public int describeContents();

        public boolean equals(Object var1);

        @Override
        public /* synthetic */ Object freeze();

        @Override
        public String getLabel();

        @Override
        public int getType();

        @Override
        public String getValue();

        @Override
        public boolean hasLabel();

        @Override
        public boolean hasType();

        @Override
        public boolean hasValue();

        public int hashCode();

        @Override
        public HashMap<String, ji.a<?, ?>> hf();

        @Override
        public boolean isDataValid();

        @Deprecated
        public int nD();

        public h nE();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

}

