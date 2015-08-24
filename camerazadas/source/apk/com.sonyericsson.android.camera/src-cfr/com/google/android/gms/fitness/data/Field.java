/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.j;

public final class Field
implements SafeParcelable {
    public static final Parcelable.Creator<Field> CREATOR;
    public static final Field FIELD_ACCURACY;
    public static final Field FIELD_ACTIVITY;
    public static final Field FIELD_ALTITUDE;
    public static final Field FIELD_AVERAGE;
    public static final Field FIELD_BPM;
    public static final Field FIELD_CALORIES;
    public static final Field FIELD_CONFIDENCE;
    public static final Field FIELD_DISTANCE;
    public static final Field FIELD_DURATION;
    public static final Field FIELD_HEIGHT;
    public static final Field FIELD_HIGH_LATITUDE;
    public static final Field FIELD_HIGH_LONGITUDE;
    public static final Field FIELD_LATITUDE;
    public static final Field FIELD_LONGITUDE;
    public static final Field FIELD_LOW_LATITUDE;
    public static final Field FIELD_LOW_LONGITUDE;
    public static final Field FIELD_MAX;
    public static final Field FIELD_MIN;
    public static final Field FIELD_NUM_SEGMENTS;
    public static final Field FIELD_REVOLUTIONS;
    public static final Field FIELD_RPM;
    public static final Field FIELD_SPEED;
    public static final Field FIELD_STEPS;
    public static final Field FIELD_WATTS;
    public static final Field FIELD_WEIGHT;
    public static final int FORMAT_FLOAT = 2;
    public static final int FORMAT_INT32 = 1;
    public static final Field Td;
    public static final Field Te;
    public static final Field Tf;
    public static final Field Tg;
    private final int BR;
    private final int Th;
    private final String mName;

    static {
        FIELD_ACTIVITY = Field.br("activity");
        FIELD_CONFIDENCE = Field.bs("confidence");
        FIELD_STEPS = Field.br("steps");
        FIELD_DURATION = Field.br("duration");
        FIELD_BPM = Field.bs("bpm");
        FIELD_LATITUDE = Field.bs("latitude");
        FIELD_LONGITUDE = Field.bs("longitude");
        FIELD_ACCURACY = Field.bs("accuracy");
        FIELD_ALTITUDE = Field.bs("altitude");
        FIELD_DISTANCE = Field.bs("distance");
        FIELD_HEIGHT = Field.bs("height");
        FIELD_WEIGHT = Field.bs("weight");
        FIELD_SPEED = Field.bs("speed");
        FIELD_RPM = Field.bs("rpm");
        FIELD_REVOLUTIONS = Field.br("revolutions");
        FIELD_CALORIES = Field.bs("calories");
        FIELD_WATTS = Field.bs("watts");
        FIELD_NUM_SEGMENTS = Field.br("num_segments");
        FIELD_AVERAGE = Field.bs("average");
        FIELD_MAX = Field.bs("max");
        FIELD_MIN = Field.bs("min");
        FIELD_LOW_LATITUDE = Field.bs("low_latitude");
        FIELD_LOW_LONGITUDE = Field.bs("low_longitude");
        FIELD_HIGH_LATITUDE = Field.bs("high_latitude");
        FIELD_HIGH_LONGITUDE = Field.bs("high_longitude");
        Td = Field.br("edge_type");
        Te = Field.bs("x");
        Tf = Field.bs("y");
        Tg = Field.bs("z");
        CREATOR = new j();
    }

    Field(int n, String string, int n2) {
        this.BR = n;
        this.mName = string;
        this.Th = n2;
    }

    public Field(String string, int n) {
        this(1, string, n);
    }

    private boolean a(Field field) {
        if (this.mName.equals(field.mName) && this.Th == field.Th) {
            return true;
        }
        return false;
    }

    private static Field br(String string) {
        return new Field(string, 1);
    }

    private static Field bs(String string) {
        return new Field(string, 2);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object || object instanceof Field && this.a((Field)object)) {
            return true;
        }
        return false;
    }

    public int getFormat() {
        return this.Th;
    }

    public String getName() {
        return this.mName;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        String string;
        String string2 = this.mName;
        if (this.Th == 1) {
            string = "i";
            do {
                return String.format("%s(%s)", string2, string);
                break;
            } while (true);
        }
        string = "f";
        return String.format("%s(%s)", string2, string);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        j.a(this, parcel, n);
    }
}

