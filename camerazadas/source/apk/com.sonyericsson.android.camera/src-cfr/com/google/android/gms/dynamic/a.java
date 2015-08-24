/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class a<T extends LifecycleDelegate> {
    private T RX;
    private Bundle RY;
    private LinkedList<a> RZ;
    private final f<T> Sa;

    public a() {
        this.Sa = new f<T>(){

            @Override
            public void a(T object) {
                a.this.RX = object;
                object = a.this.RZ.iterator();
                while (object.hasNext()) {
                    ((a)object.next()).b(a.this.RX);
                }
                a.this.RZ.clear();
                a.this.RY = null;
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(Bundle bundle, a a) {
        if (this.RX != null) {
            a.b((LifecycleDelegate)this.RX);
            return;
        }
        if (this.RZ == null) {
            this.RZ = new LinkedList();
        }
        this.RZ.add(a);
        if (bundle != null) {
            if (this.RY == null) {
                this.RY = (Bundle)bundle.clone();
            } else {
                this.RY.putAll(bundle);
            }
        }
        this.a(this.Sa);
    }

    public static void b(FrameLayout view) {
        final Context context = view.getContext();
        final int n = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String string = GooglePlayServicesUtil.d(context, n);
        String string2 = GooglePlayServicesUtil.e(context, n);
        LinearLayout linearLayout = new LinearLayout(view.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        view.addView(linearLayout);
        view = new TextView(view.getContext());
        view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        view.setText((CharSequence)string);
        linearLayout.addView(view);
        if (string2 != null) {
            view = new Button(context);
            view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            view.setText((CharSequence)string2);
            linearLayout.addView(view);
            view.setOnClickListener(new View.OnClickListener(){

                @Override
                public void onClick(View view) {
                    context.startActivity(GooglePlayServicesUtil.c(context, n));
                }
            });
        }
    }

    private void cv(int n) {
        while (!(this.RZ.isEmpty() || this.RZ.getLast().getState() < n)) {
            this.RZ.removeLast();
        }
    }

    protected void a(FrameLayout frameLayout) {
        a.b(frameLayout);
    }

    protected abstract void a(f<T> var1);

    public T it() {
        return this.RX;
    }

    public void onCreate(final Bundle bundle) {
        this.a(bundle, new a(){

            @Override
            public void b(LifecycleDelegate lifecycleDelegate) {
                a.this.RX.onCreate(bundle);
            }

            @Override
            public int getState() {
                return 1;
            }
        });
    }

    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        this.a(bundle, new a(){

            @Override
            public void b(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(a.this.RX.onCreateView(layoutInflater, viewGroup, bundle));
            }

            @Override
            public int getState() {
                return 2;
            }
        });
        if (this.RX == null) {
            this.a(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.RX != null) {
            this.RX.onDestroy();
            return;
        }
        this.cv(1);
    }

    public void onDestroyView() {
        if (this.RX != null) {
            this.RX.onDestroyView();
            return;
        }
        this.cv(2);
    }

    public void onInflate(final Activity activity, final Bundle bundle, final Bundle bundle2) {
        this.a(bundle2, new a(){

            @Override
            public void b(LifecycleDelegate lifecycleDelegate) {
                a.this.RX.onInflate(activity, bundle, bundle2);
            }

            @Override
            public int getState() {
                return 0;
            }
        });
    }

    public void onLowMemory() {
        if (this.RX != null) {
            this.RX.onLowMemory();
        }
    }

    public void onPause() {
        if (this.RX != null) {
            this.RX.onPause();
            return;
        }
        this.cv(5);
    }

    public void onResume() {
        this.a(null, new a(){

            @Override
            public void b(LifecycleDelegate lifecycleDelegate) {
                a.this.RX.onResume();
            }

            @Override
            public int getState() {
                return 5;
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onSaveInstanceState(Bundle bundle) {
        if (this.RX != null) {
            this.RX.onSaveInstanceState(bundle);
            return;
        } else {
            if (this.RY == null) return;
            {
                bundle.putAll(this.RY);
                return;
            }
        }
    }

    public void onStart() {
        this.a(null, new a(){

            @Override
            public void b(LifecycleDelegate lifecycleDelegate) {
                a.this.RX.onStart();
            }

            @Override
            public int getState() {
                return 4;
            }
        });
    }

    public void onStop() {
        if (this.RX != null) {
            this.RX.onStop();
            return;
        }
        this.cv(4);
    }

    private static interface a {
        public void b(LifecycleDelegate var1);

        public int getState();
    }

}

