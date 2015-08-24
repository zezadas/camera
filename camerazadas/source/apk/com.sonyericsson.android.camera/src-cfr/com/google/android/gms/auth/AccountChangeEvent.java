/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventCreator;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AccountChangeEvent
implements SafeParcelable {
    public static final AccountChangeEventCreator CREATOR = new AccountChangeEventCreator();
    final String Dd;
    final int Di;
    final long Dj;
    final int Dk;
    final int Dl;
    final String Dm;

    AccountChangeEvent(int n, long l, String string, int n2, int n3, String string2) {
        this.Di = n;
        this.Dj = l;
        this.Dd = o.i(string);
        this.Dk = n2;
        this.Dl = n3;
        this.Dm = string2;
    }

    public AccountChangeEvent(long l, String string, int n, int n2, String string2) {
        this.Di = 1;
        this.Dj = l;
        this.Dd = o.i(string);
        this.Dk = n;
        this.Dl = n2;
        this.Dm = string2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof AccountChangeEvent)) return false;
        object = (AccountChangeEvent)object;
        if (this.Di != object.Di) return false;
        if (this.Dj != object.Dj) return false;
        if (!n.equal(this.Dd, object.Dd)) return false;
        if (this.Dk != object.Dk) return false;
        if (this.Dl != object.Dl) return false;
        if (n.equal(this.Dm, object.Dm)) return true;
        return false;
    }

    public String getAccountName() {
        return this.Dd;
    }

    public String getChangeData() {
        return this.Dm;
    }

    public int getChangeType() {
        return this.Dk;
    }

    public int getEventIndex() {
        return this.Dl;
    }

    public int hashCode() {
        return n.hashCode(this.Di, this.Dj, this.Dd, this.Dk, this.Dl, this.Dm);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public String toString() {
        var1_1 = "UNKNOWN";
        switch (this.Dk) {
            case 1: {
                var1_1 = "ADDED";
                ** break;
            }
            case 2: {
                var1_1 = "REMOVED";
                ** break;
            }
            case 4: {
                var1_1 = "RENAMED_TO";
            }
lbl11: // 4 sources:
            default: {
                return "AccountChangeEvent {accountName = " + this.Dd + ", changeType = " + var1_1 + ", changeData = " + this.Dm + ", eventIndex = " + this.Dl + "}";
            }
            case 3: 
        }
        var1_1 = "RENAMED_FROM";
        return "AccountChangeEvent {accountName = " + this.Dd + ", changeType = " + var1_1 + ", changeData = " + this.Dm + ", eventIndex = " + this.Dl + "}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        AccountChangeEventCreator.a(this, parcel, n);
    }
}

