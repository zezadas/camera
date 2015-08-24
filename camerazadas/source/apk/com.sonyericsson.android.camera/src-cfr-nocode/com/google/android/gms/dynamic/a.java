/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.f;
import java.util.LinkedList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class a<T extends LifecycleDelegate> {
    private T RX;
    private Bundle RY;
    private LinkedList<a> RZ;
    private final f<T> Sa;

    public a();

    static /* synthetic */ Bundle a(a var0, Bundle var1);

    static /* synthetic */ LifecycleDelegate a(a var0, LifecycleDelegate var1);

    static /* synthetic */ LinkedList a(a var0);

    private void a(Bundle var1, a var2);

    static /* synthetic */ LifecycleDelegate b(a var0);

    public static void b(FrameLayout var0);

    private void cv(int var1);

    protected void a(FrameLayout var1);

    protected abstract void a(f<T> var1);

    public T it();

    public void onCreate(Bundle var1);

    public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3);

    public void onDestroy();

    public void onDestroyView();

    public void onInflate(Activity var1, Bundle var2, Bundle var3);

    public void onLowMemory();

    public void onPause();

    public void onResume();

    public void onSaveInstanceState(Bundle var1);

    public void onStart();

    public void onStop();

    private static interface a {
        public void b(LifecycleDelegate var1);

        public int getState();
    }

}

