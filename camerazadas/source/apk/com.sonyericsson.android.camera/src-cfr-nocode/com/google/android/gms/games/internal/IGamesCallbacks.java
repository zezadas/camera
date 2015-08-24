/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;

public interface IGamesCallbacks
extends IInterface {
    public void A(DataHolder var1) throws RemoteException;

    public void B(DataHolder var1) throws RemoteException;

    public void C(DataHolder var1) throws RemoteException;

    public void D(DataHolder var1) throws RemoteException;

    public void E(DataHolder var1) throws RemoteException;

    public void F(DataHolder var1) throws RemoteException;

    public void G(DataHolder var1) throws RemoteException;

    public void H(DataHolder var1) throws RemoteException;

    public void I(DataHolder var1) throws RemoteException;

    public void J(DataHolder var1) throws RemoteException;

    public void K(DataHolder var1) throws RemoteException;

    public void L(DataHolder var1) throws RemoteException;

    public void M(DataHolder var1) throws RemoteException;

    public void N(DataHolder var1) throws RemoteException;

    public void O(DataHolder var1) throws RemoteException;

    public void P(DataHolder var1) throws RemoteException;

    public void Q(DataHolder var1) throws RemoteException;

    public void a(int var1, String var2, boolean var3) throws RemoteException;

    public void a(DataHolder var1, DataHolder var2) throws RemoteException;

    public void a(DataHolder var1, Contents var2) throws RemoteException;

    public void a(DataHolder var1, String var2, Contents var3, Contents var4, Contents var5) throws RemoteException;

    public void a(DataHolder var1, String[] var2) throws RemoteException;

    public void b(int var1, int var2, String var3) throws RemoteException;

    public void b(int var1, Bundle var2) throws RemoteException;

    public void b(DataHolder var1, String[] var2) throws RemoteException;

    public void c(int var1, Bundle var2) throws RemoteException;

    public void c(DataHolder var1) throws RemoteException;

    public void c(DataHolder var1, String[] var2) throws RemoteException;

    public void d(int var1, Bundle var2) throws RemoteException;

    public void d(DataHolder var1) throws RemoteException;

    public void d(DataHolder var1, String[] var2) throws RemoteException;

    public void dx(int var1) throws RemoteException;

    public void dy(int var1) throws RemoteException;

    public void dz(int var1) throws RemoteException;

    public void e(int var1, Bundle var2) throws RemoteException;

    public void e(DataHolder var1) throws RemoteException;

    public void e(DataHolder var1, String[] var2) throws RemoteException;

    public void f(int var1, Bundle var2) throws RemoteException;

    public void f(int var1, String var2) throws RemoteException;

    public void f(DataHolder var1) throws RemoteException;

    public void f(DataHolder var1, String[] var2) throws RemoteException;

    public void fp() throws RemoteException;

    public void g(int var1, String var2) throws RemoteException;

    public void g(DataHolder var1) throws RemoteException;

    public void h(int var1, String var2) throws RemoteException;

    public void h(DataHolder var1) throws RemoteException;

    public void i(int var1, String var2) throws RemoteException;

    public void i(DataHolder var1) throws RemoteException;

    public void j(DataHolder var1) throws RemoteException;

    public void k(DataHolder var1) throws RemoteException;

    public void l(DataHolder var1) throws RemoteException;

    public void m(DataHolder var1) throws RemoteException;

    public void n(DataHolder var1) throws RemoteException;

    public void o(DataHolder var1) throws RemoteException;

    public void onInvitationRemoved(String var1) throws RemoteException;

    public void onLeftRoom(int var1, String var2) throws RemoteException;

    public void onP2PConnected(String var1) throws RemoteException;

    public void onP2PDisconnected(String var1) throws RemoteException;

    public void onRealTimeMessageReceived(RealTimeMessage var1) throws RemoteException;

    public void onRequestRemoved(String var1) throws RemoteException;

    public void onTurnBasedMatchRemoved(String var1) throws RemoteException;

    public void p(DataHolder var1) throws RemoteException;

    public void q(DataHolder var1) throws RemoteException;

    public void r(DataHolder var1) throws RemoteException;

    public void s(DataHolder var1) throws RemoteException;

    public void t(DataHolder var1) throws RemoteException;

    public void u(DataHolder var1) throws RemoteException;

    public void v(DataHolder var1) throws RemoteException;

    public void w(DataHolder var1) throws RemoteException;

    public void x(DataHolder var1) throws RemoteException;

    public void y(DataHolder var1) throws RemoteException;

    public void z(DataHolder var1) throws RemoteException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IGamesCallbacks {
        public Stub();

        public static IGamesCallbacks aA(IBinder var0);

        @Override
        public IBinder asBinder();

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class Proxy
        implements IGamesCallbacks {
            private IBinder lb;

            Proxy(IBinder var1);

            @Override
            public void A(DataHolder var1) throws RemoteException;

            @Override
            public void B(DataHolder var1) throws RemoteException;

            @Override
            public void C(DataHolder var1) throws RemoteException;

            @Override
            public void D(DataHolder var1) throws RemoteException;

            @Override
            public void E(DataHolder var1) throws RemoteException;

            @Override
            public void F(DataHolder var1) throws RemoteException;

            @Override
            public void G(DataHolder var1) throws RemoteException;

            @Override
            public void H(DataHolder var1) throws RemoteException;

            @Override
            public void I(DataHolder var1) throws RemoteException;

            @Override
            public void J(DataHolder var1) throws RemoteException;

            @Override
            public void K(DataHolder var1) throws RemoteException;

            @Override
            public void L(DataHolder var1) throws RemoteException;

            @Override
            public void M(DataHolder var1) throws RemoteException;

            @Override
            public void N(DataHolder var1) throws RemoteException;

            @Override
            public void O(DataHolder var1) throws RemoteException;

            @Override
            public void P(DataHolder var1) throws RemoteException;

            @Override
            public void Q(DataHolder var1) throws RemoteException;

            @Override
            public void a(int var1, String var2, boolean var3) throws RemoteException;

            @Override
            public void a(DataHolder var1, DataHolder var2) throws RemoteException;

            @Override
            public void a(DataHolder var1, Contents var2) throws RemoteException;

            @Override
            public void a(DataHolder var1, String var2, Contents var3, Contents var4, Contents var5) throws RemoteException;

            @Override
            public void a(DataHolder var1, String[] var2) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public void b(int var1, int var2, String var3) throws RemoteException;

            @Override
            public void b(int var1, Bundle var2) throws RemoteException;

            @Override
            public void b(DataHolder var1, String[] var2) throws RemoteException;

            @Override
            public void c(int var1, Bundle var2) throws RemoteException;

            @Override
            public void c(DataHolder var1) throws RemoteException;

            @Override
            public void c(DataHolder var1, String[] var2) throws RemoteException;

            @Override
            public void d(int var1, Bundle var2) throws RemoteException;

            @Override
            public void d(DataHolder var1) throws RemoteException;

            @Override
            public void d(DataHolder var1, String[] var2) throws RemoteException;

            @Override
            public void dx(int var1) throws RemoteException;

            @Override
            public void dy(int var1) throws RemoteException;

            @Override
            public void dz(int var1) throws RemoteException;

            @Override
            public void e(int var1, Bundle var2) throws RemoteException;

            @Override
            public void e(DataHolder var1) throws RemoteException;

            @Override
            public void e(DataHolder var1, String[] var2) throws RemoteException;

            @Override
            public void f(int var1, Bundle var2) throws RemoteException;

            @Override
            public void f(int var1, String var2) throws RemoteException;

            @Override
            public void f(DataHolder var1) throws RemoteException;

            @Override
            public void f(DataHolder var1, String[] var2) throws RemoteException;

            @Override
            public void fp() throws RemoteException;

            @Override
            public void g(int var1, String var2) throws RemoteException;

            @Override
            public void g(DataHolder var1) throws RemoteException;

            @Override
            public void h(int var1, String var2) throws RemoteException;

            @Override
            public void h(DataHolder var1) throws RemoteException;

            @Override
            public void i(int var1, String var2) throws RemoteException;

            @Override
            public void i(DataHolder var1) throws RemoteException;

            @Override
            public void j(DataHolder var1) throws RemoteException;

            @Override
            public void k(DataHolder var1) throws RemoteException;

            @Override
            public void l(DataHolder var1) throws RemoteException;

            @Override
            public void m(DataHolder var1) throws RemoteException;

            @Override
            public void n(DataHolder var1) throws RemoteException;

            @Override
            public void o(DataHolder var1) throws RemoteException;

            @Override
            public void onInvitationRemoved(String var1) throws RemoteException;

            @Override
            public void onLeftRoom(int var1, String var2) throws RemoteException;

            @Override
            public void onP2PConnected(String var1) throws RemoteException;

            @Override
            public void onP2PDisconnected(String var1) throws RemoteException;

            @Override
            public void onRealTimeMessageReceived(RealTimeMessage var1) throws RemoteException;

            @Override
            public void onRequestRemoved(String var1) throws RemoteException;

            @Override
            public void onTurnBasedMatchRemoved(String var1) throws RemoteException;

            @Override
            public void p(DataHolder var1) throws RemoteException;

            @Override
            public void q(DataHolder var1) throws RemoteException;

            @Override
            public void r(DataHolder var1) throws RemoteException;

            @Override
            public void s(DataHolder var1) throws RemoteException;

            @Override
            public void t(DataHolder var1) throws RemoteException;

            @Override
            public void u(DataHolder var1) throws RemoteException;

            @Override
            public void v(DataHolder var1) throws RemoteException;

            @Override
            public void w(DataHolder var1) throws RemoteException;

            @Override
            public void x(DataHolder var1) throws RemoteException;

            @Override
            public void y(DataHolder var1) throws RemoteException;

            @Override
            public void z(DataHolder var1) throws RemoteException;
        }

    }

}

