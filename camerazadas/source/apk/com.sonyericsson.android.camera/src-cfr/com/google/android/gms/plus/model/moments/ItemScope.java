/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.nu;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public interface ItemScope
extends Freezable<ItemScope> {
    public ItemScope getAbout();

    public List<String> getAdditionalName();

    public ItemScope getAddress();

    public String getAddressCountry();

    public String getAddressLocality();

    public String getAddressRegion();

    public List<ItemScope> getAssociated_media();

    public int getAttendeeCount();

    public List<ItemScope> getAttendees();

    public ItemScope getAudio();

    public List<ItemScope> getAuthor();

    public String getBestRating();

    public String getBirthDate();

    public ItemScope getByArtist();

    public String getCaption();

    public String getContentSize();

    public String getContentUrl();

    public List<ItemScope> getContributor();

    public String getDateCreated();

    public String getDateModified();

    public String getDatePublished();

    public String getDescription();

    public String getDuration();

    public String getEmbedUrl();

    public String getEndDate();

    public String getFamilyName();

    public String getGender();

    public ItemScope getGeo();

    public String getGivenName();

    public String getHeight();

    public String getId();

    public String getImage();

    public ItemScope getInAlbum();

    public double getLatitude();

    public ItemScope getLocation();

    public double getLongitude();

    public String getName();

    public ItemScope getPartOfTVSeries();

    public List<ItemScope> getPerformers();

    public String getPlayerType();

    public String getPostOfficeBoxNumber();

    public String getPostalCode();

    public String getRatingValue();

    public ItemScope getReviewRating();

    public String getStartDate();

    public String getStreetAddress();

    public String getText();

    public ItemScope getThumbnail();

    public String getThumbnailUrl();

    public String getTickerSymbol();

    public String getType();

    public String getUrl();

    public String getWidth();

    public String getWorstRating();

    public boolean hasAbout();

    public boolean hasAdditionalName();

    public boolean hasAddress();

    public boolean hasAddressCountry();

    public boolean hasAddressLocality();

    public boolean hasAddressRegion();

    public boolean hasAssociated_media();

    public boolean hasAttendeeCount();

    public boolean hasAttendees();

    public boolean hasAudio();

    public boolean hasAuthor();

    public boolean hasBestRating();

    public boolean hasBirthDate();

    public boolean hasByArtist();

    public boolean hasCaption();

    public boolean hasContentSize();

    public boolean hasContentUrl();

    public boolean hasContributor();

    public boolean hasDateCreated();

    public boolean hasDateModified();

    public boolean hasDatePublished();

    public boolean hasDescription();

    public boolean hasDuration();

    public boolean hasEmbedUrl();

    public boolean hasEndDate();

    public boolean hasFamilyName();

    public boolean hasGender();

    public boolean hasGeo();

    public boolean hasGivenName();

    public boolean hasHeight();

    public boolean hasId();

    public boolean hasImage();

    public boolean hasInAlbum();

    public boolean hasLatitude();

    public boolean hasLocation();

    public boolean hasLongitude();

    public boolean hasName();

    public boolean hasPartOfTVSeries();

    public boolean hasPerformers();

    public boolean hasPlayerType();

    public boolean hasPostOfficeBoxNumber();

    public boolean hasPostalCode();

    public boolean hasRatingValue();

    public boolean hasReviewRating();

    public boolean hasStartDate();

    public boolean hasStreetAddress();

    public boolean hasText();

    public boolean hasThumbnail();

    public boolean hasThumbnailUrl();

    public boolean hasTickerSymbol();

    public boolean hasType();

    public boolean hasUrl();

    public boolean hasWidth();

    public boolean hasWorstRating();

    public static class Builder {
        private String BL;
        private String Tr;
        private double aek;
        private double ael;
        private String amA;
        private String amB;
        private nu amC;
        private String amD;
        private String amE;
        private String amF;
        private nu amG;
        private nu amH;
        private nu amI;
        private List<nu> amJ;
        private String amK;
        private String amL;
        private String amM;
        private String amN;
        private nu amO;
        private String amP;
        private String amQ;
        private String amR;
        private nu amS;
        private String amT;
        private String amU;
        private String amV;
        private String amW;
        private final Set<Integer> amc = new HashSet<Integer>();
        private nu amd;
        private List<String> ame;
        private nu amf;
        private String amg;
        private String amh;
        private String ami;
        private List<nu> amj;
        private int amk;
        private List<nu> aml;
        private nu amm;
        private List<nu> amn;
        private String amo;
        private String amp;
        private nu amq;
        private String amr;
        private String ams;
        private List<nu> amt;
        private String amu;
        private String amv;
        private String amw;
        private String amx;
        private String amy;
        private String amz;
        private String mName;
        private String ol;
        private String uO;
        private String uR;

        public ItemScope build() {
            return new nu(this.amc, this.amd, this.ame, this.amf, this.amg, this.amh, this.ami, this.amj, this.amk, this.aml, this.amm, this.amn, this.amo, this.amp, this.amq, this.amr, this.ams, this.ol, this.amt, this.amu, this.amv, this.amw, this.Tr, this.amx, this.amy, this.amz, this.amA, this.amB, this.amC, this.amD, this.amE, this.BL, this.amF, this.amG, this.aek, this.amH, this.ael, this.mName, this.amI, this.amJ, this.amK, this.amL, this.amM, this.amN, this.amO, this.amP, this.amQ, this.amR, this.amS, this.amT, this.amU, this.uO, this.uR, this.amV, this.amW);
        }

        public Builder setAbout(ItemScope itemScope) {
            this.amd = (nu)itemScope;
            this.amc.add(2);
            return this;
        }

        public Builder setAdditionalName(List<String> list) {
            this.ame = list;
            this.amc.add(3);
            return this;
        }

        public Builder setAddress(ItemScope itemScope) {
            this.amf = (nu)itemScope;
            this.amc.add(4);
            return this;
        }

        public Builder setAddressCountry(String string) {
            this.amg = string;
            this.amc.add(5);
            return this;
        }

        public Builder setAddressLocality(String string) {
            this.amh = string;
            this.amc.add(6);
            return this;
        }

        public Builder setAddressRegion(String string) {
            this.ami = string;
            this.amc.add(7);
            return this;
        }

        public Builder setAssociated_media(List<ItemScope> list) {
            this.amj = list;
            this.amc.add(8);
            return this;
        }

        public Builder setAttendeeCount(int n) {
            this.amk = n;
            this.amc.add(9);
            return this;
        }

        public Builder setAttendees(List<ItemScope> list) {
            this.aml = list;
            this.amc.add(10);
            return this;
        }

        public Builder setAudio(ItemScope itemScope) {
            this.amm = (nu)itemScope;
            this.amc.add(11);
            return this;
        }

        public Builder setAuthor(List<ItemScope> list) {
            this.amn = list;
            this.amc.add(12);
            return this;
        }

        public Builder setBestRating(String string) {
            this.amo = string;
            this.amc.add(13);
            return this;
        }

        public Builder setBirthDate(String string) {
            this.amp = string;
            this.amc.add(14);
            return this;
        }

        public Builder setByArtist(ItemScope itemScope) {
            this.amq = (nu)itemScope;
            this.amc.add(15);
            return this;
        }

        public Builder setCaption(String string) {
            this.amr = string;
            this.amc.add(16);
            return this;
        }

        public Builder setContentSize(String string) {
            this.ams = string;
            this.amc.add(17);
            return this;
        }

        public Builder setContentUrl(String string) {
            this.ol = string;
            this.amc.add(18);
            return this;
        }

        public Builder setContributor(List<ItemScope> list) {
            this.amt = list;
            this.amc.add(19);
            return this;
        }

        public Builder setDateCreated(String string) {
            this.amu = string;
            this.amc.add(20);
            return this;
        }

        public Builder setDateModified(String string) {
            this.amv = string;
            this.amc.add(21);
            return this;
        }

        public Builder setDatePublished(String string) {
            this.amw = string;
            this.amc.add(22);
            return this;
        }

        public Builder setDescription(String string) {
            this.Tr = string;
            this.amc.add(23);
            return this;
        }

        public Builder setDuration(String string) {
            this.amx = string;
            this.amc.add(24);
            return this;
        }

        public Builder setEmbedUrl(String string) {
            this.amy = string;
            this.amc.add(25);
            return this;
        }

        public Builder setEndDate(String string) {
            this.amz = string;
            this.amc.add(26);
            return this;
        }

        public Builder setFamilyName(String string) {
            this.amA = string;
            this.amc.add(27);
            return this;
        }

        public Builder setGender(String string) {
            this.amB = string;
            this.amc.add(28);
            return this;
        }

        public Builder setGeo(ItemScope itemScope) {
            this.amC = (nu)itemScope;
            this.amc.add(29);
            return this;
        }

        public Builder setGivenName(String string) {
            this.amD = string;
            this.amc.add(30);
            return this;
        }

        public Builder setHeight(String string) {
            this.amE = string;
            this.amc.add(31);
            return this;
        }

        public Builder setId(String string) {
            this.BL = string;
            this.amc.add(32);
            return this;
        }

        public Builder setImage(String string) {
            this.amF = string;
            this.amc.add(33);
            return this;
        }

        public Builder setInAlbum(ItemScope itemScope) {
            this.amG = (nu)itemScope;
            this.amc.add(34);
            return this;
        }

        public Builder setLatitude(double d) {
            this.aek = d;
            this.amc.add(36);
            return this;
        }

        public Builder setLocation(ItemScope itemScope) {
            this.amH = (nu)itemScope;
            this.amc.add(37);
            return this;
        }

        public Builder setLongitude(double d) {
            this.ael = d;
            this.amc.add(38);
            return this;
        }

        public Builder setName(String string) {
            this.mName = string;
            this.amc.add(39);
            return this;
        }

        public Builder setPartOfTVSeries(ItemScope itemScope) {
            this.amI = (nu)itemScope;
            this.amc.add(40);
            return this;
        }

        public Builder setPerformers(List<ItemScope> list) {
            this.amJ = list;
            this.amc.add(41);
            return this;
        }

        public Builder setPlayerType(String string) {
            this.amK = string;
            this.amc.add(42);
            return this;
        }

        public Builder setPostOfficeBoxNumber(String string) {
            this.amL = string;
            this.amc.add(43);
            return this;
        }

        public Builder setPostalCode(String string) {
            this.amM = string;
            this.amc.add(44);
            return this;
        }

        public Builder setRatingValue(String string) {
            this.amN = string;
            this.amc.add(45);
            return this;
        }

        public Builder setReviewRating(ItemScope itemScope) {
            this.amO = (nu)itemScope;
            this.amc.add(46);
            return this;
        }

        public Builder setStartDate(String string) {
            this.amP = string;
            this.amc.add(47);
            return this;
        }

        public Builder setStreetAddress(String string) {
            this.amQ = string;
            this.amc.add(48);
            return this;
        }

        public Builder setText(String string) {
            this.amR = string;
            this.amc.add(49);
            return this;
        }

        public Builder setThumbnail(ItemScope itemScope) {
            this.amS = (nu)itemScope;
            this.amc.add(50);
            return this;
        }

        public Builder setThumbnailUrl(String string) {
            this.amT = string;
            this.amc.add(51);
            return this;
        }

        public Builder setTickerSymbol(String string) {
            this.amU = string;
            this.amc.add(52);
            return this;
        }

        public Builder setType(String string) {
            this.uO = string;
            this.amc.add(53);
            return this;
        }

        public Builder setUrl(String string) {
            this.uR = string;
            this.amc.add(54);
            return this;
        }

        public Builder setWidth(String string) {
            this.amV = string;
            this.amc.add(55);
            return this;
        }

        public Builder setWorstRating(String string) {
            this.amW = string;
            this.amc.add(56);
            return this;
        }
    }

}

