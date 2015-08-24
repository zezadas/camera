/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.mq;

public final class mp
implements SafeParcelable {
    public static final mq CREATOR;
    public static final mp afC;
    public static final mp afD;
    public static final mp afE;
    public static final mp afF;
    public static final mp afG;
    public static final mp afH;
    public static final mp afI;
    public static final mp afJ;
    public static final mp afK;
    public static final mp afL;
    public static final mp afM;
    public static final mp afN;
    public static final mp afO;
    public static final mp afP;
    public static final mp afQ;
    public static final mp afR;
    public static final mp afS;
    public static final mp afT;
    public static final mp afU;
    public static final mp afV;
    public static final mp afW;
    public static final mp afX;
    public static final mp afY;
    public static final mp afZ;
    public static final mp agA;
    public static final mp agB;
    public static final mp agC;
    public static final mp agD;
    public static final mp agE;
    public static final mp agF;
    public static final mp agG;
    public static final mp agH;
    public static final mp agI;
    public static final mp agJ;
    public static final mp agK;
    public static final mp agL;
    public static final mp agM;
    public static final mp agN;
    public static final mp agO;
    public static final mp agP;
    public static final mp agQ;
    public static final mp agR;
    public static final mp agS;
    public static final mp agT;
    public static final mp agU;
    public static final mp agV;
    public static final mp agW;
    public static final mp agX;
    public static final mp agY;
    public static final mp agZ;
    public static final mp aga;
    public static final mp agb;
    public static final mp agc;
    public static final mp agd;
    public static final mp age;
    public static final mp agf;
    public static final mp agg;
    public static final mp agh;
    public static final mp agi;
    public static final mp agj;
    public static final mp agk;
    public static final mp agl;
    public static final mp agm;
    public static final mp agn;
    public static final mp ago;
    public static final mp agp;
    public static final mp agq;
    public static final mp agr;
    public static final mp ags;
    public static final mp agt;
    public static final mp agu;
    public static final mp agv;
    public static final mp agw;
    public static final mp agx;
    public static final mp agy;
    public static final mp agz;
    public static final mp ahA;
    public static final mp ahB;
    public static final mp ahC;
    public static final mp ahD;
    public static final mp ahE;
    public static final mp ahF;
    public static final mp ahG;
    public static final mp ahH;
    public static final mp ahI;
    public static final mp ahJ;
    public static final mp ahK;
    public static final mp ahL;
    public static final mp ahM;
    public static final mp ahN;
    public static final mp ahO;
    public static final mp ahP;
    public static final mp ahQ;
    public static final mp ahR;
    public static final mp ahS;
    public static final mp ahT;
    public static final mp ahU;
    public static final mp ahV;
    public static final mp ahW;
    public static final mp ahX;
    public static final mp aha;
    public static final mp ahb;
    public static final mp ahc;
    public static final mp ahd;
    public static final mp ahe;
    public static final mp ahf;
    public static final mp ahg;
    public static final mp ahh;
    public static final mp ahi;
    public static final mp ahj;
    public static final mp ahk;
    public static final mp ahl;
    public static final mp ahm;
    public static final mp ahn;
    public static final mp aho;
    public static final mp ahp;
    public static final mp ahq;
    public static final mp ahr;
    public static final mp ahs;
    public static final mp aht;
    public static final mp ahu;
    public static final mp ahv;
    public static final mp ahw;
    public static final mp ahx;
    public static final mp ahy;
    public static final mp ahz;
    final int BR;
    final String uO;

    static {
        afC = mp.bZ("accounting");
        afD = mp.bZ("airport");
        afE = mp.bZ("amusement_park");
        afF = mp.bZ("aquarium");
        afG = mp.bZ("art_gallery");
        afH = mp.bZ("atm");
        afI = mp.bZ("bakery");
        afJ = mp.bZ("bank");
        afK = mp.bZ("bar");
        afL = mp.bZ("beauty_salon");
        afM = mp.bZ("bicycle_store");
        afN = mp.bZ("book_store");
        afO = mp.bZ("bowling_alley");
        afP = mp.bZ("bus_station");
        afQ = mp.bZ("cafe");
        afR = mp.bZ("campground");
        afS = mp.bZ("car_dealer");
        afT = mp.bZ("car_rental");
        afU = mp.bZ("car_repair");
        afV = mp.bZ("car_wash");
        afW = mp.bZ("casino");
        afX = mp.bZ("cemetery");
        afY = mp.bZ("church");
        afZ = mp.bZ("city_hall");
        aga = mp.bZ("clothing_store");
        agb = mp.bZ("convenience_store");
        agc = mp.bZ("courthouse");
        agd = mp.bZ("dentist");
        age = mp.bZ("department_store");
        agf = mp.bZ("doctor");
        agg = mp.bZ("electrician");
        agh = mp.bZ("electronics_store");
        agi = mp.bZ("embassy");
        agj = mp.bZ("establishment");
        agk = mp.bZ("finance");
        agl = mp.bZ("fire_station");
        agm = mp.bZ("florist");
        agn = mp.bZ("food");
        ago = mp.bZ("funeral_home");
        agp = mp.bZ("furniture_store");
        agq = mp.bZ("gas_station");
        agr = mp.bZ("general_contractor");
        ags = mp.bZ("grocery_or_supermarket");
        agt = mp.bZ("gym");
        agu = mp.bZ("hair_care");
        agv = mp.bZ("hardware_store");
        agw = mp.bZ("health");
        agx = mp.bZ("hindu_temple");
        agy = mp.bZ("home_goods_store");
        agz = mp.bZ("hospital");
        agA = mp.bZ("insurance_agency");
        agB = mp.bZ("jewelry_store");
        agC = mp.bZ("laundry");
        agD = mp.bZ("lawyer");
        agE = mp.bZ("library");
        agF = mp.bZ("liquor_store");
        agG = mp.bZ("local_government_office");
        agH = mp.bZ("locksmith");
        agI = mp.bZ("lodging");
        agJ = mp.bZ("meal_delivery");
        agK = mp.bZ("meal_takeaway");
        agL = mp.bZ("mosque");
        agM = mp.bZ("movie_rental");
        agN = mp.bZ("movie_theater");
        agO = mp.bZ("moving_company");
        agP = mp.bZ("museum");
        agQ = mp.bZ("night_club");
        agR = mp.bZ("painter");
        agS = mp.bZ("park");
        agT = mp.bZ("parking");
        agU = mp.bZ("pet_store");
        agV = mp.bZ("pharmacy");
        agW = mp.bZ("physiotherapist");
        agX = mp.bZ("place_of_worship");
        agY = mp.bZ("plumber");
        agZ = mp.bZ("police");
        aha = mp.bZ("post_office");
        ahb = mp.bZ("real_estate_agency");
        ahc = mp.bZ("restaurant");
        ahd = mp.bZ("roofing_contractor");
        ahe = mp.bZ("rv_park");
        ahf = mp.bZ("school");
        ahg = mp.bZ("shoe_store");
        ahh = mp.bZ("shopping_mall");
        ahi = mp.bZ("spa");
        ahj = mp.bZ("stadium");
        ahk = mp.bZ("storage");
        ahl = mp.bZ("store");
        ahm = mp.bZ("subway_station");
        ahn = mp.bZ("synagogue");
        aho = mp.bZ("taxi_stand");
        ahp = mp.bZ("train_station");
        ahq = mp.bZ("travel_agency");
        ahr = mp.bZ("university");
        ahs = mp.bZ("veterinary_care");
        aht = mp.bZ("zoo");
        ahu = mp.bZ("administrative_area_level_1");
        ahv = mp.bZ("administrative_area_level_2");
        ahw = mp.bZ("administrative_area_level_3");
        ahx = mp.bZ("colloquial_area");
        ahy = mp.bZ("country");
        ahz = mp.bZ("floor");
        ahA = mp.bZ("geocode");
        ahB = mp.bZ("intersection");
        ahC = mp.bZ("locality");
        ahD = mp.bZ("natural_feature");
        ahE = mp.bZ("neighborhood");
        ahF = mp.bZ("political");
        ahG = mp.bZ("point_of_interest");
        ahH = mp.bZ("post_box");
        ahI = mp.bZ("postal_code");
        ahJ = mp.bZ("postal_code_prefix");
        ahK = mp.bZ("postal_town");
        ahL = mp.bZ("premise");
        ahM = mp.bZ("room");
        ahN = mp.bZ("route");
        ahO = mp.bZ("street_address");
        ahP = mp.bZ("sublocality");
        ahQ = mp.bZ("sublocality_level_1");
        ahR = mp.bZ("sublocality_level_2");
        ahS = mp.bZ("sublocality_level_3");
        ahT = mp.bZ("sublocality_level_4");
        ahU = mp.bZ("sublocality_level_5");
        ahV = mp.bZ("subpremise");
        ahW = mp.bZ("transit_station");
        ahX = mp.bZ("other");
        CREATOR = new mq();
    }

    mp(int n, String string) {
        o.aZ(string);
        this.BR = n;
        this.uO = string;
    }

    public static mp bZ(String string) {
        return new mp(0, string);
    }

    @Override
    public int describeContents() {
        mq mq = CREATOR;
        return 0;
    }

    public boolean equals(Object object) {
        if (object instanceof mp && this.uO.equals(((mp)object).uO)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.uO.hashCode();
    }

    public String toString() {
        return this.uO;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        mq mq = CREATOR;
        mq.a(this, parcel, n);
    }
}

