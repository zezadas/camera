/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.DrawableStateChanger;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public class SettingValueButton
extends SettingDialogItem {
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    public SettingValueButton(Context object, SettingItem settingItem) {
        super(settingItem);
        this.mOnClickListener = new View.OnClickListener(){

            @Override
            public void onClick(View view) {
                if (SettingValueButton.this.getView().isShown() && SettingValueButton.this.getItem().isSelectable()) {
                    SettingValueButton.this.select(SettingValueButton.this.getItem());
                }
            }
        };
        object = (LayoutInflater)object.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = object.inflate(R.layout.setting_item_value_button, null);
        this.mHolder.mBackground = this.mHolder.mContainer.findViewById(R.id.background);
        this.mHolder.mDivider = this.mHolder.mContainer.findViewById(R.id.setting_divider);
        this.mHolder.mText = (TextView)this.mHolder.mContainer.findViewById(R.id.title);
    }

    @Override
    public View getView() {
        return this.mHolder.mContainer;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void update(ViewGroup viewGroup, SettingAdapter.ItemLayoutParams itemLayoutParams) {
        Resources resources = this.mHolder.mContainer.getContext().getResources();
        this.mHolder.mText.setText((CharSequence)this.getItem().getText(resources));
        if (this.getItem().isSelectable()) {
            this.mHolder.mText.setTextColor(viewGroup.getResources().getColor(R.color.default_text_col));
        } else {
            this.mHolder.mText.setTextColor(viewGroup.getResources().getColor(R.color.grayout_text_col));
        }
        this.mHolder.mBackground.setClickable(true);
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setSelected(this.getItem().isSelected());
        this.mHolder.mBackground.setContentDescription((CharSequence)this.getItem().getContentDescription(resources));
        this.mHolder.mBackground.getLayoutParams().width = -1;
        this.mHolder.mBackground.getLayoutParams().height = itemLayoutParams.height;
        if (CommonUtility.isMirroringRequired(this.mHolder.mContainer.getContext())) {
            this.mHolder.mText.setGravity(21);
        } else {
            this.mHolder.mText.setGravity(19);
        }
        this.changeDrawableState(itemLayoutParams).background(this.mHolder.mBackground).dividerHorizontal(this.mHolder.mDivider).apply();
    }

    private static class ViewHolder {
        View mBackground;
        View mContainer;
        View mDivider;
        TextView mText;

        private ViewHolder() {
        }
    }

}

