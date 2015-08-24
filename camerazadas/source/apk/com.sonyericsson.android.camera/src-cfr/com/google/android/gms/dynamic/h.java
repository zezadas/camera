/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

public final class h
extends c.a {
    private Fragment Lt;

    private h(Fragment fragment) {
        this.Lt = fragment;
    }

    public static h a(Fragment fragment) {
        if (fragment != null) {
            return new h(fragment);
        }
        return null;
    }

    @Override
    public void d(d object) {
        object = (View)e.f((d)object);
        this.Lt.registerForContextMenu((View)object);
    }

    @Override
    public void e(d object) {
        object = (View)e.f((d)object);
        this.Lt.unregisterForContextMenu((View)object);
    }

    @Override
    public Bundle getArguments() {
        return this.Lt.getArguments();
    }

    @Override
    public int getId() {
        return this.Lt.getId();
    }

    @Override
    public boolean getRetainInstance() {
        return this.Lt.getRetainInstance();
    }

    @Override
    public String getTag() {
        return this.Lt.getTag();
    }

    @Override
    public int getTargetRequestCode() {
        return this.Lt.getTargetRequestCode();
    }

    @Override
    public boolean getUserVisibleHint() {
        return this.Lt.getUserVisibleHint();
    }

    @Override
    public d getView() {
        return e.k(this.Lt.getView());
    }

    @Override
    public boolean isAdded() {
        return this.Lt.isAdded();
    }

    @Override
    public boolean isDetached() {
        return this.Lt.isDetached();
    }

    @Override
    public boolean isHidden() {
        return this.Lt.isHidden();
    }

    @Override
    public boolean isInLayout() {
        return this.Lt.isInLayout();
    }

    @Override
    public boolean isRemoving() {
        return this.Lt.isRemoving();
    }

    @Override
    public boolean isResumed() {
        return this.Lt.isResumed();
    }

    @Override
    public boolean isVisible() {
        return this.Lt.isVisible();
    }

    @Override
    public d iu() {
        return e.k(this.Lt.getActivity());
    }

    @Override
    public c iv() {
        return h.a(this.Lt.getParentFragment());
    }

    @Override
    public d iw() {
        return e.k(this.Lt.getResources());
    }

    @Override
    public c ix() {
        return h.a(this.Lt.getTargetFragment());
    }

    @Override
    public void setHasOptionsMenu(boolean bl) {
        this.Lt.setHasOptionsMenu(bl);
    }

    @Override
    public void setMenuVisibility(boolean bl) {
        this.Lt.setMenuVisibility(bl);
    }

    @Override
    public void setRetainInstance(boolean bl) {
        this.Lt.setRetainInstance(bl);
    }

    @Override
    public void setUserVisibleHint(boolean bl) {
        this.Lt.setUserVisibleHint(bl);
    }

    @Override
    public void startActivity(Intent intent) {
        this.Lt.startActivity(intent);
    }

    @Override
    public void startActivityForResult(Intent intent, int n) {
        this.Lt.startActivityForResult(intent, n);
    }
}

