/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import java.util.Iterator;
import java.util.List;

public class SettingIconList
extends SettingDialogItem {
    private static final String TAG = SettingIconList.class.getSimpleName();
    private final ViewHolder mHolder;

    public SettingIconList(Context object, SettingItem settingItem) {
        super(settingItem);
        object = (LayoutInflater)object.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = (ViewGroup)object.inflate(R.layout.setting_item_icon_list, null);
        this.mHolder.mList = (LinearLayout)this.mHolder.mContainer.findViewById(R.id.list);
    }

    private ImageView createIcon(final SettingItem settingItem) {
        Context context = this.mHolder.mContainer.getContext();
        ImageView imageView = new ImageView(context);
        imageView.setTag(settingItem);
        imageView.setSelected(settingItem.isSelected());
        imageView.setImageResource(settingItem.getIconId());
        imageView.setBackgroundResource(R.drawable.setting_item_icon_selector);
        imageView.setContentDescription((CharSequence)settingItem.getContentDescription(context.getResources()));
        imageView.setClickable(true);
        imageView.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View view) {
                if (SettingIconList.this.getView().isShown()) {
                    SettingIconList.this.updateSelected(settingItem);
                }
            }
        });
        return imageView;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateSelected(SettingItem settingItem) {
        for (SettingItem settingItem2 : this.getItem().getChildren()) {
            if (settingItem2 == settingItem) continue;
            settingItem2.setSelected(false);
        }
        settingItem.select();
        for (int i = 0; i < this.mHolder.mList.getChildCount(); ++i) {
            Object object = this.mHolder.mList.getChildAt(i);
            if (object.getTag() == settingItem) {
                object.setSelected(true);
                continue;
            }
            object.setSelected(false);
        }
    }

    @Override
    public View getView() {
        return this.mHolder.mContainer;
    }

    @Override
    public void setUiOrientation(int n) {
        float f = RotationUtil.getAngle(n);
        for (n = 0; n < this.mHolder.mList.getChildCount(); ++n) {
            this.mHolder.mList.getChildAt(n).setRotation(f);
        }
    }

    @Override
    public void update(ViewGroup object, SettingAdapter.ItemLayoutParams object2) {
        int n = this.mHolder.mList.getLayoutParams().height / Math.max(1, this.getItem().getChildren().size());
        this.mHolder.mList.removeAllViews();
        object = this.getItem().getChildren().iterator();
        while (object.hasNext()) {
            object2 = this.createIcon((SettingItem)object.next());
            this.mHolder.mList.addView((View)object2);
            object2 = (LinearLayout.LayoutParams)object2.getLayoutParams();
            object2.width = n;
            object2.height = 0;
            object2.weight = 1.0f;
        }
    }

    private static class ViewHolder {
        ViewGroup mContainer;
        LinearLayout mList;

        private ViewHolder() {
        }
    }

}

