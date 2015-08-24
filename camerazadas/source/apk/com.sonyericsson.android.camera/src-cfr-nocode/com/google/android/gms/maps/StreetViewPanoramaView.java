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
import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;

/*
 * Exception performing whole class analysis.
 */
public class StreetViewPanoramaView
extends FrameLayout {
    private StreetViewPanorama ajh;
    private final a ajq;

    public StreetViewPanoramaView(Context var1);

    public StreetViewPanoramaView(Context var1, AttributeSet var2);

    public StreetViewPanoramaView(Context var1, AttributeSet var2, int var3);

    public StreetViewPanoramaView(Context var1, StreetViewPanoramaOptions var2);

    public final StreetViewPanorama getStreetViewPanorama();

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
    extends com.google.android.gms.dynamic.a<b> {
        protected f<b> aiT;
        private final ViewGroup aiY;
        private final StreetViewPanoramaOptions ajr;
        private final Context mContext;

        a(ViewGroup var1, Context var2, StreetViewPanoramaOptions var3);

        @Override
        protected void a(f<b> var1);

        public void mA();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class b
    implements LifecycleDelegate {
        private final ViewGroup aiV;
        private final IStreetViewPanoramaViewDelegate ajs;
        private View ajt;

        public b(ViewGroup var1, IStreetViewPanoramaViewDelegate var2);

        public IStreetViewPanoramaViewDelegate mH();

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

}

