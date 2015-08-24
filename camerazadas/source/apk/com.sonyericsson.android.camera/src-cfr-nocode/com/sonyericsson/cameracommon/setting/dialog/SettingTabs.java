/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingTabs
extends LinearLayout {
    private static final String TAG;
    private OnTabSelectedListener mListener;
    private TabView mTabLeft;
    private TabView mTabMiddle;
    private TabView mTabRight;

    static;

    public SettingTabs(Context var1, AttributeSet var2);

    static /* synthetic */ OnTabSelectedListener access$100(SettingTabs var0);

    private void clearSelected();

    public Tab getSelected();

    @Override
    protected void onFinishInflate();

    public void setOnSelectedListener(OnTabSelectedListener var1);

    public void setSelected(Tab var1);

    public /* varargs */ void setTabs(Tab ... var1);

    public static interface OnTabSelectedListener {
        public void onTabSelected(Tab var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Tab
    extends Enum<Tab> {
        private static final /* synthetic */ Tab[] $VALUES;
        public static final /* enum */ Tab Common;
        public static final /* enum */ Tab Photo;
        public static final /* enum */ Tab Video;
        private final int descriptionId;
        private final int iconId;

        static;

        private Tab(int var3, int var4);

        static /* synthetic */ int access$000(Tab var0);

        public static Tab valueOf(String var0);

        public static Tab[] values();

        public int getIconId();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TabView
    implements View.OnClickListener {
        final FrameLayout mFrame;
        final ImageView mIcon;
        Tab mTab;
        final /* synthetic */ SettingTabs this$0;

        TabView(SettingTabs var1, int var2);

        public void clear();

        @Override
        public void onClick(View var1);

        public void set(Tab var1);
    }

}

