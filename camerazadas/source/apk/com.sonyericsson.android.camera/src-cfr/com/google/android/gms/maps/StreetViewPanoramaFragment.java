/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.MapsInitializer;
import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.t;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaFragment
extends Fragment {
    private final b ajg;
    private StreetViewPanorama ajh;

    public StreetViewPanoramaFragment() {
        this.ajg = new b(this);
    }

    public static StreetViewPanoramaFragment newInstance() {
        return new StreetViewPanoramaFragment();
    }

    public static StreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions streetViewPanoramaOptions) {
        StreetViewPanoramaFragment streetViewPanoramaFragment = new StreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetViewPanoramaOptions", streetViewPanoramaOptions);
        streetViewPanoramaFragment.setArguments(bundle);
        return streetViewPanoramaFragment;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public final StreetViewPanorama getStreetViewPanorama() {
        IInterface iInterface;
        block3 : {
            iInterface = this.mD();
            if (iInterface == null) {
                return null;
            }
            try {
                if ((iInterface = iInterface.getStreetViewPanorama()) == null) return null;
                if (this.ajh == null) break block3;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
            if (this.ajh.mC().asBinder() == iInterface.asBinder()) return this.ajh;
        }
        this.ajh = new StreetViewPanorama((IStreetViewPanoramaDelegate)iInterface);
        return this.ajh;
    }

    protected IStreetViewPanoramaFragmentDelegate mD() {
        this.ajg.mA();
        if (this.ajg.it() == null) {
            return null;
        }
        return ((a)this.ajg.it()).mD();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.ajg.setActivity(activity);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ajg.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.ajg.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public void onDestroy() {
        this.ajg.onDestroy();
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.ajg.onDestroyView();
        super.onDestroyView();
    }

    @Override
    public void onInflate(Activity activity, AttributeSet object, Bundle bundle) {
        super.onInflate(activity, (AttributeSet)object, bundle);
        this.ajg.setActivity(activity);
        object = new Bundle();
        this.ajg.onInflate(activity, (Bundle)object, bundle);
    }

    @Override
    public void onLowMemory() {
        this.ajg.onLowMemory();
        super.onLowMemory();
    }

    @Override
    public void onPause() {
        this.ajg.onPause();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.ajg.onResume();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.ajg.onSaveInstanceState(bundle);
    }

    @Override
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }

    static class a
    implements LifecycleDelegate {
        private final Fragment Sj;
        private final IStreetViewPanoramaFragmentDelegate aji;

        public a(Fragment fragment, IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate) {
            this.aji = o.i(iStreetViewPanoramaFragmentDelegate);
            this.Sj = o.i(fragment);
        }

        public IStreetViewPanoramaFragmentDelegate mD() {
            return this.aji;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void onCreate(Bundle var1_1) {
            var2_3 = var1_1;
            if (var1_1 != null) ** GOTO lbl5
            try {
                var2_3 = new Bundle();
lbl5: // 2 sources:
                if ((var1_1 = this.Sj.getArguments()) != null && var1_1.containsKey("StreetViewPanoramaOptions")) {
                    t.a(var2_3, "StreetViewPanoramaOptions", var1_1.getParcelable("StreetViewPanoramaOptions"));
                }
                this.aji.onCreate(var2_3);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public View onCreateView(LayoutInflater object, ViewGroup viewGroup, Bundle bundle) {
            try {
                object = this.aji.onCreateView(e.k(object), e.k(viewGroup), bundle);
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
            return (View)e.f((d)object);
        }

        @Override
        public void onDestroy() {
            try {
                this.aji.onDestroy();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onDestroyView() {
            try {
                this.aji.onDestroyView();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                this.aji.onInflate(e.k(activity), null, bundle2);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public void onLowMemory() {
            try {
                this.aji.onLowMemory();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onPause() {
            try {
                this.aji.onPause();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onResume() {
            try {
                this.aji.onResume();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onSaveInstanceState(Bundle bundle) {
            try {
                this.aji.onSaveInstanceState(bundle);
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
        private final Fragment Sj;
        protected f<a> aiT;
        private Activity nr;

        b(Fragment fragment) {
            this.Sj = fragment;
        }

        private void setActivity(Activity activity) {
            this.nr = activity;
            this.mA();
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
            if (this.nr == null || this.aiT == null || this.it() != null) return;
            try {
                MapsInitializer.initialize(this.nr);
                IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate = u.S(this.nr).k(e.k(this.nr));
                this.aiT.a(new a(this.Sj, iStreetViewPanoramaFragmentDelegate));
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

