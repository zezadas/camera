/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MapFragment
extends Fragment {
    private final b aiQ;
    private GoogleMap aiR;

    public MapFragment();

    public static MapFragment newInstance();

    public static MapFragment newInstance(GoogleMapOptions var0);

    public final GoogleMap getMap();

    protected IMapFragmentDelegate mz();

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
        private final Fragment Sj;
        private final IMapFragmentDelegate aiS;

        public a(Fragment var1, IMapFragmentDelegate var2);

        public IMapFragmentDelegate mz();

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
        private final Fragment Sj;
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

