/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.dynamic.h;
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
public final class SupportWalletFragment
extends Fragment {
    private final Fragment Lt;
    private b atQ;
    private final h atR;
    private final c atS;
    private a atT;
    private WalletFragmentOptions atU;
    private WalletFragmentInitParams atV;
    private MaskedWalletRequest atW;
    private MaskedWallet atX;
    private Boolean atY;
    private boolean mCreated;

    public SupportWalletFragment();

    static /* synthetic */ Fragment a(SupportWalletFragment var0);

    static /* synthetic */ MaskedWallet a(SupportWalletFragment var0, MaskedWallet var1);

    static /* synthetic */ MaskedWalletRequest a(SupportWalletFragment var0, MaskedWalletRequest var1);

    static /* synthetic */ b a(SupportWalletFragment var0, b var1);

    static /* synthetic */ WalletFragmentInitParams a(SupportWalletFragment var0, WalletFragmentInitParams var1);

    static /* synthetic */ WalletFragmentOptions a(SupportWalletFragment var0, WalletFragmentOptions var1);

    static /* synthetic */ Boolean a(SupportWalletFragment var0, Boolean var1);

    static /* synthetic */ b b(SupportWalletFragment var0);

    static /* synthetic */ boolean c(SupportWalletFragment var0);

    static /* synthetic */ h d(SupportWalletFragment var0);

    static /* synthetic */ WalletFragmentOptions e(SupportWalletFragment var0);

    static /* synthetic */ a f(SupportWalletFragment var0);

    static /* synthetic */ WalletFragmentInitParams g(SupportWalletFragment var0);

    static /* synthetic */ MaskedWalletRequest h(SupportWalletFragment var0);

    static /* synthetic */ MaskedWallet i(SupportWalletFragment var0);

    static /* synthetic */ Boolean j(SupportWalletFragment var0);

    public static SupportWalletFragment newInstance(WalletFragmentOptions var0);

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
        public void onStateChanged(SupportWalletFragment var1, int var2, int var3, Bundle var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class a
    extends os.a {
        private OnStateChangedListener atZ;
        private final SupportWalletFragment aua;

        a(SupportWalletFragment var1);

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
        final /* synthetic */ SupportWalletFragment auc;

        private c(SupportWalletFragment var1);

        /* synthetic */ c(SupportWalletFragment var1,  var2);

        @Override
        protected void a(FrameLayout var1);

        @Override
        protected void a(f<b> var1);

        @Override
        public void onClick(View var1);
    }

}

