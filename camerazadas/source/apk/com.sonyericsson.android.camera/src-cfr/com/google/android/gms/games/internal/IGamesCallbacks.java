/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
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

    public static abstract class Stub
    extends Binder
    implements IGamesCallbacks {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.games.internal.IGamesCallbacks");
        }

        public static IGamesCallbacks aA(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesCallbacks");
            if (iInterface != null && iInterface instanceof IGamesCallbacks) {
                return (IGamesCallbacks)iInterface;
            }
            return new Proxy(iBinder);
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            Object var7_5 = null;
            Object object2 = null;
            String string = null;
            String string2 = null;
            String string3 = null;
            String string4 = null;
            String string5 = null;
            String string6 = null;
            String string7 = null;
            String string8 = null;
            String string9 = null;
            String string10 = null;
            String string11 = null;
            String string12 = null;
            String string13 = null;
            String string14 = null;
            String string15 = null;
            String string16 = null;
            String string17 = null;
            String string18 = null;
            String string19 = null;
            String string20 = null;
            String string21 = null;
            String string22 = null;
            String string23 = null;
            String string24 = null;
            String string25 = null;
            String string26 = null;
            String string27 = null;
            String string28 = null;
            String string29 = null;
            String string30 = null;
            String string31 = null;
            String string32 = null;
            String string33 = null;
            String string34 = null;
            String string35 = null;
            Contents contents = null;
            String string36 = null;
            String string37 = null;
            String string38 = null;
            String string39 = null;
            String string40 = null;
            String string41 = null;
            String string42 = null;
            String string43 = null;
            String string44 = null;
            Object object3 = null;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.games.internal.IGamesCallbacks");
                    return true;
                }
                case 5001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.f(object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object = object.readInt() != 0 ? DataHolder.CREATOR.z((Parcel)object) : null;
                    this.c((DataHolder)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.g(object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.e((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5005: {
                    void var7_7;
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = object.readInt() != 0 ? DataHolder.CREATOR.z((Parcel)object) : null;
                    if (object.readInt() != 0) {
                        DataHolder dataHolder = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.a((DataHolder)object3, (DataHolder)var7_7);
                    parcel.writeNoException();
                    return true;
                }
                case 5006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = object2;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.f((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.g((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string2;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.h((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string3;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.i((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5010: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string4;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.j((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5011: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string5;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.k((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5016: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.fp();
                    parcel.writeNoException();
                    return true;
                }
                case 5017: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string6;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.m((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5037: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string7;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.n((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5018: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string8;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.u((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5019: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string9;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.v((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5020: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.onLeftRoom(object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5021: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string10;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.w((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5022: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string11;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.x((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5023: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string12;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.y((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5024: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string13;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.z((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5025: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string14;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.A((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5026: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string15;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.a((DataHolder)object3, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5027: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string16;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.b((DataHolder)object3, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5028: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string17;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.c((DataHolder)object3, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5029: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string18;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.d((DataHolder)object3, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5030: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string19;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.e((DataHolder)object3, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5031: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string20;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.f((DataHolder)object3, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 5032: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object = object.readInt() != 0 ? RealTimeMessage.CREATOR.createFromParcel((Parcel)object) : null;
                    this.onRealTimeMessageReceived((RealTimeMessage)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5033: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.b(object.readInt(), object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5034: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    n = object.readInt();
                    object3 = object.readString();
                    boolean bl = object.readInt() != 0;
                    this.a(n, (String)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5038: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string21;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.B((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5035: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string22;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.C((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5036: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.dx(object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5039: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string23;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.D((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 5040: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.dy(object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 6001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.onP2PConnected(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 6002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.onP2PDisconnected(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string24;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.E((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 8002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.b(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 8003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string25;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.p((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 8004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string26;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.q((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 8005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string27;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.r((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 8006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string28;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.s((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 8007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.h(object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string29;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.t((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 8009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.onTurnBasedMatchRemoved(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8010: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.onInvitationRemoved(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 9001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string30;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.l((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 10001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string31;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.o((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 10002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.onRequestRemoved(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 10003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string32;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.F((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 10004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string33;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.G((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 10005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.c(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 10006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string34;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.H((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 11001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.d(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 12001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string35;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.I((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = object.readInt() != 0 ? DataHolder.CREATOR.z((Parcel)object) : null;
                    object = object.readInt() != 0 ? Contents.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((DataHolder)object3, (Contents)object);
                    parcel.writeNoException();
                    return true;
                }
                case 12017: {
                    void var7_9;
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = object.readInt() != 0 ? DataHolder.CREATOR.z((Parcel)object) : null;
                    string = object.readString();
                    if (object.readInt() != 0) {
                        Contents contents2 = Contents.CREATOR.createFromParcel((Parcel)object);
                    } else {
                        Object var7_10 = null;
                    }
                    object2 = object.readInt() != 0 ? Contents.CREATOR.createFromParcel((Parcel)object) : null;
                    if (object.readInt() != 0) {
                        contents = Contents.CREATOR.createFromParcel((Parcel)object);
                    }
                    this.a((DataHolder)object3, string, (Contents)var7_9, (Contents)object2, contents);
                    parcel.writeNoException();
                    return true;
                }
                case 12005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string36;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.J((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12012: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.i(object.readInt(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.e(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 12013: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string37;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.P((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12011: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string38;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.d((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string39;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.K((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string40;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.L((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12014: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string41;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.M((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12016: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string42;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.N((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string43;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.O((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 12015: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    n = object.readInt();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.f(n, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 13001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    object3 = string44;
                    if (object.readInt() != 0) {
                        object3 = DataHolder.CREATOR.z((Parcel)object);
                    }
                    this.Q((DataHolder)object3);
                    parcel.writeNoException();
                    return true;
                }
                case 13002: 
            }
            object.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
            this.dz(object.readInt());
            parcel.writeNoException();
            return true;
        }

        private static class Proxy
        implements IGamesCallbacks {
            private IBinder lb;

            Proxy(IBinder iBinder) {
                this.lb = iBinder;
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void A(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5025, parcel, parcel2, 0);
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
            public void B(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5038, parcel, parcel2, 0);
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
            public void C(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5035, parcel, parcel2, 0);
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
            public void D(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5039, parcel, parcel2, 0);
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
            public void E(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8001, parcel, parcel2, 0);
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
            public void F(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10003, parcel, parcel2, 0);
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
            public void G(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10004, parcel, parcel2, 0);
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
            public void H(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10006, parcel, parcel2, 0);
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
            public void I(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12001, parcel, parcel2, 0);
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
            public void J(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12005, parcel, parcel2, 0);
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
            public void K(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12006, parcel, parcel2, 0);
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
            public void L(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12007, parcel, parcel2, 0);
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
            public void M(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12014, parcel, parcel2, 0);
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
            public void N(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12016, parcel, parcel2, 0);
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
            public void O(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12008, parcel, parcel2, 0);
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
            public void P(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12013, parcel, parcel2, 0);
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
            public void Q(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13001, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void a(int n, String string, boolean bl) throws RemoteException {
                Parcel parcel;
                Parcel parcel2;
                block4 : {
                    int n2 = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel2.writeInt(n);
                    parcel2.writeString(string);
                    n = n2;
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(5034, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (dataHolder2 != null) {
                        parcel.writeInt(1);
                        dataHolder2.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5005, parcel, parcel2, 0);
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
            public void a(DataHolder dataHolder, Contents contents) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (contents != null) {
                        parcel.writeInt(1);
                        contents.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12004, parcel, parcel2, 0);
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
            public void a(DataHolder dataHolder, String string, Contents contents, Contents contents2, Contents contents3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    if (contents != null) {
                        parcel.writeInt(1);
                        contents.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (contents2 != null) {
                        parcel.writeInt(1);
                        contents2.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (contents3 != null) {
                        parcel.writeInt(1);
                        contents3.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12017, parcel, parcel2, 0);
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
            public void a(DataHolder dataHolder, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5026, parcel, parcel2, 0);
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

            @Override
            public void b(int n, int n2, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeString(string);
                    this.lb.transact(5033, parcel, parcel2, 0);
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
            public void b(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8002, parcel, parcel2, 0);
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
            public void b(DataHolder dataHolder, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5027, parcel, parcel2, 0);
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
            public void c(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10005, parcel, parcel2, 0);
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
            public void c(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5002, parcel, parcel2, 0);
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
            public void c(DataHolder dataHolder, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5028, parcel, parcel2, 0);
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
            public void d(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(11001, parcel, parcel2, 0);
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
            public void d(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12011, parcel, parcel2, 0);
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
            public void d(DataHolder dataHolder, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5029, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void dx(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    this.lb.transact(5036, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void dy(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    this.lb.transact(5040, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void dz(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    this.lb.transact(13002, parcel, parcel2, 0);
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
            public void e(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12003, parcel, parcel2, 0);
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
            public void e(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5004, parcel, parcel2, 0);
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
            public void e(DataHolder dataHolder, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5030, parcel, parcel2, 0);
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
            public void f(int n, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12015, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void f(int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    this.lb.transact(5001, parcel, parcel2, 0);
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
            public void f(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5006, parcel, parcel2, 0);
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
            public void f(DataHolder dataHolder, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5031, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void fp() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.lb.transact(5016, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void g(int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    this.lb.transact(5003, parcel, parcel2, 0);
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
            public void g(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5007, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void h(int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    this.lb.transact(8007, parcel, parcel2, 0);
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
            public void h(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5008, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void i(int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    this.lb.transact(12012, parcel, parcel2, 0);
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
            public void i(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5009, parcel, parcel2, 0);
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
            public void j(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5010, parcel, parcel2, 0);
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
            public void k(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5011, parcel, parcel2, 0);
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
            public void l(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9001, parcel, parcel2, 0);
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
            public void m(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5017, parcel, parcel2, 0);
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
            public void n(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5037, parcel, parcel2, 0);
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
            public void o(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(10001, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onInvitationRemoved(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(8010, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onLeftRoom(int n, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeInt(n);
                    parcel.writeString(string);
                    this.lb.transact(5020, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onP2PConnected(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(6001, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onP2PDisconnected(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(6002, parcel, parcel2, 0);
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
            public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (realTimeMessage != null) {
                        parcel.writeInt(1);
                        realTimeMessage.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5032, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onRequestRemoved(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(10002, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void onTurnBasedMatchRemoved(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcel.writeString(string);
                    this.lb.transact(8009, parcel, parcel2, 0);
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
            public void p(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8003, parcel, parcel2, 0);
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
            public void q(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8004, parcel, parcel2, 0);
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
            public void r(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8005, parcel, parcel2, 0);
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
            public void s(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8006, parcel, parcel2, 0);
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
            public void t(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8008, parcel, parcel2, 0);
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
            public void u(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5018, parcel, parcel2, 0);
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
            public void v(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5019, parcel, parcel2, 0);
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
            public void w(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5021, parcel, parcel2, 0);
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
            public void x(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5022, parcel, parcel2, 0);
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
            public void y(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5023, parcel, parcel2, 0);
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
            public void z(DataHolder dataHolder) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcel.writeInt(1);
                        dataHolder.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5024, parcel, parcel2, 0);
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

