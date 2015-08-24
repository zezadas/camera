/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.android.camera.view.FocusRectangleWithStateMachine;
import com.sonyericsson.android.camera.view.FocusRectanglesManager;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MultiRectangles
extends FocusRectangleWithStateMachine {
    private static final String TAG = MultiRectangles.class.getSimpleName();
    private final List<TaggedRectangle> mRectangles = new ArrayList<TaggedRectangle>();

    public MultiRectangles(ViewGroup viewGroup) {
        super(viewGroup);
    }

    @Override
    protected void deselect() {
    }

    @Override
    protected void finish() {
        this.mRectangles.clear();
    }

    @Override
    protected void hide() {
        Iterator<TaggedRectangle> iterator = this.mRectangles.iterator();
        while (iterator.hasNext()) {
            iterator.next().setVisibility(4);
        }
    }

    public void init(LayoutInflater layoutInflater, int n) {
        int n2 = n - this.mRectangles.size();
        if (n2 > 0) {
            for (n = 0; n < n2; ++n) {
                TaggedRectangle taggedRectangle = (TaggedRectangle)layoutInflater.inflate(2130903040, null);
                int n3 = this.mParentView.getContext().getResources().getDimensionPixelSize(2131492888);
                int n4 = this.mParentView.getContext().getResources().getDimensionPixelSize(2131492887);
                this.mParentView.addView(taggedRectangle);
                taggedRectangle.prepare(1);
                taggedRectangle.setRectImageSize(n4, n3);
                this.mRectangles.add(taggedRectangle);
            }
        }
    }

    @Override
    protected void init(LayoutInflater layoutInflater, View[] arrview) {
    }

    @Override
    protected void onAfFail(AutoFocusListener.Result object) {
        object = this.mRectangles.iterator();
        while (object.hasNext()) {
            this.startFadeoutAnimation((TaggedRectangle)object.next());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onAfSuccess(AutoFocusListener.Result result) {
        for (int i = 0; i < this.mRectangles.size(); ++i) {
            boolean bl = result != null && result.isFocused(i);
            if (bl) {
                this.mRectangles.get(i).changeRectangleResource(CommonResources.SingleIndicator.SUCCESS);
                continue;
            }
            this.mRectangles.get(i).changeRectangleResource(CommonResources.SingleIndicator.NORMAL);
        }
    }

    @Override
    protected void onRecording(AutoFocusListener.Result result) {
    }

    @Override
    protected void resetColor() {
        Iterator<TaggedRectangle> iterator = this.mRectangles.iterator();
        while (iterator.hasNext()) {
            iterator.next().changeRectangleResource(CommonResources.SingleIndicator.NORMAL);
        }
    }

    @Override
    protected void select(Rect rect, boolean bl) {
    }

    @Override
    protected void setPosition(Rect[] arrrect) {
        for (int i = 0; i < arrrect.length; ++i) {
            if (i >= this.mRectangles.size()) continue;
            this.mRectangles.get(i).setRectCenter(arrrect[i].centerX(), arrrect[i].centerY());
        }
    }

    @Override
    protected void setSurfaceSize(int n, int n2, int n3, boolean bl) {
        Iterator<TaggedRectangle> iterator = this.mRectangles.iterator();
        while (iterator.hasNext()) {
            iterator.next().setSize(n, n2, bl);
        }
    }

    @Override
    protected void show() {
        if (this.mState != FocusRectanglesManager.RectangleState.INACTIVE) {
            Iterator<TaggedRectangle> iterator = this.mRectangles.iterator();
            while (iterator.hasNext()) {
                iterator.next().setVisibility(0);
            }
        }
    }
}

