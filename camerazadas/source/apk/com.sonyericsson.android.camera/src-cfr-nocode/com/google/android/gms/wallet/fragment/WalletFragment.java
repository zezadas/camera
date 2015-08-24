/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.or;
import com.google.android.gms.internal.os;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.WalletFragmentInitParams;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class WalletFragment
extends Fragment {
    private final Fragment Sj;
    private WalletFragmentOptions atU;
    private WalletFragmentInitParams atV;
    private MaskedWalletRequest atW;
    private MaskedWallet atX;
    private Boolean atY;
    private b aud;
    private final com.google.android.gms.dynamic.b aue;
    private final c auf;
    private a aug;
    private boolean mCreated;

    public WalletFragment();

    static /* synthetic */ Fragment a(WalletFragment var0);

    static /* synthetic */ MaskedWallet a(WalletFragment var0, MaskedWallet var1);

    static /* synthetic */ MaskedWalletRequest a(WalletFragment var0, MaskedWalletRequest var1);

    static /* synthetic */ b a(WalletFragment var0, b var1);

    static /* synthetic */ WalletFragmentInitParams a(WalletFragment var0, WalletFragmentInitParams var1);

    static /* synthetic */ WalletFragmentOptions a(WalletFragment var0, WalletFragmentOptions var1);

    static /* synthetic */ Boolean a(WalletFragment var0, Boolean var1);

    static /* synthetic */ b b(WalletFragment var0);

    static /* synthetic */ boolean c(WalletFragment var0);

    static /* synthetic */ com.google.android.gms.dynamic.b d(WalletFragment var0);

    static /* synthetic */ WalletFragmentOptions e(WalletFragment var0);

    static /* synthetic */ a f(WalletFragment var0);

    static /* synthetic */ WalletFragmentInitParams g(WalletFragment var0);

    static /* synthetic */ MaskedWalletRequest h(WalletFragment var0);

    static /* synthetic */ MaskedWallet i(WalletFragment var0);

    static /* synthetic */ Boolean j(WalletFragment var0);

    public static WalletFragment newInstance(WalletFragmentOptions var0);

    public int getState();

    public void initialize(WalletFragmentInitParams var1);

    @Override
    public void onActivityResult(int var1, int var2, Intent var3);

    @Override
    public void onCreate(Bundle var1);

    @Override
    public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3);

    @Override
    public void onDestroy();

    @Override
    public void onInflate(Activity var1, AttributeSet var2, Bundle var3);

    @Override
    public void onPause();

    @Override
    public void onResume();

    @Override
    public void onSaveInstanceState(Bundle var1);

    @Override
    public void onStart();

    @Override
    public void onStop();

    public void setEnabled(boolean var1);

    public void setOnStateChangedListener(OnStateChangedListener var1);

    public void updateMaskedWallet(MaskedWallet var1);

    public void updateMaskedWalletRequest(MaskedWalletRequest var1);

    public static interface OnStateChangedListener {
        public void onStateChanged(WalletFragment var1, int var2, int var3, Bundle var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class a
    extends os.a {
        private OnStateChangedListener auh;
        private final WalletFragment aui;

        a(WalletFragment var1);

        @Override
        public void a(int var1, int var2, Bundle var3);

        public void a(OnStateChangedListener var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b
    implements LifecycleDelegate {
        private final or aub;

        private b(or var1);

        /* synthetic */ b(or var1,  var2);

        static /* synthetic */ int a(b var0);

        static /* synthetic */ void a(b var0, int var1, int var2, Intent var3);

        static /* synthetic */ void a(b var0, MaskedWallet var1);

        static /* synthetic */ void a(b var0, MaskedWalletRequest var1);

        static /* synthetic */ void a(b var0, WalletFragmentInitParams var1);

        static /* synthetic */ void a(b var0, boolean var1);

        private int getState();

        private void initialize(WalletFragmentInitParams var1);

        private void onActivityResult(int var1, int var2, Intent var3);

        private void setEnabled(boolean var1);

        private void updateMaskedWallet(MaskedWallet var1);

        private void updateMaskedWalletRequest(MaskedWalletRequest var1);

        @Override
        public void onCreate(Bundle var1);

        @Override
        public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3);

        @Override
        public void onDestroy();

        @Override
        public void onDestroyView();

        @Override
        public void onInflate(Activity var1, Bundle var2, Bundle var3);

        @Override
        public void onLowMemory();

        @Override
        public void onPause();

        @Override
        public void onResume();

        @Override
        public void onSaveInstanceState(Bundle var1);

        @Override
        public void onStart();

        @Override
        public void onStop();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class c
    extends com.google.android.gms.dynamic.a<b>
    implements View.OnClickListener {
        final /* synthetic */ WalletFragment auj;

        private c(WalletFragment var1);

        /* synthetic */ c(WalletFragment var1,  var2);

        @Override
        protected void a(FrameLayout var1);

        @Override
        protected void a(f<b> var1);

        @Override
        public void onClick(View var1);
    }

}

