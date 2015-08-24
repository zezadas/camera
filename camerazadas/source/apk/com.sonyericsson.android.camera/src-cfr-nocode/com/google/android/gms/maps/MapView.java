/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.internal.IMapViewDelegate;

/*
 * Exception performing whole class analysis.
 */
public class MapView
extends FrameLayout {
    private GoogleMap aiR;
    private final b aiU;

    public MapView(Context var1);

    public MapView(Context var1, AttributeSet var2);

    public MapView(Context var1, AttributeSet var2, int var3);

    public MapView(Context var1, GoogleMapOptions var2);

    public final GoogleMap getMap();

    public final void onCreate(Bundle var1);

    public final void onDestroy();

    public final void onLowMemory();

    public final void onPause();

    public final void onResume();

    public final void onSaveInstanceState(Bundle var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class a
    implements LifecycleDelegate {
        private final ViewGroup aiV;
        private final IMapViewDelegate aiW;
        private View aiX;

        public a(ViewGroup var1, IMapViewDelegate var2);

        public IMapViewDelegate mB();

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
        protected f<a> aiT;
        private final ViewGroup aiY;
        private final GoogleMapOptions aiZ;
        private final Context mContext;

        b(ViewGroup var1, Context var2, GoogleMapOptions var3);

        @Override
        protected void a(f<a> var1);

        public void mA();
    }

}

