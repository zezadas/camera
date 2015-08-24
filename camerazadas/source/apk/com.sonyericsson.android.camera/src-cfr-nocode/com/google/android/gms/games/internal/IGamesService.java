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
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.achievement.AchievementEntity;
import com.google.android.gms.games.internal.IGamesCallbacks;
import com.google.android.gms.games.internal.multiplayer.ZInvitationCluster;
import com.google.android.gms.games.internal.request.GameRequestCluster;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;

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

    /*
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Stub
    extends Binder
    implements IGamesService {
        public Stub();

        public static IGamesService aB(IBinder var0);

        @Override
        public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException;

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class Proxy
        implements IGamesService {
            private IBinder lb;

            Proxy(IBinder var1);

            @Override
            public void N(boolean var1) throws RemoteException;

            @Override
            public void O(boolean var1) throws RemoteException;

            @Override
            public void P(boolean var1) throws RemoteException;

            @Override
            public int a(IGamesCallbacks var1, byte[] var2, String var3, String var4) throws RemoteException;

            @Override
            public Intent a(int var1, int var2, boolean var3) throws RemoteException;

            @Override
            public Intent a(int var1, byte[] var2, int var3, String var4) throws RemoteException;

            @Override
            public Intent a(AchievementEntity var1) throws RemoteException;

            @Override
            public Intent a(ZInvitationCluster var1, String var2, String var3) throws RemoteException;

            @Override
            public Intent a(GameRequestCluster var1, String var2) throws RemoteException;

            @Override
            public Intent a(RoomEntity var1, int var2) throws RemoteException;

            @Override
            public Intent a(String var1, boolean var2, boolean var3, int var4) throws RemoteException;

            @Override
            public Intent a(ParticipantEntity[] var1, String var2, String var3, Uri var4, Uri var5) throws RemoteException;

            @Override
            public void a(long var1, String var3) throws RemoteException;

            @Override
            public void a(IBinder var1, Bundle var2) throws RemoteException;

            @Override
            public void a(Contents var1) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int var2) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int var2, int var3, int var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int var2, int var3, String[] var4, Bundle var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int var2, int[] var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, long var2) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, Bundle var2, int var3, int var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, IBinder var2, int var3, String[] var4, Bundle var5, boolean var6, long var7) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, IBinder var2, String var3, boolean var4, long var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3, int var4, int var5, boolean var6) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3, IBinder var4, Bundle var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3, boolean var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5, boolean var6, boolean var7) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int var3, int[] var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, long var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, long var3, String var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, IBinder var3, Bundle var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, SnapshotMetadataChange var3, Contents var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, int var4, int var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, int var4, int var5, int var6) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, int var4, int var5, int var6, boolean var7) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, int var4, boolean var5, boolean var6) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, SnapshotMetadataChange var4, Contents var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, boolean var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, int[] var4, int var5, boolean var6) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, String[] var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String var3, String[] var4, boolean var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, byte[] var3, String var4, ParticipantResult[] var5) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, byte[] var3, ParticipantResult[] var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, int[] var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String var2, String[] var3, int var4, byte[] var5, int var6) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, boolean var2, Bundle var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, boolean var2, String[] var3) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int[] var2) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, int[] var2, int var3, boolean var4) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String[] var2) throws RemoteException;

            @Override
            public void a(IGamesCallbacks var1, String[] var2, boolean var3) throws RemoteException;

            @Override
            public void a(String var1, IBinder var2, Bundle var3) throws RemoteException;

            @Override
            public IBinder asBinder();

            @Override
            public int b(byte[] var1, String var2, String[] var3) throws RemoteException;

            @Override
            public Intent b(int var1, int var2, boolean var3) throws RemoteException;

            @Override
            public Intent b(int[] var1) throws RemoteException;

            @Override
            public void b(long var1, String var3) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, long var2) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, int var3) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, int var3, int var4, int var5, boolean var6) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, int var3, IBinder var4, Bundle var5) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, int var3, boolean var4) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, IBinder var3, Bundle var4) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, String var3, int var4, int var5, int var6, boolean var7) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, String var3, int var4, boolean var5, boolean var6) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, String var3, boolean var4) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public void b(IGamesCallbacks var1, String[] var2) throws RemoteException;

            @Override
            public void b(String var1, String var2, int var3) throws RemoteException;

            @Override
            public Intent bC(String var1) throws RemoteException;

            @Override
            public String bE(String var1) throws RemoteException;

            @Override
            public String bF(String var1) throws RemoteException;

            @Override
            public void bG(String var1) throws RemoteException;

            @Override
            public int bH(String var1) throws RemoteException;

            @Override
            public Uri bI(String var1) throws RemoteException;

            @Override
            public void bJ(String var1) throws RemoteException;

            @Override
            public ParcelFileDescriptor bK(String var1) throws RemoteException;

            @Override
            public Intent bx(String var1) throws RemoteException;

            @Override
            public void c(long var1, String var3) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, long var2) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String var2, int var3) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String var2, String var3, boolean var4) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public void c(IGamesCallbacks var1, String[] var2) throws RemoteException;

            @Override
            public void c(String var1, String var2, int var3) throws RemoteException;

            @Override
            public void d(long var1, String var3) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, long var2) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, long var2, String var4) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

            @Override
            public void d(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public void dC(int var1) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1, int var2, boolean var3, boolean var4) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1, String var2, boolean var3) throws RemoteException;

            @Override
            public void e(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public void f(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void f(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void f(IGamesCallbacks var1, String var2, int var3, boolean var4, boolean var5) throws RemoteException;

            @Override
            public void f(IGamesCallbacks var1, String var2, String var3) throws RemoteException;

            @Override
            public void f(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public Bundle fC() throws RemoteException;

            @Override
            public void g(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void g(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void g(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public ParcelFileDescriptor h(Uri var1) throws RemoteException;

            @Override
            public RoomEntity h(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void h(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void h(IGamesCallbacks var1, boolean var2) throws RemoteException;

            @Override
            public void i(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void i(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void j(IGamesCallbacks var1) throws RemoteException;

            @Override
            public void j(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void k(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public boolean kA() throws RemoteException;

            @Override
            public DataHolder kB() throws RemoteException;

            @Override
            public void kC() throws RemoteException;

            @Override
            public Intent kD() throws RemoteException;

            @Override
            public void kE() throws RemoteException;

            @Override
            public boolean kF() throws RemoteException;

            @Override
            public String ka() throws RemoteException;

            @Override
            public String kb() throws RemoteException;

            @Override
            public Intent ke() throws RemoteException;

            @Override
            public Intent kf() throws RemoteException;

            @Override
            public Intent kg() throws RemoteException;

            @Override
            public Intent kh() throws RemoteException;

            @Override
            public Intent km() throws RemoteException;

            @Override
            public Intent kn() throws RemoteException;

            @Override
            public int ko() throws RemoteException;

            @Override
            public String kp() throws RemoteException;

            @Override
            public int kq() throws RemoteException;

            @Override
            public Intent kr() throws RemoteException;

            @Override
            public int ks() throws RemoteException;

            @Override
            public int kt() throws RemoteException;

            @Override
            public int ku() throws RemoteException;

            @Override
            public int kv() throws RemoteException;

            @Override
            public void kx() throws RemoteException;

            @Override
            public DataHolder kz() throws RemoteException;

            @Override
            public void l(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void m(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void n(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void n(String var1, int var2) throws RemoteException;

            @Override
            public void o(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void o(String var1, int var2) throws RemoteException;

            @Override
            public void p(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void p(String var1, int var2) throws RemoteException;

            @Override
            public void q(long var1) throws RemoteException;

            @Override
            public void q(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void r(long var1) throws RemoteException;

            @Override
            public void r(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void r(String var1, int var2) throws RemoteException;

            @Override
            public void s(long var1) throws RemoteException;

            @Override
            public void s(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void s(String var1, int var2) throws RemoteException;

            @Override
            public void t(long var1) throws RemoteException;

            @Override
            public void t(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void u(long var1) throws RemoteException;

            @Override
            public void u(IGamesCallbacks var1, String var2) throws RemoteException;

            @Override
            public void u(String var1, String var2) throws RemoteException;

            @Override
            public void v(String var1, String var2) throws RemoteException;
        }

    }

}

