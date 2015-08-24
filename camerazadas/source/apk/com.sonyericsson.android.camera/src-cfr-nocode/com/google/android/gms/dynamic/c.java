/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

public interface c
extends IInterface {
    public void d(d var1) throws RemoteException;

    public void e(d var1) throws RemoteException;

    public Bundle getArguments() throws RemoteException;

    public int getId() throws RemoteException;

    public boolean getRetainInstance() throws RemoteException;

    public String getTag() throws RemoteException;

    public int getTargetRequestCode() throws RemoteException;

    public boolean getUserVisibleHint() throws RemoteException;

    public d getView() throws RemoteException;

    public boolean isAdded() throws RemoteException;

    public boolean isDetached() throws RemoteException;

    public boolean isHidden() throws RemoteException;

    public boolean isInLayout() throws RemoteException;

    public boolean isRemoving() throws RemoteException;

    public boolean isResumed() throws RemoteException;

    public boolean isVisible() throws RemoteException;

    public d iu() throws RemoteException;

    public c iv() throws RemoteException;

    public d iw() throws RemoteException;

    public c ix() throws RemoteException;

    public void setHasOptionsMenu(boolean var1) throws RemoteException;

    public void setMenuVisibility(boolean var1) throws RemoteException;

    public void setRetainInstance(boolean var1) throws RemoteException;

    public void setUserVisibleHint(boolean var1) throws RemoteException;

    public void startActivity(Intent var1) throws RemoteException;

    public void startActivityForResult(Intent var1, int var2) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class com.google.android.gms.dynamic.c$a
    extends Binder
    implements c {
        public com.google.android.gms.dynamic.c$a();

        public static c al(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements c {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public IBinder asBinder();

            @Override
            public void d(d var1) throws RemoteException;

            @Override
            public void e(d var1) throws RemoteException;

            @Override
            public Bundle getArguments() throws RemoteException;

            @Override
            public int getId() throws RemoteException;

            @Override
            public boolean getRetainInstance() throws RemoteException;

            @Override
            public String getTag() throws RemoteException;

            @Override
            public int getTargetRequestCode() throws RemoteException;

            @Override
            public boolean getUserVisibleHint() throws RemoteException;

            @Override
            public d getView() throws RemoteException;

            @Override
            public boolean isAdded() throws RemoteException;

            @Override
            public boolean isDetached() throws RemoteException;

            @Override
            public boolean isHidden() throws RemoteException;

            @Override
            public boolean isInLayout() throws RemoteException;

            @Override
            public boolean isRemoving() throws RemoteException;

            @Override
            public boolean isResumed() throws RemoteException;

            @Override
            public boolean isVisible() throws RemoteException;

            @Override
            public d iu() throws RemoteException;

            @Override
            public c iv() throws RemoteException;

            @Override
            public d iw() throws RemoteException;

            @Override
            public c ix() throws RemoteException;

            @Override
            public void setHasOptionsMenu(boolean var1) throws RemoteException;

            @Override
            public void setMenuVisibility(boolean var1) throws RemoteException;

            @Override
            public void setRetainInstance(boolean var1) throws RemoteException;

            @Override
            public void setUserVisibleHint(boolean var1) throws RemoteException;

            @Override
            public void startActivity(Intent var1) throws RemoteException;

            @Override
            public void startActivityForResult(Intent var1, int var2) throws RemoteException;
        }

    }

}

