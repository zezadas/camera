/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.dynamic;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;

public final class b
extends c.a {
    private Fragment Sj;

    private b(Fragment fragment) {
        this.Sj = fragment;
    }

    public static b a(Fragment fragment) {
        if (fragment != null) {
            return new b(fragment);
        }
        return null;
    }

    @Override
    public void d(d object) {
        object = (View)e.f((d)object);
        this.Sj.registerForContextMenu((View)object);
    }

    @Override
    public void e(d object) {
        object = (View)e.f((d)object);
        this.Sj.unregisterForContextMenu((View)object);
    }

    @Override
    public Bundle getArguments() {
        return this.Sj.getArguments();
    }

    @Override
    public int getId() {
        return this.Sj.getId();
    }

    @Override
    public boolean getRetainInstance() {
        return this.Sj.getRetainInstance();
    }

    @Override
    public String getTag() {
        return this.Sj.getTag();
    }

    @Override
    public int getTargetRequestCode() {
        return this.Sj.getTargetRequestCode();
    }

    @Override
    public boolean getUserVisibleHint() {
        return this.Sj.getUserVisibleHint();
    }

    @Override
    public d getView() {
        return e.k(this.Sj.getView());
    }

    @Override
    public boolean isAdded() {
        return this.Sj.isAdded();
    }

    @Override
    public boolean isDetached() {
        return this.Sj.isDetached();
    }

    @Override
    public boolean isHidden() {
        return this.Sj.isHidden();
    }

    @Override
    public boolean isInLayout() {
        return this.Sj.isInLayout();
    }

    @Override
    public boolean isRemoving() {
        return this.Sj.isRemoving();
    }

    @Override
    public boolean isResumed() {
        return this.Sj.isResumed();
    }

    @Override
    public boolean isVisible() {
        return this.Sj.isVisible();
    }

    @Override
    public d iu() {
        return e.k(this.Sj.getActivity());
    }

    @Override
    public c iv() {
        return b.a(this.Sj.getParentFragment());
    }

    @Override
    public d iw() {
        return e.k(this.Sj.getResources());
    }

    @Override
    public c ix() {
        return b.a(this.Sj.getTargetFragment());
    }

    @Override
    public void setHasOptionsMenu(boolean bl) {
        this.Sj.setHasOptionsMenu(bl);
    }

    @Override
    public void setMenuVisibility(boolean bl) {
        this.Sj.setMenuVisibility(bl);
    }

    @Override
    public void setRetainInstance(boolean bl) {
        this.Sj.setRetainInstance(bl);
    }

    @Override
    public void setUserVisibleHint(boolean bl) {
        this.Sj.setUserVisibleHint(bl);
    }

    @Override
    public void startActivity(Intent intent) {
        this.Sj.startActivity(intent);
    }

    @Override
    public void startActivityForResult(Intent intent, int n) {
        this.Sj.startActivityForResult(intent, n);
    }
}

