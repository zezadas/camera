/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jj;
import com.google.android.gms.internal.nv;
import com.google.android.gms.plus.model.moments.ItemScope;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class nu
extends jj
implements ItemScope {
    public static final nv CREATOR = new nv();
    private static final HashMap<String, ji.a<?, ?>> amb = new HashMap();
    String BL;
    final int BR;
    String Tr;
    double aek;
    double ael;
    String amA;
    String amB;
    nu amC;
    String amD;
    String amE;
    String amF;
    nu amG;
    nu amH;
    nu amI;
    List<nu> amJ;
    String amK;
    String amL;
    String amM;
    String amN;
    nu amO;
    String amP;
    String amQ;
    String amR;
    nu amS;
    String amT;
    String amU;
    String amV;
    String amW;
    final Set<Integer> amc;
    nu amd;
    List<String> ame;
    nu amf;
    String amg;
    String amh;
    String ami;
    List<nu> amj;
    int amk;
    List<nu> aml;
    nu amm;
    List<nu> amn;
    String amo;
    String amp;
    nu amq;
    String amr;
    String ams;
    List<nu> amt;
    String amu;
    String amv;
    String amw;
    String amx;
    String amy;
    String amz;
    String mName;
    String ol;
    String uO;
    String uR;

    static {
        amb.put("about", ji.a.a("about", 2, nu.class));
        amb.put("additionalName", ji.a.m("additionalName", 3));
        amb.put("address", ji.a.a("address", 4, nu.class));
        amb.put("addressCountry", ji.a.l("addressCountry", 5));
        amb.put("addressLocality", ji.a.l("addressLocality", 6));
        amb.put("addressRegion", ji.a.l("addressRegion", 7));
        amb.put("associated_media", ji.a.b("associated_media", 8, nu.class));
        amb.put("attendeeCount", ji.a.i("attendeeCount", 9));
        amb.put("attendees", ji.a.b("attendees", 10, nu.class));
        amb.put("audio", ji.a.a("audio", 11, nu.class));
        amb.put("author", ji.a.b("author", 12, nu.class));
        amb.put("bestRating", ji.a.l("bestRating", 13));
        amb.put("birthDate", ji.a.l("birthDate", 14));
        amb.put("byArtist", ji.a.a("byArtist", 15, nu.class));
        amb.put("caption", ji.a.l("caption", 16));
        amb.put("contentSize", ji.a.l("contentSize", 17));
        amb.put("contentUrl", ji.a.l("contentUrl", 18));
        amb.put("contributor", ji.a.b("contributor", 19, nu.class));
        amb.put("dateCreated", ji.a.l("dateCreated", 20));
        amb.put("dateModified", ji.a.l("dateModified", 21));
        amb.put("datePublished", ji.a.l("datePublished", 22));
        amb.put("description", ji.a.l("description", 23));
        amb.put("duration", ji.a.l("duration", 24));
        amb.put("embedUrl", ji.a.l("embedUrl", 25));
        amb.put("endDate", ji.a.l("endDate", 26));
        amb.put("familyName", ji.a.l("familyName", 27));
        amb.put("gender", ji.a.l("gender", 28));
        amb.put("geo", ji.a.a("geo", 29, nu.class));
        amb.put("givenName", ji.a.l("givenName", 30));
        amb.put("height", ji.a.l("height", 31));
        amb.put("id", ji.a.l("id", 32));
        amb.put("image", ji.a.l("image", 33));
        amb.put("inAlbum", ji.a.a("inAlbum", 34, nu.class));
        amb.put("latitude", ji.a.j("latitude", 36));
        amb.put("location", ji.a.a("location", 37, nu.class));
        amb.put("longitude", ji.a.j("longitude", 38));
        amb.put("name", ji.a.l("name", 39));
        amb.put("partOfTVSeries", ji.a.a("partOfTVSeries", 40, nu.class));
        amb.put("performers", ji.a.b("performers", 41, nu.class));
        amb.put("playerType", ji.a.l("playerType", 42));
        amb.put("postOfficeBoxNumber", ji.a.l("postOfficeBoxNumber", 43));
        amb.put("postalCode", ji.a.l("postalCode", 44));
        amb.put("ratingValue", ji.a.l("ratingValue", 45));
        amb.put("reviewRating", ji.a.a("reviewRating", 46, nu.class));
        amb.put("startDate", ji.a.l("startDate", 47));
        amb.put("streetAddress", ji.a.l("streetAddress", 48));
        amb.put("text", ji.a.l("text", 49));
        amb.put("thumbnail", ji.a.a("thumbnail", 50, nu.class));
        amb.put("thumbnailUrl", ji.a.l("thumbnailUrl", 51));
        amb.put("tickerSymbol", ji.a.l("tickerSymbol", 52));
        amb.put("type", ji.a.l("type", 53));
        amb.put("url", ji.a.l("url", 54));
        amb.put("width", ji.a.l("width", 55));
        amb.put("worstRating", ji.a.l("worstRating", 56));
    }

    public nu() {
        this.BR = 1;
        this.amc = new HashSet<Integer>();
    }

    nu(Set<Integer> set, int n, nu nu, List<String> list, nu nu2, String string, String string2, String string3, List<nu> list2, int n2, List<nu> list3, nu nu3, List<nu> list4, String string4, String string5, nu nu4, String string6, String string7, String string8, List<nu> list5, String string9, String string10, String string11, String string12, String string13, String string14, String string15, String string16, String string17, nu nu5, String string18, String string19, String string20, String string21, nu nu6, double d, nu nu7, double d2, String string22, nu nu8, List<nu> list6, String string23, String string24, String string25, String string26, nu nu9, String string27, String string28, String string29, nu nu10, String string30, String string31, String string32, String string33, String string34, String string35) {
        this.amc = set;
        this.BR = n;
        this.amd = nu;
        this.ame = list;
        this.amf = nu2;
        this.amg = string;
        this.amh = string2;
        this.ami = string3;
        this.amj = list2;
        this.amk = n2;
        this.aml = list3;
        this.amm = nu3;
        this.amn = list4;
        this.amo = string4;
        this.amp = string5;
        this.amq = nu4;
        this.amr = string6;
        this.ams = string7;
        this.ol = string8;
        this.amt = list5;
        this.amu = string9;
        this.amv = string10;
        this.amw = string11;
        this.Tr = string12;
        this.amx = string13;
        this.amy = string14;
        this.amz = string15;
        this.amA = string16;
        this.amB = string17;
        this.amC = nu5;
        this.amD = string18;
        this.amE = string19;
        this.BL = string20;
        this.amF = string21;
        this.amG = nu6;
        this.aek = d;
        this.amH = nu7;
        this.ael = d2;
        this.mName = string22;
        this.amI = nu8;
        this.amJ = list6;
        this.amK = string23;
        this.amL = string24;
        this.amM = string25;
        this.amN = string26;
        this.amO = nu9;
        this.amP = string27;
        this.amQ = string28;
        this.amR = string29;
        this.amS = nu10;
        this.amT = string30;
        this.amU = string31;
        this.uO = string32;
        this.uR = string33;
        this.amV = string34;
        this.amW = string35;
    }

    public nu(Set<Integer> set, nu nu, List<String> list, nu nu2, String string, String string2, String string3, List<nu> list2, int n, List<nu> list3, nu nu3, List<nu> list4, String string4, String string5, nu nu4, String string6, String string7, String string8, List<nu> list5, String string9, String string10, String string11, String string12, String string13, String string14, String string15, String string16, String string17, nu nu5, String string18, String string19, String string20, String string21, nu nu6, double d, nu nu7, double d2, String string22, nu nu8, List<nu> list6, String string23, String string24, String string25, String string26, nu nu9, String string27, String string28, String string29, nu nu10, String string30, String string31, String string32, String string33, String string34, String string35) {
        this.amc = set;
        this.BR = 1;
        this.amd = nu;
        this.ame = list;
        this.amf = nu2;
        this.amg = string;
        this.amh = string2;
        this.ami = string3;
        this.amj = list2;
        this.amk = n;
        this.aml = list3;
        this.amm = nu3;
        this.amn = list4;
        this.amo = string4;
        this.amp = string5;
        this.amq = nu4;
        this.amr = string6;
        this.ams = string7;
        this.ol = string8;
        this.amt = list5;
        this.amu = string9;
        this.amv = string10;
        this.amw = string11;
        this.Tr = string12;
        this.amx = string13;
        this.amy = string14;
        this.amz = string15;
        this.amA = string16;
        this.amB = string17;
        this.amC = nu5;
        this.amD = string18;
        this.amE = string19;
        this.BL = string20;
        this.amF = string21;
        this.amG = nu6;
        this.aek = d;
        this.amH = nu7;
        this.ael = d2;
        this.mName = string22;
        this.amI = nu8;
        this.amJ = list6;
        this.amK = string23;
        this.amL = string24;
        this.amM = string25;
        this.amN = string26;
        this.amO = nu9;
        this.amP = string27;
        this.amQ = string28;
        this.amR = string29;
        this.amS = nu10;
        this.amT = string30;
        this.amU = string31;
        this.uO = string32;
        this.uR = string33;
        this.amV = string34;
        this.amW = string35;
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
                return this.amd;
            }
            case 3: {
                return this.ame;
            }
            case 4: {
                return this.amf;
            }
            case 5: {
                return this.amg;
            }
            case 6: {
                return this.amh;
            }
            case 7: {
                return this.ami;
            }
            case 8: {
                return this.amj;
            }
            case 9: {
                return this.amk;
            }
            case 10: {
                return this.aml;
            }
            case 11: {
                return this.amm;
            }
            case 12: {
                return this.amn;
            }
            case 13: {
                return this.amo;
            }
            case 14: {
                return this.amp;
            }
            case 15: {
                return this.amq;
            }
            case 16: {
                return this.amr;
            }
            case 17: {
                return this.ams;
            }
            case 18: {
                return this.ol;
            }
            case 19: {
                return this.amt;
            }
            case 20: {
                return this.amu;
            }
            case 21: {
                return this.amv;
            }
            case 22: {
                return this.amw;
            }
            case 23: {
                return this.Tr;
            }
            case 24: {
                return this.amx;
            }
            case 25: {
                return this.amy;
            }
            case 26: {
                return this.amz;
            }
            case 27: {
                return this.amA;
            }
            case 28: {
                return this.amB;
            }
            case 29: {
                return this.amC;
            }
            case 30: {
                return this.amD;
            }
            case 31: {
                return this.amE;
            }
            case 32: {
                return this.BL;
            }
            case 33: {
                return this.amF;
            }
            case 34: {
                return this.amG;
            }
            case 36: {
                return this.aek;
            }
            case 37: {
                return this.amH;
            }
            case 38: {
                return this.ael;
            }
            case 39: {
                return this.mName;
            }
            case 40: {
                return this.amI;
            }
            case 41: {
                return this.amJ;
            }
            case 42: {
                return this.amK;
            }
            case 43: {
                return this.amL;
            }
            case 44: {
                return this.amM;
            }
            case 45: {
                return this.amN;
            }
            case 46: {
                return this.amO;
            }
            case 47: {
                return this.amP;
            }
            case 48: {
                return this.amQ;
            }
            case 49: {
                return this.amR;
            }
            case 50: {
                return this.amS;
            }
            case 51: {
                return this.amT;
            }
            case 52: {
                return this.amU;
            }
            case 53: {
                return this.uO;
            }
            case 54: {
                return this.uR;
            }
            case 55: {
                return this.amV;
            }
            case 56: 
        }
        return this.amW;
    }

    @Override
    public int describeContents() {
        nv nv = CREATOR;
        return 0;
    }

    public boolean equals(Object object) {
        if (!(object instanceof nu)) {
            return false;
        }
        if (this == object) {
            return true;
        }
        object = (nu)object;
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
        return this.nr();
    }

    @Override
    public ItemScope getAbout() {
        return this.amd;
    }

    @Override
    public List<String> getAdditionalName() {
        return this.ame;
    }

    @Override
    public ItemScope getAddress() {
        return this.amf;
    }

    @Override
    public String getAddressCountry() {
        return this.amg;
    }

    @Override
    public String getAddressLocality() {
        return this.amh;
    }

    @Override
    public String getAddressRegion() {
        return this.ami;
    }

    @Override
    public List<ItemScope> getAssociated_media() {
        return (ArrayList)this.amj;
    }

    @Override
    public int getAttendeeCount() {
        return this.amk;
    }

    @Override
    public List<ItemScope> getAttendees() {
        return (ArrayList)this.aml;
    }

    @Override
    public ItemScope getAudio() {
        return this.amm;
    }

    @Override
    public List<ItemScope> getAuthor() {
        return (ArrayList)this.amn;
    }

    @Override
    public String getBestRating() {
        return this.amo;
    }

    @Override
    public String getBirthDate() {
        return this.amp;
    }

    @Override
    public ItemScope getByArtist() {
        return this.amq;
    }

    @Override
    public String getCaption() {
        return this.amr;
    }

    @Override
    public String getContentSize() {
        return this.ams;
    }

    @Override
    public String getContentUrl() {
        return this.ol;
    }

    @Override
    public List<ItemScope> getContributor() {
        return (ArrayList)this.amt;
    }

    @Override
    public String getDateCreated() {
        return this.amu;
    }

    @Override
    public String getDateModified() {
        return this.amv;
    }

    @Override
    public String getDatePublished() {
        return this.amw;
    }

    @Override
    public String getDescription() {
        return this.Tr;
    }

    @Override
    public String getDuration() {
        return this.amx;
    }

    @Override
    public String getEmbedUrl() {
        return this.amy;
    }

    @Override
    public String getEndDate() {
        return this.amz;
    }

    @Override
    public String getFamilyName() {
        return this.amA;
    }

    @Override
    public String getGender() {
        return this.amB;
    }

    @Override
    public ItemScope getGeo() {
        return this.amC;
    }

    @Override
    public String getGivenName() {
        return this.amD;
    }

    @Override
    public String getHeight() {
        return this.amE;
    }

    @Override
    public String getId() {
        return this.BL;
    }

    @Override
    public String getImage() {
        return this.amF;
    }

    @Override
    public ItemScope getInAlbum() {
        return this.amG;
    }

    @Override
    public double getLatitude() {
        return this.aek;
    }

    @Override
    public ItemScope getLocation() {
        return this.amH;
    }

    @Override
    public double getLongitude() {
        return this.ael;
    }

    @Override
    public String getName() {
        return this.mName;
    }

    @Override
    public ItemScope getPartOfTVSeries() {
        return this.amI;
    }

    @Override
    public List<ItemScope> getPerformers() {
        return (ArrayList)this.amJ;
    }

    @Override
    public String getPlayerType() {
        return this.amK;
    }

    @Override
    public String getPostOfficeBoxNumber() {
        return this.amL;
    }

    @Override
    public String getPostalCode() {
        return this.amM;
    }

    @Override
    public String getRatingValue() {
        return this.amN;
    }

    @Override
    public ItemScope getReviewRating() {
        return this.amO;
    }

    @Override
    public String getStartDate() {
        return this.amP;
    }

    @Override
    public String getStreetAddress() {
        return this.amQ;
    }

    @Override
    public String getText() {
        return this.amR;
    }

    @Override
    public ItemScope getThumbnail() {
        return this.amS;
    }

    @Override
    public String getThumbnailUrl() {
        return this.amT;
    }

    @Override
    public String getTickerSymbol() {
        return this.amU;
    }

    @Override
    public String getType() {
        return this.uO;
    }

    @Override
    public String getUrl() {
        return this.uR;
    }

    @Override
    public String getWidth() {
        return this.amV;
    }

    @Override
    public String getWorstRating() {
        return this.amW;
    }

    @Override
    public boolean hasAbout() {
        return this.amc.contains(2);
    }

    @Override
    public boolean hasAdditionalName() {
        return this.amc.contains(3);
    }

    @Override
    public boolean hasAddress() {
        return this.amc.contains(4);
    }

    @Override
    public boolean hasAddressCountry() {
        return this.amc.contains(5);
    }

    @Override
    public boolean hasAddressLocality() {
        return this.amc.contains(6);
    }

    @Override
    public boolean hasAddressRegion() {
        return this.amc.contains(7);
    }

    @Override
    public boolean hasAssociated_media() {
        return this.amc.contains(8);
    }

    @Override
    public boolean hasAttendeeCount() {
        return this.amc.contains(9);
    }

    @Override
    public boolean hasAttendees() {
        return this.amc.contains(10);
    }

    @Override
    public boolean hasAudio() {
        return this.amc.contains(11);
    }

    @Override
    public boolean hasAuthor() {
        return this.amc.contains(12);
    }

    @Override
    public boolean hasBestRating() {
        return this.amc.contains(13);
    }

    @Override
    public boolean hasBirthDate() {
        return this.amc.contains(14);
    }

    @Override
    public boolean hasByArtist() {
        return this.amc.contains(15);
    }

    @Override
    public boolean hasCaption() {
        return this.amc.contains(16);
    }

    @Override
    public boolean hasContentSize() {
        return this.amc.contains(17);
    }

    @Override
    public boolean hasContentUrl() {
        return this.amc.contains(18);
    }

    @Override
    public boolean hasContributor() {
        return this.amc.contains(19);
    }

    @Override
    public boolean hasDateCreated() {
        return this.amc.contains(20);
    }

    @Override
    public boolean hasDateModified() {
        return this.amc.contains(21);
    }

    @Override
    public boolean hasDatePublished() {
        return this.amc.contains(22);
    }

    @Override
    public boolean hasDescription() {
        return this.amc.contains(23);
    }

    @Override
    public boolean hasDuration() {
        return this.amc.contains(24);
    }

    @Override
    public boolean hasEmbedUrl() {
        return this.amc.contains(25);
    }

    @Override
    public boolean hasEndDate() {
        return this.amc.contains(26);
    }

    @Override
    public boolean hasFamilyName() {
        return this.amc.contains(27);
    }

    @Override
    public boolean hasGender() {
        return this.amc.contains(28);
    }

    @Override
    public boolean hasGeo() {
        return this.amc.contains(29);
    }

    @Override
    public boolean hasGivenName() {
        return this.amc.contains(30);
    }

    @Override
    public boolean hasHeight() {
        return this.amc.contains(31);
    }

    @Override
    public boolean hasId() {
        return this.amc.contains(32);
    }

    @Override
    public boolean hasImage() {
        return this.amc.contains(33);
    }

    @Override
    public boolean hasInAlbum() {
        return this.amc.contains(34);
    }

    @Override
    public boolean hasLatitude() {
        return this.amc.contains(36);
    }

    @Override
    public boolean hasLocation() {
        return this.amc.contains(37);
    }

    @Override
    public boolean hasLongitude() {
        return this.amc.contains(38);
    }

    @Override
    public boolean hasName() {
        return this.amc.contains(39);
    }

    @Override
    public boolean hasPartOfTVSeries() {
        return this.amc.contains(40);
    }

    @Override
    public boolean hasPerformers() {
        return this.amc.contains(41);
    }

    @Override
    public boolean hasPlayerType() {
        return this.amc.contains(42);
    }

    @Override
    public boolean hasPostOfficeBoxNumber() {
        return this.amc.contains(43);
    }

    @Override
    public boolean hasPostalCode() {
        return this.amc.contains(44);
    }

    @Override
    public boolean hasRatingValue() {
        return this.amc.contains(45);
    }

    @Override
    public boolean hasReviewRating() {
        return this.amc.contains(46);
    }

    @Override
    public boolean hasStartDate() {
        return this.amc.contains(47);
    }

    @Override
    public boolean hasStreetAddress() {
        return this.amc.contains(48);
    }

    @Override
    public boolean hasText() {
        return this.amc.contains(49);
    }

    @Override
    public boolean hasThumbnail() {
        return this.amc.contains(50);
    }

    @Override
    public boolean hasThumbnailUrl() {
        return this.amc.contains(51);
    }

    @Override
    public boolean hasTickerSymbol() {
        return this.amc.contains(52);
    }

    @Override
    public boolean hasType() {
        return this.amc.contains(53);
    }

    @Override
    public boolean hasUrl() {
        return this.amc.contains(54);
    }

    @Override
    public boolean hasWidth() {
        return this.amc.contains(55);
    }

    @Override
    public boolean hasWorstRating() {
        return this.amc.contains(56);
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

    public nu nr() {
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        nv nv = CREATOR;
        nv.a(this, parcel, n);
    }
}

