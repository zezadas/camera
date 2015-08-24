/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.internal.jb;
import com.google.android.gms.internal.jp;
import com.google.android.gms.plus.internal.b;
import java.util.List;

public interface d
extends IInterface {
    public j a(b var1, int var2, int var3, int var4, String var5) throws RemoteException;

    public void a(jp var1) throws RemoteException;

    public void a(b var1) throws RemoteException;

    public void a(b var1, int var2, String var3, Uri var4, String var5, String var6) throws RemoteException;

    public void a(b var1, Uri var2, Bundle var3) throws RemoteException;

    public void a(b var1, jp var2) throws RemoteException;

    public void a(b var1, String var2) throws RemoteException;

    public void a(b var1, String var2, String var3) throws RemoteException;

    public void a(b var1, List<String> var2) throws RemoteException;

    public void a(String var1, jb var2, jb var3) throws RemoteException;

    public void b(b var1) throws RemoteException;

    public void b(b var1, String var2) throws RemoteException;

    public void c(b var1, String var2) throws RemoteException;

    public void clearDefaultAccount() throws RemoteException;

    public void d(b var1, String var2) throws RemoteException;

    public void e(b var1, String var2) throws RemoteException;

    public String getAccountName() throws RemoteException;

    public String nb() throws RemoteException;

    public boolean nc() throws RemoteException;

    public String nd() throws RemoteException;

    public void removeMoment(String var1) throws RemoteException;

    public static abstract class com.google.android.gms.plus.internal.d$a
    extends Binder
    implements d {
        public static d bG(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class a
        implements d {
            private IBinder lb;

            a(IBinder var1);

            @Override
            public j a(b var1, int var2, int var3, int var4, String var5) throws RemoteException;

            @Override
            public void a(jp var1) throws RemoteException;

            @Override
            public void a(b var1) throws RemoteException;

            @Override
            public void a(b var1, int var2, String var3, Uri var4, String var5, String var6) throws RemoteException;

            @Override
            public void a(b var1, Uri var2, Bundle var3) throws RemoteException;

            @Override
            public void a(b var1, jp var2) throws RemoteException;

            @Override
            public void a(b var1, String var2) throws RemoteException;

            @Override
            public void a(b var1, String var2, String var3) throws RemoteException;

            @Override
            public void a(b var1, List<String> var2) throws RemoteException;

            @Override
            public void a(String var1, jb var2, jb var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(b var1) throws RemoteException;

            @Override
            public void b(b var1, String var2) throws RemoteException;

            @Override
            public void c(b var1, String var2) throws RemoteException;

            @Override
            public void clearDefaultAccount() throws RemoteException;

            @Override
            public void d(b var1, String var2) throws RemoteException;

            @Override
            public void e(b var1, String var2) throws RemoteException;

            @Override
            public String getAccountName() throws RemoteException;

            @Override
            public String nb() throws RemoteException;

            @Override
            public boolean nc() throws RemoteException;

            @Override
            public String nd() throws RemoteException;

            @Override
            public void removeMoment(String var1) throws RemoteException;
        }

    }

}

