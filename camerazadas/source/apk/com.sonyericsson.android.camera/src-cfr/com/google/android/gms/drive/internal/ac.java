/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.internal.OnContentsResponse;
import com.google.android.gms.drive.internal.OnDownloadProgressResponse;
import com.google.android.gms.drive.internal.OnDriveIdResponse;
import com.google.android.gms.drive.internal.OnDrivePreferencesResponse;
import com.google.android.gms.drive.internal.OnListEntriesResponse;
import com.google.android.gms.drive.internal.OnListParentsResponse;
import com.google.android.gms.drive.internal.OnLoadRealtimeResponse;
import com.google.android.gms.drive.internal.OnMetadataResponse;
import com.google.android.gms.drive.internal.OnResourceIdSetResponse;
import com.google.android.gms.drive.internal.OnStorageStatsResponse;
import com.google.android.gms.drive.internal.OnSyncMoreResponse;
import com.google.android.gms.drive.realtime.internal.m;

public interface ac
extends IInterface {
    public void a(OnContentsResponse var1) throws RemoteException;

    public void a(OnDownloadProgressResponse var1) throws RemoteException;

    public void a(OnDriveIdResponse var1) throws RemoteException;

    public void a(OnDrivePreferencesResponse var1) throws RemoteException;

    public void a(OnListEntriesResponse var1) throws RemoteException;

    public void a(OnListParentsResponse var1) throws RemoteException;

    public void a(OnLoadRealtimeResponse var1, m var2) throws RemoteException;

    public void a(OnMetadataResponse var1) throws RemoteException;

    public void a(OnResourceIdSetResponse var1) throws RemoteException;

    public void a(OnStorageStatsResponse var1) throws RemoteException;

    public void a(OnSyncMoreResponse var1) throws RemoteException;

    public void o(Status var1) throws RemoteException;

    public void onSuccess() throws RemoteException;

    public static abstract class com.google.android.gms.drive.internal.ac$a
    extends Binder
    implements ac {
        public com.google.android.gms.drive.internal.ac$a() {
            this.attachInterface(this, "com.google.android.gms.drive.internal.IDriveServiceCallbacks");
        }

        public static ac V(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (iInterface != null && iInterface instanceof ac) {
                return (ac)iInterface;
            }
            return new a(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            OnDownloadProgressResponse onDownloadProgressResponse = null;
            OnDownloadProgressResponse onDownloadProgressResponse2 = null;
            OnDownloadProgressResponse onDownloadProgressResponse3 = null;
            OnDownloadProgressResponse onDownloadProgressResponse4 = null;
            OnDownloadProgressResponse onDownloadProgressResponse5 = null;
            OnDownloadProgressResponse onDownloadProgressResponse6 = null;
            OnDownloadProgressResponse onDownloadProgressResponse7 = null;
            OnDownloadProgressResponse onDownloadProgressResponse8 = null;
            OnDownloadProgressResponse onDownloadProgressResponse9 = null;
            OnDownloadProgressResponse onDownloadProgressResponse10 = null;
            OnDownloadProgressResponse onDownloadProgressResponse11 = null;
            SafeParcelable safeParcelable = null;
            switch (n) {
                default: {
                    return super.onTransact(n, parcel, parcel2, n2);
                }
                case 1598968902: {
                    parcel2.writeString("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    return true;
                }
                case 1: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnDownloadProgressResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnDownloadProgressResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnListEntriesResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnListEntriesResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse2;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnDriveIdResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnDriveIdResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse3;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnMetadataResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnMetadataResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse4;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnContentsResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnContentsResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 6: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse5;
                    if (parcel.readInt() != 0) {
                        safeParcelable = Status.CREATOR.createFromParcel(parcel);
                    }
                    this.o((Status)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 7: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    this.onSuccess();
                    parcel2.writeNoException();
                    return true;
                }
                case 8: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse6;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnListParentsResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnListParentsResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 9: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse7;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnSyncMoreResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnSyncMoreResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 10: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse8;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnStorageStatsResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnStorageStatsResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 11: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse9;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnLoadRealtimeResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnLoadRealtimeResponse)safeParcelable, m.a.ai(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                }
                case 12: {
                    parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    safeParcelable = onDownloadProgressResponse10;
                    if (parcel.readInt() != 0) {
                        safeParcelable = OnResourceIdSetResponse.CREATOR.createFromParcel(parcel);
                    }
                    this.a((OnResourceIdSetResponse)safeParcelable);
                    parcel2.writeNoException();
                    return true;
                }
                case 13: 
            }
            parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            safeParcelable = onDownloadProgressResponse11;
            if (parcel.readInt() != 0) {
                safeParcelable = OnDrivePreferencesResponse.CREATOR.createFromParcel(parcel);
            }
            this.a((OnDrivePreferencesResponse)safeParcelable);
            parcel2.writeNoException();
            return true;
        }

        private static class a
        implements ac {
            private IBinder lb;

            a(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnContentsResponse onContentsResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onContentsResponse != null) {
                        parcel.writeInt(1);
                        onContentsResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnDownloadProgressResponse onDownloadProgressResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onDownloadProgressResponse != null) {
                        parcel.writeInt(1);
                        onDownloadProgressResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(1, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnDriveIdResponse onDriveIdResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onDriveIdResponse != null) {
                        parcel.writeInt(1);
                        onDriveIdResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(3, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnDrivePreferencesResponse onDrivePreferencesResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onDrivePreferencesResponse != null) {
                        parcel.writeInt(1);
                        onDrivePreferencesResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnListEntriesResponse onListEntriesResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onListEntriesResponse != null) {
                        parcel.writeInt(1);
                        onListEntriesResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(2, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnListParentsResponse onListParentsResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onListParentsResponse != null) {
                        parcel.writeInt(1);
                        onListParentsResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnLoadRealtimeResponse object, m m) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    object = m != null ? m.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(11, parcel, parcel2, 0);
                    parcel2.readException();
                    parcel2.recycle();
                    parcel.recycle();
                    return;
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnMetadataResponse onMetadataResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onMetadataResponse != null) {
                        parcel.writeInt(1);
                        onMetadataResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(4, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnResourceIdSetResponse onResourceIdSetResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onResourceIdSetResponse != null) {
                        parcel.writeInt(1);
                        onResourceIdSetResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnStorageStatsResponse onStorageStatsResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onStorageStatsResponse != null) {
                        parcel.writeInt(1);
                        onStorageStatsResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(OnSyncMoreResponse onSyncMoreResponse) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onSyncMoreResponse != null) {
                        parcel.writeInt(1);
                        onSyncMoreResponse.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.lb;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void o(Status status) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (status != null) {
                        parcel.writeInt(1);
                        status.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(6, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onSuccess() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    this.lb.transact(7, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }
        }

    }

}

