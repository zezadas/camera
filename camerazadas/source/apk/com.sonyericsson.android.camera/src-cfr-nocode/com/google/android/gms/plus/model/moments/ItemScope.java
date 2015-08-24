/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.nu;
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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
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
        private final Set<Integer> amc;
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

        public Builder();

        public ItemScope build();

        public Builder setAbout(ItemScope var1);

        public Builder setAdditionalName(List<String> var1);

        public Builder setAddress(ItemScope var1);

        public Builder setAddressCountry(String var1);

        public Builder setAddressLocality(String var1);

        public Builder setAddressRegion(String var1);

        public Builder setAssociated_media(List<ItemScope> var1);

        public Builder setAttendeeCount(int var1);

        public Builder setAttendees(List<ItemScope> var1);

        public Builder setAudio(ItemScope var1);

        public Builder setAuthor(List<ItemScope> var1);

        public Builder setBestRating(String var1);

        public Builder setBirthDate(String var1);

        public Builder setByArtist(ItemScope var1);

        public Builder setCaption(String var1);

        public Builder setContentSize(String var1);

        public Builder setContentUrl(String var1);

        public Builder setContributor(List<ItemScope> var1);

        public Builder setDateCreated(String var1);

        public Builder setDateModified(String var1);

        public Builder setDatePublished(String var1);

        public Builder setDescription(String var1);

        public Builder setDuration(String var1);

        public Builder setEmbedUrl(String var1);

        public Builder setEndDate(String var1);

        public Builder setFamilyName(String var1);

        public Builder setGender(String var1);

        public Builder setGeo(ItemScope var1);

        public Builder setGivenName(String var1);

        public Builder setHeight(String var1);

        public Builder setId(String var1);

        public Builder setImage(String var1);

        public Builder setInAlbum(ItemScope var1);

        public Builder setLatitude(double var1);

        public Builder setLocation(ItemScope var1);

        public Builder setLongitude(double var1);

        public Builder setName(String var1);

        public Builder setPartOfTVSeries(ItemScope var1);

        public Builder setPerformers(List<ItemScope> var1);

        public Builder setPlayerType(String var1);

        public Builder setPostOfficeBoxNumber(String var1);

        public Builder setPostalCode(String var1);

        public Builder setRatingValue(String var1);

        public Builder setReviewRating(ItemScope var1);

        public Builder setStartDate(String var1);

        public Builder setStreetAddress(String var1);

        public Builder setText(String var1);

        public Builder setThumbnail(ItemScope var1);

        public Builder setThumbnailUrl(String var1);

        public Builder setTickerSymbol(String var1);

        public Builder setType(String var1);

        public Builder setUrl(String var1);

        public Builder setWidth(String var1);

        public Builder setWorstRating(String var1);
    }

}

