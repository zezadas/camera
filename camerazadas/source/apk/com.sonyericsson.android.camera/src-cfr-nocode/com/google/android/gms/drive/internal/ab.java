/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.IntentSender;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.drive.RealtimeDocumentSyncRequest;
import com.google.android.gms.drive.internal.AddEventListenerRequest;
import com.google.android.gms.drive.internal.AuthorizeAccessRequest;
import com.google.android.gms.drive.internal.CheckResourceIdsExistRequest;
import com.google.android.gms.drive.internal.CloseContentsAndUpdateMetadataRequest;
import com.google.android.gms.drive.internal.CloseContentsRequest;
import com.google.android.gms.drive.internal.CreateContentsRequest;
import com.google.android.gms.drive.internal.CreateFileIntentSenderRequest;
import com.google.android.gms.drive.internal.CreateFileRequest;
import com.google.android.gms.drive.internal.CreateFolderRequest;
import com.google.android.gms.drive.internal.DeleteResourceRequest;
import com.google.android.gms.drive.internal.DisconnectRequest;
import com.google.android.gms.drive.internal.GetDriveIdFromUniqueIdentifierRequest;
import com.google.android.gms.drive.internal.GetMetadataRequest;
import com.google.android.gms.drive.internal.ListParentsRequest;
import com.google.android.gms.drive.internal.LoadRealtimeRequest;
import com.google.android.gms.drive.internal.OpenContentsRequest;
import com.google.android.gms.drive.internal.OpenFileIntentSenderRequest;
import com.google.android.gms.drive.internal.QueryRequest;
import com.google.android.gms.drive.internal.RemoveEventListenerRequest;
import com.google.android.gms.drive.internal.SetDrivePreferencesRequest;
import com.google.android.gms.drive.internal.SetResourceParentsRequest;
import com.google.android.gms.drive.internal.TrashResourceRequest;
import com.google.android.gms.drive.internal.UpdateMetadataRequest;
import com.google.android.gms.drive.internal.ac;
import com.google.android.gms.drive.internal.ad;

public interface ab
extends IInterface {
    public IntentSender a(CreateFileIntentSenderRequest var1) throws RemoteException;

    public IntentSender a(OpenFileIntentSenderRequest var1) throws RemoteException;

    public void a(RealtimeDocumentSyncRequest var1, ac var2) throws RemoteException;

    public void a(AddEventListenerRequest var1, ad var2, String var3, ac var4) throws RemoteException;

    public void a(AuthorizeAccessRequest var1, ac var2) throws RemoteException;

    public void a(CheckResourceIdsExistRequest var1, ac var2) throws RemoteException;

    public void a(CloseContentsAndUpdateMetadataRequest var1, ac var2) throws RemoteException;

    public void a(CloseContentsRequest var1, ac var2) throws RemoteException;

    public void a(CreateContentsRequest var1, ac var2) throws RemoteException;

    public void a(CreateFileRequest var1, ac var2) throws RemoteException;

    public void a(CreateFolderRequest var1, ac var2) throws RemoteException;

    public void a(DeleteResourceRequest var1, ac var2) throws RemoteException;

    public void a(DisconnectRequest var1) throws RemoteException;

    public void a(GetDriveIdFromUniqueIdentifierRequest var1, ac var2) throws RemoteException;

    public void a(GetMetadataRequest var1, ac var2) throws RemoteException;

    public void a(ListParentsRequest var1, ac var2) throws RemoteException;

    public void a(LoadRealtimeRequest var1, ac var2) throws RemoteException;

    public void a(OpenContentsRequest var1, ac var2) throws RemoteException;

    public void a(QueryRequest var1, ac var2) throws RemoteException;

    public void a(RemoveEventListenerRequest var1, ad var2, String var3, ac var4) throws RemoteException;

    public void a(SetDrivePreferencesRequest var1, ac var2) throws RemoteException;

    public void a(SetResourceParentsRequest var1, ac var2) throws RemoteException;

    public void a(TrashResourceRequest var1, ac var2) throws RemoteException;

    public void a(UpdateMetadataRequest var1, ac var2) throws RemoteException;

    public void a(ac var1) throws RemoteException;

    public void b(QueryRequest var1, ac var2) throws RemoteException;

    public void b(ac var1) throws RemoteException;

    public void c(ac var1) throws RemoteException;

    public void d(ac var1) throws RemoteException;

    public void e(ac var1) throws RemoteException;

    public void f(ac var1) throws RemoteException;

    public void g(ac var1) throws RemoteException;

    public static abstract class com.google.android.gms.drive.internal.ab$a
    extends Binder
    implements ab {
        public static ab U(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements ab {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IntentSender a(CreateFileIntentSenderRequest var1) throws RemoteException;

            @Override
            public IntentSender a(OpenFileIntentSenderRequest var1) throws RemoteException;

            @Override
            public void a(RealtimeDocumentSyncRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(AddEventListenerRequest var1, ad var2, String var3, ac var4) throws RemoteException;

            @Override
            public void a(AuthorizeAccessRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(CheckResourceIdsExistRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(CloseContentsAndUpdateMetadataRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(CloseContentsRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(CreateContentsRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(CreateFileRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(CreateFolderRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(DeleteResourceRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(DisconnectRequest var1) throws RemoteException;

            @Override
            public void a(GetDriveIdFromUniqueIdentifierRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(GetMetadataRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(ListParentsRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(LoadRealtimeRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(OpenContentsRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(QueryRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(RemoveEventListenerRequest var1, ad var2, String var3, ac var4) throws RemoteException;

            @Override
            public void a(SetDrivePreferencesRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(SetResourceParentsRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(TrashResourceRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(UpdateMetadataRequest var1, ac var2) throws RemoteException;

            @Override
            public void a(ac var1) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(QueryRequest var1, ac var2) throws RemoteException;

            @Override
            public void b(ac var1) throws RemoteException;

            @Override
            public void c(ac var1) throws RemoteException;

            @Override
            public void d(ac var1) throws RemoteException;

            @Override
            public void e(ac var1) throws RemoteException;

            @Override
            public void f(ac var1) throws RemoteException;

            @Override
            public void g(ac var1) throws RemoteException;
        }

    }

}

