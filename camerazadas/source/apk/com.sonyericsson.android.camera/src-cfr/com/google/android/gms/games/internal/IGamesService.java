/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.achievement.AchievementEntity;
import com.google.android.gms.games.achievement.AchievementEntityCreator;
import com.google.android.gms.games.internal.IGamesCallbacks;
import com.google.android.gms.games.internal.multiplayer.InvitationClusterCreator;
import com.google.android.gms.games.internal.multiplayer.ZInvitationCluster;
import com.google.android.gms.games.internal.request.GameRequestCluster;
import com.google.android.gms.games.internal.request.GameRequestClusterCreator;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.ParticipantResultCreator;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeCreator;

public interface IGamesService
extends IInterface {
    public void N(boolean var1) throws RemoteException;

    public void O(boolean var1) throws RemoteException;

    public void P(boolean var1) throws RemoteException;

    public int a(IGamesCallbacks var1, byte[] var2, String var3, String var4) throws RemoteException;

    public Intent a(int var1, int var2, boolean var3) throws RemoteException;

    public Intent a(int var1, byte[] var2, int var3, String var4) throws RemoteException;

    public Intent a(AchievementEntity var1) throws RemoteException;

    public Intent a(ZInvitationCluster var1, String var2, String var3) throws RemoteException;

    public Intent a(GameRequestCluster var1, String var2) throws RemoteException;

    public Intent a(RoomEntity var1, int var2) throws RemoteException;

    public Intent a(String var1, boolean var2, boolean var3, int var4) throws RemoteException;

    public Intent a(ParticipantEntity[] var1, String var2, String var3, Uri var4, Uri var5) throws RemoteException;

    public void a(long var1, String var3) throws RemoteException;

    public void a(IBinder var1, Bundle var2) throws RemoteException;

    public void a(Contents var1) throws RemoteException;

    public void a(IGamesCallbacks var1) throws RemoteException;

    public void a(IGamesCallbacks var1, int var2) throws RemoteException;

    public void a(IGamesCallbacks var1, int var2, int var3, int var4) throws RemoteException;

    public void a(IGamesCallbacks var1, int var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void a(IGamesCallbacks var1, int var2, int var3, String[] var4, Bundle var5) throws RemoteException;

    public void a(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

    public void a(IGamesCallbacks var1, int var2, int[] var3) throws RemoteException;

    public void a(IGamesCallbacks var1, long var2) throws RemoteException;

    public void a(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

    public void a(IGamesCallbacks var1, Bundle var2, int var3, int var4) throws RemoteException;

    public void a(IGamesCallbacks var1, IBinder var2, int var3, String[] var4, Bundle var5, boolean var6, long var7) throws RemoteException;

    public void a(IGamesCallbacks var1, IBinder var2, String var3, boolean var4, long var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3, int var4, int var5, boolean var6) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3, IBinder var4, Bundle var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3, boolean var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5, boolean var6, boolean var7) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int var3, int[] var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, long var3) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, long var3, String var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, IBinder var3, Bundle var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, SnapshotMetadataChange var3, Contents var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, int var4, int var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, int var4, int var5, int var6) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, int var4, int var5, int var6, boolean var7) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, int var4, boolean var5, boolean var6) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, SnapshotMetadataChange var4, Contents var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, boolean var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, int[] var4, int var5, boolean var6) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, String[] var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String var3, String[] var4, boolean var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, byte[] var3, String var4, ParticipantResult[] var5) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, byte[] var3, ParticipantResult[] var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, int[] var3) throws RemoteException;

    public void a(IGamesCallbacks var1, String var2, String[] var3, int var4, byte[] var5, int var6) throws RemoteException;

    public void a(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public void a(IGamesCallbacks var1, boolean var2, Bundle var3) throws RemoteException;

    public void a(IGamesCallbacks var1, boolean var2, String[] var3) throws RemoteException;

    public void a(IGamesCallbacks var1, int[] var2) throws RemoteException;

    public void a(IGamesCallbacks var1, int[] var2, int var3, boolean var4) throws RemoteException;

    public void a(IGamesCallbacks var1, String[] var2) throws RemoteException;

    public void a(IGamesCallbacks var1, String[] var2, boolean var3) throws RemoteException;

    public void a(String var1, IBinder var2, Bundle var3) throws RemoteException;

    public int b(byte[] var1, String var2, String[] var3) throws RemoteException;

    public Intent b(int var1, int var2, boolean var3) throws RemoteException;

    public Intent b(int[] var1) throws RemoteException;

    public void b(long var1, String var3) throws RemoteException;

    public void b(IGamesCallbacks var1) throws RemoteException;

    public void b(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

    public void b(IGamesCallbacks var1, long var2) throws RemoteException;

    public void b(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, int var3) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, int var3, int var4, int var5, boolean var6) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, int var3, IBinder var4, Bundle var5) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, int var3, boolean var4) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, IBinder var3, Bundle var4) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, String var3, int var4, int var5, int var6, boolean var7) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, String var3, int var4, boolean var5, boolean var6) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, String var3, boolean var4) throws RemoteException;

    public void b(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

    public void b(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public void b(IGamesCallbacks var1, String[] var2) throws RemoteException;

    public void b(String var1, String var2, int var3) throws RemoteException;

    public Intent bC(String var1) throws RemoteException;

    public String bE(String var1) throws RemoteException;

    public String bF(String var1) throws RemoteException;

    public void bG(String var1) throws RemoteException;

    public int bH(String var1) throws RemoteException;

    public Uri bI(String var1) throws RemoteException;

    public void bJ(String var1) throws RemoteException;

    public ParcelFileDescriptor bK(String var1) throws RemoteException;

    public Intent bx(String var1) throws RemoteException;

    public void c(long var1, String var3) throws RemoteException;

    public void c(IGamesCallbacks var1) throws RemoteException;

    public void c(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

    public void c(IGamesCallbacks var1, long var2) throws RemoteException;

    public void c(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

    public void c(IGamesCallbacks var1, String var2) throws RemoteException;

    public void c(IGamesCallbacks var1, String var2, int var3) throws RemoteException;

    public void c(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void c(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

    public void c(IGamesCallbacks var1, String var2, String var3, boolean var4) throws RemoteException;

    public void c(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

    public void c(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public void c(IGamesCallbacks var1, String[] var2) throws RemoteException;

    public void c(String var1, String var2, int var3) throws RemoteException;

    public void d(long var1, String var3) throws RemoteException;

    public void d(IGamesCallbacks var1) throws RemoteException;

    public void d(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

    public void d(IGamesCallbacks var1, long var2) throws RemoteException;

    public void d(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

    public void d(IGamesCallbacks var1, String var2) throws RemoteException;

    public void d(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void d(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

    public void d(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

    public void d(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public void dC(int var1) throws RemoteException;

    public void e(IGamesCallbacks var1) throws RemoteException;

    public void e(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

    public void e(IGamesCallbacks var1, String var2) throws RemoteException;

    public void e(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void e(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

    public void e(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

    public void e(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public void f(IGamesCallbacks var1) throws RemoteException;

    public void f(IGamesCallbacks var1, String var2) throws RemoteException;

    public void f(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

    public void f(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

    public void f(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public Bundle fC() throws RemoteException;

    public void g(IGamesCallbacks var1) throws RemoteException;

    public void g(IGamesCallbacks var1, String var2) throws RemoteException;

    public void g(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public ParcelFileDescriptor h(Uri var1) throws RemoteException;

    public RoomEntity h(IGamesCallbacks var1, String var2) throws RemoteException;

    public void h(IGamesCallbacks var1) throws RemoteException;

    public void h(IGamesCallbacks var1, boolean var2) throws RemoteException;

    public void i(IGamesCallbacks var1) throws RemoteException;

    public void i(IGamesCallbacks var1, String var2) throws RemoteException;

    public void j(IGamesCallbacks var1) throws RemoteException;

    public void j(IGamesCallbacks var1, String var2) throws RemoteException;

    public void k(IGamesCallbacks var1, String var2) throws RemoteException;

    public boolean kA() throws RemoteException;

    public DataHolder kB() throws RemoteException;

    public void kC() throws RemoteException;

    public Intent kD() throws RemoteException;

    public void kE() throws RemoteException;

    public boolean kF() throws RemoteException;

    public String ka() throws RemoteException;

    public String kb() throws RemoteException;

    public Intent ke() throws RemoteException;

    public Intent kf() throws RemoteException;

    public Intent kg() throws RemoteException;

    public Intent kh() throws RemoteException;

    public Intent km() throws RemoteException;

    public Intent kn() throws RemoteException;

    public int ko() throws RemoteException;

    public String kp() throws RemoteException;

    public int kq() throws RemoteException;

    public Intent kr() throws RemoteException;

    public int ks() throws RemoteException;

    public int kt() throws RemoteException;

    public int ku() throws RemoteException;

    public int kv() throws RemoteException;

    public void kx() throws RemoteException;

    public DataHolder kz() throws RemoteException;

    public void l(IGamesCallbacks var1, String var2) throws RemoteException;

    public void m(IGamesCallbacks var1, String var2) throws RemoteException;

    public void n(IGamesCallbacks var1, String var2) throws RemoteException;

    public void n(String var1, int var2) throws RemoteException;

    public void o(IGamesCallbacks var1, String var2) throws RemoteException;

    public void o(String var1, int var2) throws RemoteException;

    public void p(IGamesCallbacks var1, String var2) throws RemoteException;

    public void p(String var1, int var2) throws RemoteException;

    public void q(long var1) throws RemoteException;

    public void q(IGamesCallbacks var1, String var2) throws RemoteException;

    public void r(long var1) throws RemoteException;

    public void r(IGamesCallbacks var1, String var2) throws RemoteException;

    public void r(String var1, int var2) throws RemoteException;

    public void s(long var1) throws RemoteException;

    public void s(IGamesCallbacks var1, String var2) throws RemoteException;

    public void s(String var1, int var2) throws RemoteException;

    public void t(long var1) throws RemoteException;

    public void t(IGamesCallbacks var1, String var2) throws RemoteException;

    public void u(long var1) throws RemoteException;

    public void u(IGamesCallbacks var1, String var2) throws RemoteException;

    public void u(String var1, String var2) throws RemoteException;

    public void v(String var1, String var2) throws RemoteException;

    public static abstract class Stub
    extends Binder
    implements IGamesService {
        public Stub() {
            this.attachInterface(this, "com.google.android.gms.games.internal.IGamesService");
        }

        public static IGamesService aB(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesService");
            if (iInterface != null && iInterface instanceof IGamesService) {
                return (IGamesService)iInterface;
            }
            return new Proxy(iBinder);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public boolean onTransact(int n, Parcel object, Parcel parcel, int n2) throws RemoteException {
            String[] arrstring = null;
            Object object2 = null;
            String[] arrstring2 = null;
            Object object3 = null;
            boolean bl = false;
            boolean bl2 = false;
            boolean bl3 = false;
            boolean bl4 = false;
            boolean bl5 = false;
            boolean bl6 = false;
            int n3 = 0;
            boolean bl7 = false;
            boolean bl8 = false;
            boolean bl9 = false;
            boolean bl10 = false;
            boolean bl11 = false;
            boolean bl12 = false;
            boolean bl13 = false;
            boolean bl14 = false;
            boolean bl15 = false;
            boolean bl16 = false;
            boolean bl17 = false;
            boolean bl18 = false;
            boolean bl19 = false;
            boolean bl20 = false;
            boolean bl21 = false;
            boolean bl22 = false;
            boolean bl23 = false;
            boolean bl24 = false;
            int n4 = 0;
            boolean bl25 = false;
            boolean bl26 = false;
            boolean bl27 = false;
            boolean bl28 = false;
            boolean bl29 = false;
            boolean bl30 = false;
            boolean bl31 = false;
            boolean bl32 = false;
            boolean bl33 = false;
            boolean bl34 = false;
            switch (n) {
                default: {
                    return super.onTransact(n, (Parcel)object, parcel, n2);
                }
                case 1598968902: {
                    parcel.writeString("com.google.android.gms.games.internal.IGamesService");
                    return true;
                }
                case 5001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.q(object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 5002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kp();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.fC();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 5005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IBinder)object3, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.kx();
                    parcel.writeNoException();
                    return true;
                }
                case 5007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.ka();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5064: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.bE(object.readString());
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5065: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.u(object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5012: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kb();
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5013: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kz();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 5014: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5015: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    if (object.readInt() != 0) {
                        bl34 = true;
                    }
                    this.a((IGamesCallbacks)object3, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 5016: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 5017: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5018: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5019: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    n2 = object.readInt();
                    n3 = object.readInt();
                    bl = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, (String)arrstring, n, n2, n3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5020: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    n2 = object.readInt();
                    n3 = object.readInt();
                    bl = object.readInt() != 0;
                    this.b((IGamesCallbacks)object3, (String)arrstring, n, n2, n3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5021: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    arrstring = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    object3 = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)arrstring, (Bundle)object3, object.readInt(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5022: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5023: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)object3, (String)arrstring, (IBinder)object2, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5024: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.b((IGamesCallbacks)object3, (String)arrstring, (IBinder)object2, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5025: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    object2 = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)object3, (String)arrstring, n, (IBinder)object2, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5026: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.d(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5027: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.e(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5028: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.p(object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5029: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.o(object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5058: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 5059: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.r(object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 5030: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    arrstring = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    object2 = object.readStrongBinder();
                    n = object.readInt();
                    arrstring2 = object.createStringArray();
                    if (object.readInt() != 0) {
                        object3 = Bundle.CREATOR.createFromParcel((Parcel)object);
                    }
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)arrstring, (IBinder)object2, n, arrstring2, (Bundle)object3, bl, object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 5031: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readStrongBinder();
                    object2 = object.readString();
                    bl = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, (IBinder)arrstring, (String)object2, bl, object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 5032: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5033: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.createByteArray(), object.readString(), object.readString());
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 5034: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.b(object.createByteArray(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 5035: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.bF(object.readString());
                    parcel.writeNoException();
                    parcel.writeString((String)object);
                    return true;
                }
                case 5036: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.dC(object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5037: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.d(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5038: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5039: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    n = object.readInt();
                    n2 = object.readInt();
                    n3 = object.readInt();
                    bl = bl2;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, (String)arrstring, (String)object2, n, n2, n3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5040: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    n = object.readInt();
                    n2 = object.readInt();
                    n3 = object.readInt();
                    bl = bl3;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.b((IGamesCallbacks)object3, (String)arrstring, (String)object2, n, n2, n3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5041: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5042: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.e(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5043: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.f(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5044: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    n2 = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, n, n2, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 5045: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 5046: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = bl4;
                    if (object.readInt() != 0) {
                        bl34 = true;
                    }
                    this.b((IGamesCallbacks)object3, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 5047: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.f(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5048: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = bl5;
                    if (object.readInt() != 0) {
                        bl34 = true;
                    }
                    this.c((IGamesCallbacks)object3, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 5049: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.g(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5050: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.bG(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5051: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(object.readString(), object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5052: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.g(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5053: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.h(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 5060: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.bH(object.readString());
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 5054: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    bl = bl6;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, (String)arrstring, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5061: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.i(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5055: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.r(object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 5067: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    bl = this.kA();
                    parcel.writeNoException();
                    n = n3;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 5068: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    bl = bl7;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.N(bl);
                    parcel.writeNoException();
                    return true;
                }
                case 5056: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.h(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5057: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.j(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 5062: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.i(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 5063: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl8;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)object3, bl, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 5066: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.bI(object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 5501: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.b((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 5502: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kB();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 6001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl9;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    bl = bl10;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, (String)arrstring, (String)object2, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = bl11;
                    if (object.readInt() != 0) {
                        bl34 = true;
                    }
                    this.d((IGamesCallbacks)object3, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 6004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = bl12;
                    if (object.readInt() != 0) {
                        bl34 = true;
                    }
                    this.e((IGamesCallbacks)object3, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 6501: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    bl4 = object.readInt() != 0;
                    if (object.readInt() != 0) {
                        bl13 = true;
                    }
                    this.a((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34, bl4, bl13);
                    parcel.writeNoException();
                    return true;
                }
                case 6502: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    bl = bl14;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.b((IGamesCallbacks)object3, (String)arrstring, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6503: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl15;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.b((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6504: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    bl = bl16;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.c((IGamesCallbacks)object3, (String)arrstring, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6505: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    bl = bl17;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.d((IGamesCallbacks)object3, (String)arrstring, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6506: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    bl = bl18;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.b((IGamesCallbacks)object3, (String)arrstring, (String)object2, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 6507: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = object.readInt() != 0 ? Uri.CREATOR.createFromParcel((Parcel)object) : null;
                    object = this.h((Uri)object);
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 7001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.k(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 7002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 7003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    object2 = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.b((IGamesCallbacks)object3, (String)arrstring, n, (IBinder)object2, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 8001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString(), object.readInt(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 8002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.bJ(object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.createIntArray());
                    parcel.writeNoException();
                    return true;
                }
                case 8004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    n = object.readInt();
                    n2 = object.readInt();
                    arrstring = object.createStringArray();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)object3, n, n2, arrstring, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 8005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.l(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.m(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.createByteArray(), object.readString(), (ParticipantResult[])object.createTypedArray(ParticipantResult.CREATOR));
                    parcel.writeNoException();
                    return true;
                }
                case 8008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.createByteArray(), (ParticipantResult[])object.createTypedArray(ParticipantResult.CREATOR));
                    parcel.writeNoException();
                    return true;
                }
                case 8009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.n(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8010: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.o(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8011: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8012: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 8013: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.s(object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 8014: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.p(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8024: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.kq();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 8025: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.v(object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8015: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.d(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8016: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.e(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8017: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.createIntArray());
                    parcel.writeNoException();
                    return true;
                }
                case 8026: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(object.readString(), object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 8018: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8019: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8020: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8021: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 8022: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.kC();
                    parcel.writeNoException();
                    return true;
                }
                case 8023: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = bl19;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, (String)arrstring, n, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 8027: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl20;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.c((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 9001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.c((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 9002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.q(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 9003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.ke();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.bx(object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kf();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kg();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kh();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = object.readInt();
                    n2 = object.readInt();
                    bl = object.readInt() != 0;
                    object = this.a(n, n2, bl);
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = object.readInt();
                    n2 = object.readInt();
                    bl = object.readInt() != 0;
                    object = this.b(n, n2, bl);
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9010: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.km();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9011: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = object.readInt() != 0 ? RoomEntity.CREATOR.createFromParcel((Parcel)object) : null;
                    object = this.a((RoomEntity)object3, object.readInt());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9012: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kn();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9013: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kD();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9031: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    arrstring = object.createTypedArray(ParticipantEntity.CREATOR);
                    object2 = object.readString();
                    arrstring2 = object.readString();
                    object3 = object.readInt() != 0 ? Uri.CREATOR.createFromParcel((Parcel)object) : null;
                    object = object.readInt() != 0 ? Uri.CREATOR.createFromParcel((Parcel)object) : null;
                    object = this.a((ParticipantEntity[])arrstring, (String)object2, (String)arrstring2, (Uri)object3, (Uri)object);
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 9019: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.ko();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 9020: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.d((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 9028: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, (String)arrstring, (String)object2, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 9030: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.bK(object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 10001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 10002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.t(object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 10003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 10004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 10005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.createStringArray(), object.readInt(), object.createByteArray(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 10007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 10008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString(), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 10009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readInt(), object.readInt(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10010: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString(), object.readInt(), object.readInt(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10011: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10012: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.a(object.readInt(), object.createByteArray(), object.readInt(), object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 10013: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.ks();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 10023: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.kt();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 10015: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.kr();
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 10022: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = arrstring;
                    if (object.readInt() != 0) {
                        object3 = GameRequestCluster.CREATOR.ck((Parcel)object);
                    }
                    object = this.a((GameRequestCluster)object3, object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 10014: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.s(object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10016: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 10017: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = bl21;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.b((IGamesCallbacks)object3, (String)arrstring, n, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 10021: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = object2;
                    if (object.readInt() != 0) {
                        object3 = ZInvitationCluster.CREATOR.ci((Parcel)object);
                    }
                    object = this.a((ZInvitationCluster)object3, object.readString(), object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 10018: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readInt(), object.createIntArray());
                    parcel.writeNoException();
                    return true;
                }
                case 10019: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.a(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readInt(), object.createIntArray());
                    parcel.writeNoException();
                    return true;
                }
                case 10020: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 11001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.j(IGamesCallbacks.Stub.aA(object.readStrongBinder()));
                    parcel.writeNoException();
                    return true;
                }
                case 11002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.kE();
                    parcel.writeNoException();
                    return true;
                }
                case 12001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = object.readString();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    object = this.a((String)object3, bl, bl34, object.readInt());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 12002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl22;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.d((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    bl = bl23;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.c((IGamesCallbacks)object3, (String)arrstring, (String)object2, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12006: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    bl = bl24;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.e((IGamesCallbacks)object3, (String)arrstring, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12007: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    arrstring = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    object2 = object.readString();
                    object3 = object.readInt() != 0 ? SnapshotMetadataChange.CREATOR.createFromParcel((Parcel)object) : null;
                    object = object.readInt() != 0 ? Contents.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)arrstring, (String)object2, (SnapshotMetadataChange)object3, (Contents)object);
                    parcel.writeNoException();
                    return true;
                }
                case 12019: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = object.readInt() != 0 ? Contents.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((Contents)object);
                    parcel.writeNoException();
                    return true;
                }
                case 12020: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.r(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12033: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    arrstring = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    object2 = object.readString();
                    arrstring2 = object.readString();
                    object3 = object.readInt() != 0 ? SnapshotMetadataChange.CREATOR.createFromParcel((Parcel)object) : null;
                    object = object.readInt() != 0 ? Contents.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((IGamesCallbacks)arrstring, (String)object2, (String)arrstring2, (SnapshotMetadataChange)object3, (Contents)object);
                    parcel.writeNoException();
                    return true;
                }
                case 12035: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.ku();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 12036: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    n = this.kv();
                    parcel.writeNoException();
                    parcel.writeInt(n);
                    return true;
                }
                case 12005: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.s(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12023: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.b(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 12024: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.c(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 12021: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.e((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 12022: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.f((IGamesCallbacks)object3, (String)arrstring, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 12025: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    bl = this.kF();
                    parcel.writeNoException();
                    n = n4;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    return true;
                }
                case 12026: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    bl = bl25;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.O(bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12027: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.t(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12032: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl26;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.e((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12016: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl27;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.f((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12031: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl28;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, bl, object.createStringArray());
                    parcel.writeNoException();
                    return true;
                }
                case 12017: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.n(object.readString(), object.readInt());
                    parcel.writeNoException();
                    return true;
                }
                case 12008: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.u(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12009: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.f(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readString(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12010: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = (String[])object.createIntArray();
                    n = object.readInt();
                    bl = bl29;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, (int[])arrstring, n, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12029: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.createStringArray();
                    bl = bl30;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.a((IGamesCallbacks)object3, arrstring, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12015: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    arrstring2 = (String[])object.createIntArray();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, (String)arrstring, (String)object2, (int[])arrstring2, n, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12028: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    arrstring2 = object.createStringArray();
                    bl = object.readInt() != 0;
                    this.a((IGamesCallbacks)object3, (String)arrstring, (String)object2, arrstring2, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 12011: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.d(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 12013: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.d(IGamesCallbacks.Stub.aA(object.readStrongBinder()), object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12012: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.u(object.readLong());
                    parcel.writeNoException();
                    return true;
                }
                case 12014: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    this.d(object.readLong(), object.readString());
                    parcel.writeNoException();
                    return true;
                }
                case 12030: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.b(object.createIntArray());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 12034: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object = this.bC(object.readString());
                    parcel.writeNoException();
                    if (object != null) {
                        parcel.writeInt(1);
                        object.writeToParcel(parcel, 1);
                        return true;
                    }
                    parcel.writeInt(0);
                    return true;
                }
                case 12018: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    arrstring = object.readString();
                    object2 = object.readString();
                    n = object.readInt();
                    bl = object.readInt() != 0;
                    bl34 = object.readInt() != 0;
                    this.b((IGamesCallbacks)object3, (String)arrstring, (String)object2, n, bl, bl34);
                    parcel.writeNoException();
                    return true;
                }
                case 13001: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    bl = bl31;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.P(bl);
                    parcel.writeNoException();
                    return true;
                }
                case 13002: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = object.readString();
                    arrstring = object.readStrongBinder();
                    object = object.readInt() != 0 ? Bundle.CREATOR.createFromParcel((Parcel)object) : null;
                    this.a((String)object3, (IBinder)arrstring, (Bundle)object);
                    parcel.writeNoException();
                    return true;
                }
                case 13003: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl32;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.g((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 13004: {
                    object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
                    object3 = IGamesCallbacks.Stub.aA(object.readStrongBinder());
                    bl = bl33;
                    if (object.readInt() != 0) {
                        bl = true;
                    }
                    this.h((IGamesCallbacks)object3, bl);
                    parcel.writeNoException();
                    return true;
                }
                case 13005: 
            }
            object.enforceInterface("com.google.android.gms.games.internal.IGamesService");
            object3 = arrstring2;
            if (object.readInt() != 0) {
                object3 = AchievementEntity.CREATOR.createFromParcel((Parcel)object);
            }
            object = this.a((AchievementEntity)object3);
            parcel.writeNoException();
            if (object != null) {
                parcel.writeInt(1);
                object.writeToParcel(parcel, 1);
                return true;
            }
            parcel.writeInt(0);
            return true;
        }

        private static class Proxy
        implements IGamesService {
            private IBinder lb;

            Proxy(IBinder iBinder) {
                this.lb = iBinder;
            }

            @Override
            public void N(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(5068, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            @Override
            public void O(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(12026, parcel2, parcel, 0);
                    parcel.readException();
                    return;
                }
                finally {
                    parcel.recycle();
                    parcel2.recycle();
                }
            }

            @Override
            public void P(boolean bl) throws RemoteException {
                Parcel parcel;
                int n;
                Parcel parcel2;
                block4 : {
                    n = 0;
                    parcel2 = Parcel.obtain();
                    parcel = Parcel.obtain();
                    parcel2.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (!bl) break block4;
                    n = 1;
                }
                try {
                    parcel2.writeInt(n);
                    this.lb.transact(13001, parcel2, parcel, 0);
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
            public int a(IGamesCallbacks object, byte[] arrby, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeByteArray(arrby);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(5033, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    parcel2.recycle();
                    parcel.recycle();
                    return n;
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
            public Intent a(int n, int n2, boolean bl) throws RemoteException {
                int n3 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    n = n3;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(9008, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent a(int n, byte[] object, int n2, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeInt(n);
                    parcel.writeByteArray((byte[])object);
                    parcel.writeInt(n2);
                    parcel.writeString(string);
                    this.lb.transact(10012, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return object;
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
            public Intent a(AchievementEntity parcelable) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (parcelable != null) {
                        parcel.writeInt(1);
                        parcelable.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13005, parcel, parcel2, 0);
                    parcel2.readException();
                    parcelable = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return parcelable;
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
            public Intent a(ZInvitationCluster parcelable, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (parcelable != null) {
                        parcel.writeInt(1);
                        parcelable.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(10021, parcel, parcel2, 0);
                    parcel2.readException();
                    parcelable = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return parcelable;
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
            public Intent a(GameRequestCluster parcelable, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (parcelable != null) {
                        parcel.writeInt(1);
                        parcelable.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeString(string);
                    this.lb.transact(10022, parcel, parcel2, 0);
                    parcel2.readException();
                    parcelable = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return parcelable;
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
            public Intent a(RoomEntity parcelable, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (parcelable != null) {
                        parcel.writeInt(1);
                        parcelable.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeInt(n);
                    this.lb.transact(9011, parcel, parcel2, 0);
                    parcel2.readException();
                    parcelable = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return parcelable;
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
            public Intent a(String object, boolean bl, boolean bl2, int n) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString((String)object);
                    int n3 = bl ? 1 : 0;
                    parcel.writeInt(n3);
                    n3 = bl2 ? n2 : 0;
                    parcel.writeInt(n3);
                    parcel.writeInt(n);
                    this.lb.transact(12001, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return object;
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
            public Intent a(ParticipantEntity[] object, String string, String string2, Uri uri, Uri uri2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeTypedArray((Parcelable[])object, 0);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    if (uri != null) {
                        parcel.writeInt(1);
                        uri.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (uri2 != null) {
                        parcel.writeInt(1);
                        uri2.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(9031, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void a(long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    this.lb.transact(8019, parcel, parcel2, 0);
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
            public void a(IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
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
            public void a(Contents contents) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (contents != null) {
                        parcel.writeInt(1);
                        contents.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12019, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5002, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    this.lb.transact(10016, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int n, int n2, int n3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    this.lb.transact(10009, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int n, int n2, boolean bl, boolean bl2) throws RemoteException {
                int n3 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n3 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(5044, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int n, int n2, String[] arrstring, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeStringArray(arrstring);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(8004, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(5015, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int n, int[] arrn) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    parcel.writeIntArray(arrn);
                    this.lb.transact(10018, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    this.lb.transact(5058, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    this.lb.transact(8018, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, Bundle bundle, int n, int n2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    this.lb.transact(5021, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, IBinder iBinder, int n, String[] arrstring, Bundle bundle, boolean bl, long l) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeStrongBinder(iBinder);
                    parcel.writeInt(n);
                    parcel.writeStringArray(arrstring);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                }
                catch (Throwable var1_2) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var1_2;
                }
                n = bl ? n2 : 0;
                parcel.writeInt(n);
                parcel.writeLong(l);
                this.lb.transact(5030, parcel, parcel2, 0);
                parcel2.readException();
                parcel2.recycle();
                parcel.recycle();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(IGamesCallbacks object, IBinder iBinder, String string, boolean bl, long l) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeStrongBinder(iBinder);
                    parcel.writeString(string);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    parcel.writeLong(l);
                    this.lb.transact(5031, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5014, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(10011, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n, int n2, int n3, boolean bl) throws RemoteException {
                int n4 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    n = n4;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(5019, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5025, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n, boolean bl) throws RemoteException {
                int n2 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = n2;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(8023, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(5045, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2, boolean bl3, boolean bl4) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl3 ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl4 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(6501, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int n, int[] arrn) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeIntArray(arrn);
                    this.lb.transact(10019, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeLong(l);
                    this.lb.transact(5016, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, long l, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeLong(l);
                    parcel.writeString(string2);
                    this.lb.transact(7002, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5023, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, SnapshotMetadataChange snapshotMetadataChange, Contents contents) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    if (snapshotMetadataChange != null) {
                        parcel.writeInt(1);
                        snapshotMetadataChange.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (contents != null) {
                        parcel.writeInt(1);
                        contents.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12007, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(5038, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, int n, int n2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    this.lb.transact(8001, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, int n, int n2, int n3) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    this.lb.transact(10010, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, int n, int n2, int n3, boolean bl) throws RemoteException {
                int n4 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    n = n4;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(5039, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(9028, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, SnapshotMetadataChange snapshotMetadataChange, Contents contents) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    if (snapshotMetadataChange != null) {
                        parcel.writeInt(1);
                        snapshotMetadataChange.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    if (contents != null) {
                        parcel.writeInt(1);
                        contents.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(12033, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6002, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, int[] arrn, int n, boolean bl) throws RemoteException {
                int n2 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeIntArray(arrn);
                    parcel.writeInt(n);
                    n = n2;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12015, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(10008, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String string2, String[] arrstring, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeStringArray(arrstring);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12028, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(5054, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, byte[] arrby, String string2, ParticipantResult[] arrparticipantResult) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeByteArray(arrby);
                    parcel.writeString(string2);
                    parcel.writeTypedArray((Parcelable[])arrparticipantResult, 0);
                    this.lb.transact(8007, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, byte[] arrby, ParticipantResult[] arrparticipantResult) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeByteArray(arrby);
                    parcel.writeTypedArray((Parcelable[])arrparticipantResult, 0);
                    this.lb.transact(8008, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, int[] arrn) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeIntArray(arrn);
                    this.lb.transact(8017, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String string, String[] arrstring, int n, byte[] arrby, int n2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    parcel.writeInt(n);
                    parcel.writeByteArray(arrby);
                    parcel.writeInt(n2);
                    this.lb.transact(10005, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6001, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, boolean bl, Bundle bundle) throws RemoteException {
                int n = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (!bl) {
                        n = 0;
                    }
                    parcel.writeInt(n);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5063, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, boolean bl, String[] arrstring) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(12031, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int[] arrn) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeIntArray(arrn);
                    this.lb.transact(8003, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, int[] arrn, int n, boolean bl) throws RemoteException {
                int n2 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeIntArray(arrn);
                    parcel.writeInt(n);
                    n = n2;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12010, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(10006, parcel, parcel2, 0);
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
            public void a(IGamesCallbacks object, String[] arrstring, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeStringArray(arrstring);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12029, parcel, parcel2, 0);
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
            public void a(String string, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(13002, parcel, parcel2, 0);
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
            public int b(byte[] arrby, String string, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeByteArray(arrby);
                    parcel.writeString(string);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(5034, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
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
            public Intent b(int n, int n2, boolean bl) throws RemoteException {
                int n3 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    n = n3;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(9009, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent b(int[] object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeIntArray((int[])object);
                    this.lb.transact(12030, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void b(long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    this.lb.transact(8021, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5017, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(5046, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    this.lb.transact(8012, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    this.lb.transact(8020, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5018, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(12023, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, int n, int n2, int n3, boolean bl) throws RemoteException {
                int n4 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    n = n4;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(5020, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, int n, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(7003, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, int n, boolean bl) throws RemoteException {
                int n2 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = n2;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(10017, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(5501, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, IBinder iBinder, Bundle bundle) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcel.writeInt(1);
                        bundle.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(5024, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(5041, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, String string2, int n, int n2, int n3, boolean bl) throws RemoteException {
                int n4 = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    parcel.writeInt(n2);
                    parcel.writeInt(n3);
                    n = n4;
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(5040, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, String string2, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(12018, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, String string2, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6506, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String string, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6502, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6503, parcel, parcel2, 0);
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
            public void b(IGamesCallbacks object, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(10007, parcel, parcel2, 0);
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

            @Override
            public void b(String string, String string2, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    this.lb.transact(5051, parcel, parcel2, 0);
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
            public Intent bC(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString((String)object);
                    this.lb.transact(12034, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String bE(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    this.lb.transact(5064, parcel, parcel2, 0);
                    parcel2.readException();
                    string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String bF(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    this.lb.transact(5035, parcel, parcel2, 0);
                    parcel2.readException();
                    string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void bG(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    this.lb.transact(5050, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int bH(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    this.lb.transact(5060, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
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
            public Uri bI(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString((String)object);
                    this.lb.transact(5066, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void bJ(String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
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
            public ParcelFileDescriptor bK(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString((String)object);
                    this.lb.transact(9030, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel2) : null;
                    return object;
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
            public Intent bx(String object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString((String)object);
                    this.lb.transact(9004, parcel, parcel2, 0);
                    parcel2.readException();
                    object = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return object;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void c(long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    parcel.writeString(string);
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
            public void c(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5022, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(5048, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    this.lb.transact(10001, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    this.lb.transact(10003, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5032, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(12024, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(9001, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(8011, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String string, String string2, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12003, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String string, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6504, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(8027, parcel, parcel2, 0);
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
            public void c(IGamesCallbacks object, String[] arrstring) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeStringArray(arrstring);
                    this.lb.transact(10020, parcel, parcel2, 0);
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

            @Override
            public void c(String string, String string2, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    parcel.writeInt(n);
                    this.lb.transact(8026, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void d(long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    parcel.writeString(string);
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
            public void d(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5026, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(6003, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    this.lb.transact(12011, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, long l, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeLong(l);
                    parcel.writeString(string);
                    this.lb.transact(12013, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5037, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(9020, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(8015, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, String string, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(6505, parcel, parcel2, 0);
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
            public void d(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12002, parcel, parcel2, 0);
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

            @Override
            public void dC(int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
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

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void e(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5027, parcel, parcel2, 0);
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
            public void e(IGamesCallbacks object, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(6004, parcel, parcel2, 0);
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
            public void e(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5042, parcel, parcel2, 0);
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
            public void e(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(12021, parcel, parcel2, 0);
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
            public void e(IGamesCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(8016, parcel, parcel2, 0);
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
            public void e(IGamesCallbacks object, String string, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12006, parcel, parcel2, 0);
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
            public void e(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12032, parcel, parcel2, 0);
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
            public void f(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5047, parcel, parcel2, 0);
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
            public void f(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5043, parcel, parcel2, 0);
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
            public void f(IGamesCallbacks object, String string, int n, boolean bl, boolean bl2) throws RemoteException {
                int n2 = 1;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    n = bl ? 1 : 0;
                    parcel.writeInt(n);
                    n = bl2 ? n2 : 0;
                    parcel.writeInt(n);
                    this.lb.transact(12022, parcel, parcel2, 0);
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
            public void f(IGamesCallbacks object, String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(12009, parcel, parcel2, 0);
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
            public void f(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(12016, parcel, parcel2, 0);
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
            public Bundle fC() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5004, parcel, parcel2, 0);
                    parcel2.readException();
                    Bundle bundle = parcel2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel2) : null;
                    return bundle;
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
            public void g(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5049, parcel, parcel2, 0);
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
            public void g(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5052, parcel, parcel2, 0);
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
            public void g(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(13003, parcel, parcel2, 0);
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
            public ParcelFileDescriptor h(Uri parcelable) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    if (parcelable != null) {
                        parcel.writeInt(1);
                        parcelable.writeToParcel(parcel, 0);
                    } else {
                        parcel.writeInt(0);
                    }
                    this.lb.transact(6507, parcel, parcel2, 0);
                    parcel2.readException();
                    parcelable = parcel2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcel2) : null;
                    return parcelable;
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
            public RoomEntity h(IGamesCallbacks object, String string) throws RemoteException {
                Object var3_4 = null;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5053, parcel, parcel2, 0);
                    parcel2.readException();
                    object = var3_4;
                    if (parcel2.readInt() != 0) {
                        object = RoomEntity.CREATOR.createFromParcel(parcel2);
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return object;
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
            public void h(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5056, parcel, parcel2, 0);
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
            public void h(IGamesCallbacks object, boolean bl) throws RemoteException {
                int n = 0;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    if (bl) {
                        n = 1;
                    }
                    parcel.writeInt(n);
                    this.lb.transact(13004, parcel, parcel2, 0);
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
            public void i(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(5062, parcel, parcel2, 0);
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
            public void i(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5061, parcel, parcel2, 0);
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
            public void j(IGamesCallbacks object) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    this.lb.transact(11001, parcel, parcel2, 0);
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
            public void j(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(5057, parcel, parcel2, 0);
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
            public void k(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(7001, parcel, parcel2, 0);
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

            @Override
            public boolean kA() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5067, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public DataHolder kB() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5502, parcel, parcel2, 0);
                    parcel2.readException();
                    DataHolder dataHolder = parcel2.readInt() != 0 ? DataHolder.CREATOR.z(parcel2) : null;
                    return dataHolder;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void kC() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(8022, parcel, parcel2, 0);
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
            public Intent kD() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9013, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void kE() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(11002, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public boolean kF() throws RemoteException {
                boolean bl = false;
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(12025, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    if (n != 0) {
                        bl = true;
                    }
                    parcel2.recycle();
                    parcel.recycle();
                    return bl;
                }
                catch (Throwable var5_5) {
                    parcel2.recycle();
                    parcel.recycle();
                    throw var5_5;
                }
            }

            @Override
            public String ka() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5007, parcel, parcel2, 0);
                    parcel2.readException();
                    String string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String kb() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5012, parcel, parcel2, 0);
                    parcel2.readException();
                    String string = parcel2.readString();
                    return string;
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
            public Intent ke() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9003, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent kf() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9005, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent kg() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9006, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent kh() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9007, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent km() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9010, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
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
            public Intent kn() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9012, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int ko() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(9019, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public String kp() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5003, parcel, parcel2, 0);
                    parcel2.readException();
                    String string = parcel2.readString();
                    return string;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int kq() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(8024, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
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
            public Intent kr() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(10015, parcel, parcel2, 0);
                    parcel2.readException();
                    Intent intent = parcel2.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel2) : null;
                    return intent;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int ks() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(10013, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int kt() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(10023, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int ku() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(12035, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public int kv() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(12036, parcel, parcel2, 0);
                    parcel2.readException();
                    int n = parcel2.readInt();
                    return n;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void kx() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
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
            public DataHolder kz() throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    this.lb.transact(5013, parcel, parcel2, 0);
                    parcel2.readException();
                    DataHolder dataHolder = parcel2.readInt() != 0 ? DataHolder.CREATOR.z(parcel2) : null;
                    return dataHolder;
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
            public void l(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(8005, parcel, parcel2, 0);
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
            public void m(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(8006, parcel, parcel2, 0);
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
            public void n(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(8009, parcel, parcel2, 0);
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

            @Override
            public void n(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
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
            public void o(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(8010, parcel, parcel2, 0);
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

            @Override
            public void o(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(5029, parcel, parcel2, 0);
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
            public void p(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(8014, parcel, parcel2, 0);
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

            @Override
            public void p(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(5028, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void q(long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
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
            public void q(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(9002, parcel, parcel2, 0);
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

            @Override
            public void r(long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    this.lb.transact(5059, parcel, parcel2, 0);
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
            public void r(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(12020, parcel, parcel2, 0);
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

            @Override
            public void r(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(5055, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void s(long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    this.lb.transact(8013, parcel, parcel2, 0);
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
            public void s(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(12005, parcel, parcel2, 0);
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

            @Override
            public void s(String string, int n) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeInt(n);
                    this.lb.transact(10014, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void t(long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
                    this.lb.transact(10002, parcel, parcel2, 0);
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
            public void t(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(12027, parcel, parcel2, 0);
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

            @Override
            public void u(long l) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeLong(l);
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
            public void u(IGamesCallbacks object, String string) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    object = object != null ? object.asBinder() : null;
                    parcel.writeStrongBinder((IBinder)object);
                    parcel.writeString(string);
                    this.lb.transact(12008, parcel, parcel2, 0);
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

            @Override
            public void u(String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(5065, parcel, parcel2, 0);
                    parcel2.readException();
                    return;
                }
                finally {
                    parcel2.recycle();
                    parcel.recycle();
                }
            }

            @Override
            public void v(String string, String string2) throws RemoteException {
                Parcel parcel = Parcel.obtain();
                Parcel parcel2 = Parcel.obtain();
                try {
                    parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
                    parcel.writeString(string);
                    parcel.writeString(string2);
                    this.lb.transact(8025, parcel, parcel2, 0);
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

