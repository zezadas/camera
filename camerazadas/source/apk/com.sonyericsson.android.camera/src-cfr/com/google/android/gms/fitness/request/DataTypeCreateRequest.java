/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Field;
import com.google.android.gms.fitness.request.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class DataTypeCreateRequest
implements SafeParcelable {
    public static final Parcelable.Creator<DataTypeCreateRequest> CREATOR = new i();
    private final int BR;
    private final List<Field> SY;
    private final String mName;

    DataTypeCreateRequest(int n, String string, List<Field> list) {
        this.BR = n;
        this.mName = string;
        this.SY = Collections.unmodifiableList(list);
    }

    private DataTypeCreateRequest(Builder builder) {
        this.BR = 1;
        this.mName = builder.mName;
        this.SY = Collections.unmodifiableList(builder.SY);
    }

    private boolean a(DataTypeCreateRequest dataTypeCreateRequest) {
        if (n.equal(this.mName, dataTypeCreateRequest.mName) && n.equal(this.SY, dataTypeCreateRequest.SY)) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (object == this || object instanceof DataTypeCreateRequest && this.a((DataTypeCreateRequest)object)) {
            return true;
        }
        return false;
    }

    public List<Field> getFields() {
        return this.SY;
    }

    public String getName() {
        return this.mName;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.mName, this.SY);
    }

    public String toString() {
        return n.h(this).a("name", this.mName).a("fields", this.SY).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        i.a(this, parcel, n);
    }

    public static class Builder {
        private List<Field> SY = new ArrayList<Field>();
        private String mName;

        public Builder addField(Field field) {
            if (!this.SY.contains(field)) {
                this.SY.add(field);
            }
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addField(String string, int n) {
            boolean bl = string != null || !string.isEmpty();
            o.b(bl, (Object)"Invalid name specified");
            return this.addField(new Field(string, n));
        }

        /*
         * Enabled aggressive block sorting
         */
        public DataTypeCreateRequest build() {
            boolean bl = true;
            boolean bl2 = this.mName != null;
            o.a(bl2, "Must set the name");
            bl2 = !this.SY.isEmpty() ? bl : false;
            o.a(bl2, "Must specify the data fields");
            return new DataTypeCreateRequest(this);
        }

        public Builder setName(String string) {
            this.mName = string;
            return this;
        }
    }

}

