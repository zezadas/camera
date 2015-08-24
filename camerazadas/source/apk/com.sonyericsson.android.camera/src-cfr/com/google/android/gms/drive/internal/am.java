/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.internal.OnEventResponse;

public class am
implements Parcelable.Creator<OnEventResponse> {
    static void a(OnEventResponse onEventResponse, Parcel parcel, int n) {
        int n2 = b.D(parcel);
        b.c(parcel, 1, onEventResponse.BR);
        b.c(parcel, 2, onEventResponse.Oa);
        b.a(parcel, 3, onEventResponse.Ps, n, false);
        b.a(parcel, 5, onEventResponse.Pt, n, false);
        b.H(parcel, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public OnEventResponse ao(Parcel parcel) {
        CompletionEvent completionEvent = null;
        int n = 0;
        int n2 = a.C(parcel);
        ChangeEvent changeEvent = null;
        int n3 = 0;
        while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    n4 = n;
                    n = n3;
                    n3 = n4;
                    break;
                }
                case 1: {
                    n4 = a.g(parcel, n4);
                    n3 = n;
                    n = n4;
                    break;
                }
                case 2: {
                    n4 = a.g(parcel, n4);
                    n = n3;
                    n3 = n4;
                    break;
                }
                case 3: {
                    changeEvent = a.a(parcel, n4, ChangeEvent.CREATOR);
                    n4 = n3;
                    n3 = n;
                    n = n4;
                    break;
                }
                case 5: {
                    completionEvent = a.a(parcel, n4, CompletionEvent.CREATOR);
                    n4 = n3;
                    n3 = n;
                    n = n4;
                }
            }
            n4 = n;
            n = n3;
            n3 = n4;
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new OnEventResponse(n3, n, changeEvent, completionEvent);
    }

    public OnEventResponse[] bA(int n) {
        return new OnEventResponse[n];
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.ao(parcel);
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.bA(n);
    }
}

