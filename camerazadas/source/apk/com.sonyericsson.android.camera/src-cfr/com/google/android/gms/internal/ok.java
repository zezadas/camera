/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.internal.nz;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.List;

public final class ok
extends d
implements Person {
    public ok(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.nI();
    }

    @Override
    public String getAboutMe() {
        return null;
    }

    @Override
    public Person.AgeRange getAgeRange() {
        return null;
    }

    @Override
    public String getBirthday() {
        return null;
    }

    @Override
    public String getBraggingRights() {
        return null;
    }

    @Override
    public int getCircledByCount() {
        return 0;
    }

    @Override
    public Person.Cover getCover() {
        return null;
    }

    @Override
    public String getCurrentLocation() {
        return null;
    }

    @Override
    public String getDisplayName() {
        return this.getString("displayName");
    }

    @Override
    public int getGender() {
        return 0;
    }

    @Override
    public String getId() {
        return this.getString("personId");
    }

    @Override
    public Person.Image getImage() {
        return new nz.c(this.getString("image"));
    }

    @Override
    public String getLanguage() {
        return null;
    }

    @Override
    public Person.Name getName() {
        return null;
    }

    @Override
    public String getNickname() {
        return null;
    }

    @Override
    public int getObjectType() {
        return nz.e.ci(this.getString("objectType"));
    }

    public /* synthetic */ List getOrganizations() {
        return this.nF();
    }

    public /* synthetic */ List getPlacesLived() {
        return this.nG();
    }

    @Override
    public int getPlusOneCount() {
        return 0;
    }

    @Override
    public int getRelationshipStatus() {
        return 0;
    }

    @Override
    public String getTagline() {
        return null;
    }

    @Override
    public String getUrl() {
        return this.getString("url");
    }

    public /* synthetic */ List getUrls() {
        return this.nH();
    }

    @Override
    public boolean hasAboutMe() {
        return false;
    }

    @Override
    public boolean hasAgeRange() {
        return false;
    }

    @Override
    public boolean hasBirthday() {
        return false;
    }

    @Override
    public boolean hasBraggingRights() {
        return false;
    }

    @Override
    public boolean hasCircledByCount() {
        return false;
    }

    @Override
    public boolean hasCover() {
        return false;
    }

    @Override
    public boolean hasCurrentLocation() {
        return false;
    }

    @Override
    public boolean hasDisplayName() {
        return true;
    }

    @Override
    public boolean hasGender() {
        return false;
    }

    @Override
    public boolean hasId() {
        return true;
    }

    @Override
    public boolean hasImage() {
        return true;
    }

    @Override
    public boolean hasIsPlusUser() {
        return false;
    }

    @Override
    public boolean hasLanguage() {
        return false;
    }

    @Override
    public boolean hasName() {
        return false;
    }

    @Override
    public boolean hasNickname() {
        return false;
    }

    @Override
    public boolean hasObjectType() {
        return true;
    }

    @Override
    public boolean hasOrganizations() {
        return false;
    }

    @Override
    public boolean hasPlacesLived() {
        return false;
    }

    @Override
    public boolean hasPlusOneCount() {
        return false;
    }

    @Override
    public boolean hasRelationshipStatus() {
        return false;
    }

    @Override
    public boolean hasTagline() {
        return false;
    }

    @Override
    public boolean hasUrl() {
        return true;
    }

    @Override
    public boolean hasUrls() {
        return false;
    }

    @Override
    public boolean hasVerified() {
        return false;
    }

    @Override
    public boolean isPlusUser() {
        return false;
    }

    @Override
    public boolean isVerified() {
        return false;
    }

    public ArrayList<Person.Organizations> nF() {
        return null;
    }

    public ArrayList<Person.PlacesLived> nG() {
        return null;
    }

    public ArrayList<Person.Urls> nH() {
        return null;
    }

    public Person nI() {
        return new nz(this.getDisplayName(), this.getId(), (nz.c)this.getImage(), this.getObjectType(), this.getUrl());
    }
}

