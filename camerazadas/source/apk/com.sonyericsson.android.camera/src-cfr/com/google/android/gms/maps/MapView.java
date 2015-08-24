/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapView
extends FrameLayout {
    private GoogleMap aiR;
    private final b aiU;

    public MapView(Context context) {
        super(context);
        this.aiU = new b(this, context, null);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aiU = new b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
    }

    public MapView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.aiU = new b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.aiU = new b(this, context, googleMapOptions);
    }

    public final GoogleMap getMap() {
        if (this.aiR != null) {
            return this.aiR;
        }
        this.aiU.mA();
        if (this.aiU.it() == null) {
            return null;
        }
        try {
            this.aiR = new GoogleMap(((a)this.aiU.it()).mB().getMap());
            return this.aiR;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public final void onCreate(Bundle object) {
        this.aiU.onCreate((Bundle)object);
        if (this.aiU.it() == null) {
            object = this.aiU;
            b.b(this);
        }
    }

    public final void onDestroy() {
        this.aiU.onDestroy();
    }

    public final void onLowMemory() {
        this.aiU.onLowMemory();
    }

    public final void onPause() {
        this.aiU.onPause();
    }

    public final void onResume() {
        this.aiU.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.aiU.onSaveInstanceState(bundle);
    }

    static class a
    implements LifecycleDelegate {
        private final ViewGroup aiV;
        private final IMapViewDelegate aiW;
        private View aiX;

        public a(ViewGroup viewGroup, IMapViewDelegate iMapViewDelegate) {
            this.aiW = o.i(iMapViewDelegate);
            this.aiV = o.i(viewGroup);
        }

        public IMapViewDelegate mB() {
            return this.aiW;
        }

        @Override
        public void onCreate(Bundle bundle) {
            try {
                this.aiW.onCreate(bundle);
                this.aiX = (View)e.f(this.aiW.getView());
                this.aiV.removeAllViews();
                this.aiV.addView(this.aiX);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        @Override
        public void onDestroy() {
            try {
                this.aiW.onDestroy();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        @Override
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        @Override
        public void onLowMemory() {
            try {
                this.aiW.onLowMemory();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onPause() {
            try {
                this.aiW.onPause();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onResume() {
            try {
                this.aiW.onResume();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onSaveInstanceState(Bundle bundle) {
            try {
                this.aiW.onSaveInstanceState(bundle);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public void onStart() {
        }

        @Override
        public void onStop() {
        }
    }

    static class b
    extends com.google.android.gms.dynamic.a<a> {
        protected f<a> aiT;
        private final ViewGroup aiY;
        private final GoogleMapOptions aiZ;
        private final Context mContext;

        b(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.aiY = viewGroup;
            this.mContext = context;
            this.aiZ = googleMapOptions;
        }

        @Override
        protected void a(f<a> f) {
            this.aiT = f;
            this.mA();
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public void mA() {
            if (this.aiT == null || this.it() != null) return;
            try {
                IMapViewDelegate iMapViewDelegate = u.S(this.mContext).a(e.k(this.mContext), this.aiZ);
                this.aiT.a(new a(this.aiY, iMapViewDelegate));
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
            catch (GooglePlayServicesNotAvailableException var1_3) {
                return;
            }
        }
    }

}

