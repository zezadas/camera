/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import java.util.Iterator;
import java.util.List;

public class SettingEvSlider
extends SettingDialogItem {
    private static final String TAG = SettingEvSlider.class.getSimpleName();
    private final int mBottomPadding;
    private final ViewHolder mHolder;
    private int mSelectedPosition;
    private final int mTopPadding;

    public SettingEvSlider(Context context, SettingItem object) {
        super((SettingItem)object);
        this.mTopPadding = context.getResources().getDimensionPixelSize(R.dimen.ev_slider_memory_top_padding);
        this.mBottomPadding = context.getResources().getDimensionPixelSize(R.dimen.ev_slider_memory_bottom_padding);
        object = (LayoutInflater)context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = new FrameLayout(context){

            @Override
            protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
                super.onLayout(bl, n, n2, n3, n4);
                SettingEvSlider.this.updateIndicator(SettingEvSlider.this.getSelectedItemDisplyPosition());
            }
        };
        this.mHolder.mContainer.addView(object.inflate(R.layout.setting_item_ev_slider, null));
        this.mHolder.mBackground = this.mHolder.mContainer.findViewById(R.id.background);
        this.mHolder.mIndicator = (ImageView)this.mHolder.mContainer.findViewById(R.id.indicator);
        this.mHolder.mScaleNumber = (ImageView)this.mHolder.mContainer.findViewById(R.id.scale_number);
        this.mHolder.mBackground.setOnTouchListener(new View.OnTouchListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0: {
                        view.setPressed(true);
                        SettingEvSlider.this.updateIndicator(motionEvent.getY(), motionEvent.getAction());
                        return true;
                    }
                    case 2: {
                        if (!view.isPressed()) return false;
                        SettingEvSlider.this.updateIndicator(motionEvent.getY(), motionEvent.getAction());
                    }
                    default: {
                        return false;
                    }
                    case 1: 
                }
                if (view.isPressed()) {
                    SettingEvSlider.this.updateIndicator(motionEvent.getY(), motionEvent.getAction());
                }
                view.setPressed(false);
                return false;
            }
        });
    }

    private float getMemoryStepSize() {
        return (float)(this.mHolder.mBackground.getMeasuredHeight() - this.mTopPadding - this.mBottomPadding) / (float)(this.getItem().getChildren().size() - 1);
    }

    private int getSelectedItemDisplyPosition() {
        for (int i = 0; i < this.getValueItemCount(); ++i) {
            if (!this.getValueItem(i).isSelected()) continue;
            this.mSelectedPosition = i;
            return this.mSelectedPosition;
        }
        return 0;
    }

    private SettingItem getValueItem(int n) {
        return this.getItem().getChildren().get(this.getValueItemCount() - n - 1);
    }

    private int getValueItemCount() {
        return this.getItem().getChildren().size();
    }

    private void updateIndicator(float f, int n) {
        this.updateIndicator(Math.min(Math.max((int)((f - (float)this.mTopPadding) / this.getMemoryStepSize()), 0), this.getValueItemCount() - 1));
    }

    private void updateIndicator(int n) {
        float f = this.getMemoryStepSize();
        float f2 = n;
        float f3 = this.mTopPadding;
        float f4 = (float)this.mHolder.mIndicator.getMeasuredHeight() / 2.0f;
        this.mHolder.mIndicator.setY(f * f2 + f3 - f4);
        if (n != this.mSelectedPosition) {
            Iterator<SettingItem> iterator = this.getItem().getChildren().iterator();
            while (iterator.hasNext()) {
                iterator.next().setSelected(false);
            }
            this.getValueItem(n).select();
        }
        this.mSelectedPosition = n;
    }

    @Override
    public View getView() {
        return this.mHolder.mContainer;
    }

    @Override
    public void setUiOrientation(int n) {
        if (n == 2) {
            this.mHolder.mBackground.setBackgroundResource(R.drawable.cam_ev_level_dialog_scale_land_icn);
            this.mHolder.mScaleNumber.setImageResource(R.drawable.cam_ev_level_dialog_scale_number_land_icn);
            this.mHolder.mIndicator.setImageResource(R.drawable.setting_ev_indicator_selector_land);
            return;
        }
        this.mHolder.mBackground.setBackgroundResource(R.drawable.cam_ev_level_dialog_scale_port_icn);
        this.mHolder.mScaleNumber.setImageResource(R.drawable.cam_ev_level_dialog_scale_number_port_icn);
        this.mHolder.mIndicator.setImageResource(R.drawable.setting_ev_indicator_selector_port);
    }

    @Override
    public void update(ViewGroup viewGroup, SettingAdapter.ItemLayoutParams itemLayoutParams) {
        this.updateIndicator(this.getSelectedItemDisplyPosition());
    }

    private static class ViewHolder {
        View mBackground;
        ViewGroup mContainer;
        ImageView mIndicator;
        ImageView mScaleNumber;

        private ViewHolder() {
        }
    }

}

