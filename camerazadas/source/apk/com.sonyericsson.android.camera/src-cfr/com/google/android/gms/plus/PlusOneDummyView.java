/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;

public class PlusOneDummyView
extends FrameLayout {
    public static final String TAG = "PlusOneDummyView";

    public PlusOneDummyView(Context object, int n) {
        super((Context)object);
        object = new Button((Context)object);
        object.setEnabled(false);
        object.setBackgroundDrawable(this.na().getDrawable(n));
        Point point = this.eQ(n);
        this.addView((View)object, new FrameLayout.LayoutParams(point.x, point.y, 17));
    }

    /*
     * Enabled aggressive block sorting
     */
    private Point eQ(int n) {
        int n2 = 24;
        int n3 = 20;
        Point point = new Point();
        switch (n) {
            default: {
                n = 38;
                n3 = 24;
                break;
            }
            case 1: {
                n = 32;
                break;
            }
            case 0: {
                n3 = 14;
                n = n2;
                break;
            }
            case 2: {
                n = 50;
            }
        }
        DisplayMetrics displayMetrics = this.getResources().getDisplayMetrics();
        float f = TypedValue.applyDimension(1, n, displayMetrics);
        float f2 = TypedValue.applyDimension(1, n3, displayMetrics);
        point.x = (int)((double)f + 0.5);
        point.y = (int)((double)f2 + 0.5);
        return point;
    }

    private d na() {
        d d;
        d d2 = d = new b(this.getContext());
        if (!d.isValid()) {
            d2 = new c(this.getContext());
        }
        d = d2;
        if (!d2.isValid()) {
            d = new a(this.getContext());
        }
        return d;
    }

    private static class a
    implements d {
        private Context mContext;

        private a(Context context) {
            this.mContext = context;
        }

        @Override
        public Drawable getDrawable(int n) {
            return this.mContext.getResources().getDrawable(17301508);
        }

        @Override
        public boolean isValid() {
            return true;
        }
    }

    private static class b
    implements d {
        private Context mContext;

        private b(Context context) {
            this.mContext = context;
        }

        /*
         * Exception decompiling
         */
        @Override
        public Drawable getDrawable(int var1_1) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }

        @Override
        public boolean isValid() {
            try {
                this.mContext.createPackageContext("com.google.android.gms", 4).getResources();
                return true;
            }
            catch (PackageManager.NameNotFoundException var1_1) {
                return false;
            }
        }
    }

    private static class c
    implements d {
        private Context mContext;

        private c(Context context) {
            this.mContext = context;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public Drawable getDrawable(int n) {
            String string;
            switch (n) {
                default: {
                    string = "ic_plusone_standard_off_client";
                    break;
                }
                case 0: {
                    string = "ic_plusone_small_off_client";
                    break;
                }
                case 1: {
                    string = "ic_plusone_medium_off_client";
                    break;
                }
                case 2: {
                    string = "ic_plusone_tall_off_client";
                }
            }
            n = this.mContext.getResources().getIdentifier(string, "drawable", this.mContext.getPackageName());
            return this.mContext.getResources().getDrawable(n);
        }

        @Override
        public boolean isValid() {
            int n = this.mContext.getResources().getIdentifier("ic_plusone_small_off_client", "drawable", this.mContext.getPackageName());
            int n2 = this.mContext.getResources().getIdentifier("ic_plusone_medium_off_client", "drawable", this.mContext.getPackageName());
            int n3 = this.mContext.getResources().getIdentifier("ic_plusone_tall_off_client", "drawable", this.mContext.getPackageName());
            int n4 = this.mContext.getResources().getIdentifier("ic_plusone_standard_off_client", "drawable", this.mContext.getPackageName());
            if (n != 0 && n2 != 0 && n3 != 0 && n4 != 0) {
                return true;
            }
            return false;
        }
    }

    private static interface d {
        public Drawable getDrawable(int var1);

        public boolean isValid();
    }

}

