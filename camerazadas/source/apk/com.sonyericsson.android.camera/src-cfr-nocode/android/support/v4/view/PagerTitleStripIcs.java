/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import android.widget.TextView;
import java.util.Locale;

class PagerTitleStripIcs {
    PagerTitleStripIcs();

    public static void setSingleLineAllCaps(TextView var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SingleLineAllCapsTransform
    extends SingleLineTransformationMethod {
        private static final String TAG = "SingleLineAllCapsTransform";
        private Locale mLocale;

        public SingleLineAllCapsTransform(Context var1);

        @Override
        public CharSequence getTransformation(CharSequence var1, View var2);
    }

}

