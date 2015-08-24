/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jj;
import com.google.android.gms.internal.nv;
import com.google.android.gms.plus.model.moments.ItemScope;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class nu
extends jj
implements ItemScope {
    public static final nv CREATOR;
    private static final HashMap<String, ji.a<?, ?>> amb;
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

    static;

    public nu();

    nu(Set<Integer> var1, int var2, nu var3, List<String> var4, nu var5, String var6, String var7, String var8, List<nu> var9, int var10, List<nu> var11, nu var12, List<nu> var13, String var14, String var15, nu var16, String var17, String var18, String var19, List<nu> var20, String var21, String var22, String var23, String var24, String var25, String var26, String var27, String var28, String var29, nu var30, String var31, String var32, String var33, String var34, nu var35, double var36, nu var38, double var39, String var41, nu var42, List<nu> var43, String var44, String var45, String var46, String var47, nu var48, String var49, String var50, String var51, nu var52, String var53, String var54, String var55, String var56, String var57, String var58);

    public nu(Set<Integer> var1, nu var2, List<String> var3, nu var4, String var5, String var6, String var7, List<nu> var8, int var9, List<nu> var10, nu var11, List<nu> var12, String var13, String var14, nu var15, String var16, String var17, String var18, List<nu> var19, String var20, String var21, String var22, String var23, String var24, String var25, String var26, String var27, String var28, nu var29, String var30, String var31, String var32, String var33, nu var34, double var35, nu var37, double var38, String var40, nu var41, List<nu> var42, String var43, String var44, String var45, String var46, nu var47, String var48, String var49, String var50, nu var51, String var52, String var53, String var54, String var55, String var56, String var57);

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
    public ItemScope getAbout();

    @Override
    public List<String> getAdditionalName();

    @Override
    public ItemScope getAddress();

    @Override
    public String getAddressCountry();

    @Override
    public String getAddressLocality();

    @Override
    public String getAddressRegion();

    @Override
    public List<ItemScope> getAssociated_media();

    @Override
    public int getAttendeeCount();

    @Override
    public List<ItemScope> getAttendees();

    @Override
    public ItemScope getAudio();

    @Override
    public List<ItemScope> getAuthor();

    @Override
    public String getBestRating();

    @Override
    public String getBirthDate();

    @Override
    public ItemScope getByArtist();

    @Override
    public String getCaption();

    @Override
    public String getContentSize();

    @Override
    public String getContentUrl();

    @Override
    public List<ItemScope> getContributor();

    @Override
    public String getDateCreated();

    @Override
    public String getDateModified();

    @Override
    public String getDatePublished();

    @Override
    public String getDescription();

    @Override
    public String getDuration();

    @Override
    public String getEmbedUrl();

    @Override
    public String getEndDate();

    @Override
    public String getFamilyName();

    @Override
    public String getGender();

    @Override
    public ItemScope getGeo();

    @Override
    public String getGivenName();

    @Override
    public String getHeight();

    @Override
    public String getId();

    @Override
    public String getImage();

    @Override
    public ItemScope getInAlbum();

    @Override
    public double getLatitude();

    @Override
    public ItemScope getLocation();

    @Override
    public double getLongitude();

    @Override
    public String getName();

    @Override
    public ItemScope getPartOfTVSeries();

    @Override
    public List<ItemScope> getPerformers();

    @Override
    public String getPlayerType();

    @Override
    public String getPostOfficeBoxNumber();

    @Override
    public String getPostalCode();

    @Override
    public String getRatingValue();

    @Override
    public ItemScope getReviewRating();

    @Override
    public String getStartDate();

    @Override
    public String getStreetAddress();

    @Override
    public String getText();

    @Override
    public ItemScope getThumbnail();

    @Override
    public String getThumbnailUrl();

    @Override
    public String getTickerSymbol();

    @Override
    public String getType();

    @Override
    public String getUrl();

    @Override
    public String getWidth();

    @Override
    public String getWorstRating();

    @Override
    public boolean hasAbout();

    @Override
    public boolean hasAdditionalName();

    @Override
    public boolean hasAddress();

    @Override
    public boolean hasAddressCountry();

    @Override
    public boolean hasAddressLocality();

    @Override
    public boolean hasAddressRegion();

    @Override
    public boolean hasAssociated_media();

    @Override
    public boolean hasAttendeeCount();

    @Override
    public boolean hasAttendees();

    @Override
    public boolean hasAudio();

    @Override
    public boolean hasAuthor();

    @Override
    public boolean hasBestRating();

    @Override
    public boolean hasBirthDate();

    @Override
    public boolean hasByArtist();

    @Override
    public boolean hasCaption();

    @Override
    public boolean hasContentSize();

    @Override
    public boolean hasContentUrl();

    @Override
    public boolean hasContributor();

    @Override
    public boolean hasDateCreated();

    @Override
    public boolean hasDateModified();

    @Override
    public boolean hasDatePublished();

    @Override
    public boolean hasDescription();

    @Override
    public boolean hasDuration();

    @Override
    public boolean hasEmbedUrl();

    @Override
    public boolean hasEndDate();

    @Override
    public boolean hasFamilyName();

    @Override
    public boolean hasGender();

    @Override
    public boolean hasGeo();

    @Override
    public boolean hasGivenName();

    @Override
    public boolean hasHeight();

    @Override
    public boolean hasId();

    @Override
    public boolean hasImage();

    @Override
    public boolean hasInAlbum();

    @Override
    public boolean hasLatitude();

    @Override
    public boolean hasLocation();

    @Override
    public boolean hasLongitude();

    @Override
    public boolean hasName();

    @Override
    public boolean hasPartOfTVSeries();

    @Override
    public boolean hasPerformers();

    @Override
    public boolean hasPlayerType();

    @Override
    public boolean hasPostOfficeBoxNumber();

    @Override
    public boolean hasPostalCode();

    @Override
    public boolean hasRatingValue();

    @Override
    public boolean hasReviewRating();

    @Override
    public boolean hasStartDate();

    @Override
    public boolean hasStreetAddress();

    @Override
    public boolean hasText();

    @Override
    public boolean hasThumbnail();

    @Override
    public boolean hasThumbnailUrl();

    @Override
    public boolean hasTickerSymbol();

    @Override
    public boolean hasType();

    @Override
    public boolean hasUrl();

    @Override
    public boolean hasWidth();

    @Override
    public boolean hasWorstRating();

    public int hashCode();

    @Override
    public HashMap<String, ji.a<?, ?>> hf();

    @Override
    public boolean isDataValid();

    public nu nr();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

