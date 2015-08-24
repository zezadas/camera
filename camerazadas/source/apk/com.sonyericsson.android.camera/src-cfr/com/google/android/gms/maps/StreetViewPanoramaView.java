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
import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaView
extends FrameLayout {
    private StreetViewPanorama ajh;
    private final a ajq;

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.ajq = new a(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ajq = new a(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.ajq = new a(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.ajq = new a(this, context, streetViewPanoramaOptions);
    }

    public final StreetViewPanorama getStreetViewPanorama() {
        if (this.ajh != null) {
            return this.ajh;
        }
        this.ajq.mA();
        if (this.ajq.it() == null) {
            return null;
        }
        try {
            this.ajh = new StreetViewPanorama(((b)this.ajq.it()).mH().getStreetViewPanorama());
            return this.ajh;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public final void onCreate(Bundle object) {
        this.ajq.onCreate((Bundle)object);
        if (this.ajq.it() == null) {
            object = this.ajq;
            a.b(this);
        }
    }

    public final void onDestroy() {
        this.ajq.onDestroy();
    }

    public final void onLowMemory() {
        this.ajq.onLowMemory();
    }

    public final void onPause() {
        this.ajq.onPause();
    }

    public final void onResume() {
        this.ajq.onResume();
    }

    public final void onSaveInstanceState(Bundle bundle) {
        this.ajq.onSaveInstanceState(bundle);
    }

    static class a
    extends com.google.android.gms.dynamic.a<b> {
        protected f<b> aiT;
        private final ViewGroup aiY;
        private final StreetViewPanoramaOptions ajr;
        private final Context mContext;

        a(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.aiY = viewGroup;
            this.mContext = context;
            this.ajr = streetViewPanoramaOptions;
        }

        @Override
        protected void a(f<b> f) {
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
                IStreetViewPanoramaViewDelegate iStreetViewPanoramaViewDelegate = u.S(this.mContext).a(e.k(this.mContext), this.ajr);
                this.aiT.a(new b(this.aiY, iStreetViewPanoramaViewDelegate));
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

    static class b
    implements LifecycleDelegate {
        private final ViewGroup aiV;
        private final IStreetViewPanoramaViewDelegate ajs;
        private View ajt;

        public b(ViewGroup viewGroup, IStreetViewPanoramaViewDelegate iStreetViewPanoramaViewDelegate) {
            this.ajs = o.i(iStreetViewPanoramaViewDelegate);
            this.aiV = o.i(viewGroup);
        }

        public IStreetViewPanoramaViewDelegate mH() {
            return this.ajs;
        }

        @Override
        public void onCreate(Bundle bundle) {
            try {
                this.ajs.onCreate(bundle);
                this.ajt = (View)e.f(this.ajs.getView());
                this.aiV.removeAllViews();
                this.aiV.addView(this.ajt);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override
        public void onDestroy() {
            try {
                this.ajs.onDestroy();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onDestroyView() {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override
        public void onLowMemory() {
            try {
                this.ajs.onLowMemory();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onPause() {
            try {
                this.ajs.onPause();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onResume() {
            try {
                this.ajs.onResume();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onSaveInstanceState(Bundle bundle) {
            try {
                this.ajs.onSaveInstanceState(bundle);
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

}

