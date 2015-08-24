/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SupportStreetViewPanoramaFragment
extends Fragment {
    private StreetViewPanorama ajh;
    private final b ajv;

    public SupportStreetViewPanoramaFragment();

    public static SupportStreetViewPanoramaFragment newInstance();

    public static SupportStreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions var0);

    public final StreetViewPanorama getStreetViewPanorama();

    protected IStreetViewPanoramaFragmentDelegate mD();

    @Override
    public void onActivityCreated(Bundle var1);

    @Override
    public void onAttach(Activity var1);

    @Override
    public void onCreate(Bundle var1);

    @Override
    public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3);

    @Override
    public void onDestroy();

    @Override
    public void onDestroyView();

    @Override
    public void onInflate(Activity var1, AttributeSet var2, Bundle var3);

    @Override
    public void onLowMemory();

    @Override
    public void onPause();

    @Override
    public void onResume();

    @Override
    public void onSaveInstanceState(Bundle var1);

    @Override
    public void setArguments(Bundle var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class a
    implements LifecycleDelegate {
        private final Fragment Lt;
        private final IStreetViewPanoramaFragmentDelegate aji;

        public a(Fragment var1, IStreetViewPanoramaFragmentDelegate var2);

        public IStreetViewPanoramaFragmentDelegate mD();

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
    static class b
    extends com.google.android.gms.dynamic.a<a> {
        private final Fragment Lt;
        protected f<a> aiT;
        private Activity nr;

        b(Fragment var1);

        static /* synthetic */ void a(b var0, Activity var1);

        private void setActivity(Activity var1);

        @Override
        protected void a(f<a> var1);

        public void mA();
    }

}

