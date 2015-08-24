/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
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
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.MapsInitializer;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.t;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class SupportMapFragment
extends Fragment {
    private GoogleMap aiR;
    private final b aju;

    public SupportMapFragment() {
        this.aju = new b(this);
    }

    public static SupportMapFragment newInstance() {
        return new SupportMapFragment();
    }

    public static SupportMapFragment newInstance(GoogleMapOptions googleMapOptions) {
        SupportMapFragment supportMapFragment = new SupportMapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("MapOptions", googleMapOptions);
        supportMapFragment.setArguments(bundle);
        return supportMapFragment;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public final GoogleMap getMap() {
        IInterface iInterface;
        block3 : {
            iInterface = this.mz();
            if (iInterface == null) {
                return null;
            }
            try {
                if ((iInterface = iInterface.getMap()) == null) return null;
                if (this.aiR == null) break block3;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
            if (this.aiR.mq().asBinder() == iInterface.asBinder()) return this.aiR;
        }
        this.aiR = new GoogleMap((IGoogleMapDelegate)iInterface);
        return this.aiR;
    }

    protected IMapFragmentDelegate mz() {
        this.aju.mA();
        if (this.aju.it() == null) {
            return null;
        }
        return ((a)this.aju.it()).mz();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.aju.setActivity(activity);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.aju.onCreate(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.aju.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override
    public void onDestroy() {
        this.aju.onDestroy();
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        this.aju.onDestroyView();
        super.onDestroyView();
    }

    @Override
    public void onInflate(Activity activity, AttributeSet object, Bundle bundle) {
        super.onInflate(activity, (AttributeSet)object, bundle);
        this.aju.setActivity(activity);
        object = GoogleMapOptions.createFromAttributes(activity, (AttributeSet)object);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("MapOptions", (Parcelable)object);
        this.aju.onInflate(activity, bundle2, bundle);
    }

    @Override
    public void onLowMemory() {
        this.aju.onLowMemory();
        super.onLowMemory();
    }

    @Override
    public void onPause() {
        this.aju.onPause();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.aju.onResume();
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(SupportMapFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.aju.onSaveInstanceState(bundle);
    }

    @Override
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }

    static class a
    implements LifecycleDelegate {
        private final Fragment Lt;
        private final IMapFragmentDelegate aiS;

        public a(Fragment fragment, IMapFragmentDelegate iMapFragmentDelegate) {
            this.aiS = o.i(iMapFragmentDelegate);
            this.Lt = o.i(fragment);
        }

        public IMapFragmentDelegate mz() {
            return this.aiS;
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
                if ((var1_1 = this.Lt.getArguments()) != null && var1_1.containsKey("MapOptions")) {
                    t.a(var2_3, "MapOptions", var1_1.getParcelable("MapOptions"));
                }
                this.aiS.onCreate(var2_3);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public View onCreateView(LayoutInflater object, ViewGroup viewGroup, Bundle bundle) {
            try {
                object = this.aiS.onCreateView(e.k(object), e.k(viewGroup), bundle);
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
            return (View)e.f((d)object);
        }

        @Override
        public void onDestroy() {
            try {
                this.aiS.onDestroy();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onDestroyView() {
            try {
                this.aiS.onDestroyView();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onInflate(Activity activity, Bundle parcelable, Bundle bundle) {
            parcelable = (GoogleMapOptions)parcelable.getParcelable("MapOptions");
            try {
                this.aiS.onInflate(e.k(activity), (GoogleMapOptions)parcelable, bundle);
                return;
            }
            catch (RemoteException var1_2) {
                throw new RuntimeRemoteException(var1_2);
            }
        }

        @Override
        public void onLowMemory() {
            try {
                this.aiS.onLowMemory();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onPause() {
            try {
                this.aiS.onPause();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onResume() {
            try {
                this.aiS.onResume();
                return;
            }
            catch (RemoteException var1_1) {
                throw new RuntimeRemoteException(var1_1);
            }
        }

        @Override
        public void onSaveInstanceState(Bundle bundle) {
            try {
                this.aiS.onSaveInstanceState(bundle);
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
        private final Fragment Lt;
        protected f<a> aiT;
        private Activity nr;

        b(Fragment fragment) {
            this.Lt = fragment;
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
                IMapFragmentDelegate iMapFragmentDelegate = u.S(this.nr).j(e.k(this.nr));
                this.aiT.a(new a(this.Lt, iMapFragmentDelegate));
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

