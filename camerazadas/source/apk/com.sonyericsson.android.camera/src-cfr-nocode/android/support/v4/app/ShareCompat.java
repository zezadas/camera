/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    private static ShareCompatImpl IMPL;

    static;

    public ShareCompat();

    static /* synthetic */ ShareCompatImpl access$000();

    public static void configureMenuItem(Menu var0, int var1, IntentBuilder var2);

    public static void configureMenuItem(MenuItem var0, IntentBuilder var1);

    public static ComponentName getCallingActivity(Activity var0);

    public static String getCallingPackage(Activity var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class IntentBuilder {
        private Activity mActivity;
        private ArrayList<String> mBccAddresses;
        private ArrayList<String> mCcAddresses;
        private CharSequence mChooserTitle;
        private Intent mIntent;
        private ArrayList<Uri> mStreams;
        private ArrayList<String> mToAddresses;

        private IntentBuilder(Activity var1);

        private void combineArrayExtra(String var1, ArrayList<String> var2);

        private void combineArrayExtra(String var1, String[] var2);

        public static IntentBuilder from(Activity var0);

        public IntentBuilder addEmailBcc(String var1);

        public IntentBuilder addEmailBcc(String[] var1);

        public IntentBuilder addEmailCc(String var1);

        public IntentBuilder addEmailCc(String[] var1);

        public IntentBuilder addEmailTo(String var1);

        public IntentBuilder addEmailTo(String[] var1);

        public IntentBuilder addStream(Uri var1);

        public Intent createChooserIntent();

        Activity getActivity();

        public Intent getIntent();

        public IntentBuilder setChooserTitle(int var1);

        public IntentBuilder setChooserTitle(CharSequence var1);

        public IntentBuilder setEmailBcc(String[] var1);

        public IntentBuilder setEmailCc(String[] var1);

        public IntentBuilder setEmailTo(String[] var1);

        public IntentBuilder setHtmlText(String var1);

        public IntentBuilder setStream(Uri var1);

        public IntentBuilder setSubject(String var1);

        public IntentBuilder setText(CharSequence var1);

        public IntentBuilder setType(String var1);

        public void startChooser();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class IntentReader {
        private static final String TAG = "IntentReader";
        private Activity mActivity;
        private ComponentName mCallingActivity;
        private String mCallingPackage;
        private Intent mIntent;
        private ArrayList<Uri> mStreams;

        private IntentReader(Activity var1);

        public static IntentReader from(Activity var0);

        public ComponentName getCallingActivity();

        public Drawable getCallingActivityIcon();

        public Drawable getCallingApplicationIcon();

        public CharSequence getCallingApplicationLabel();

        public String getCallingPackage();

        public String[] getEmailBcc();

        public String[] getEmailCc();

        public String[] getEmailTo();

        public String getHtmlText();

        public Uri getStream();

        public Uri getStream(int var1);

        public int getStreamCount();

        public String getSubject();

        public CharSequence getText();

        public String getType();

        public boolean isMultipleShare();

        public boolean isShareIntent();

        public boolean isSingleShare();
    }

    static interface ShareCompatImpl {
        public void configureMenuItem(MenuItem var1, IntentBuilder var2);

        public String escapeHtml(CharSequence var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ShareCompatImplBase
    implements ShareCompatImpl {
        ShareCompatImplBase();

        private static void withinStyle(StringBuilder var0, CharSequence var1, int var2, int var3);

        @Override
        public void configureMenuItem(MenuItem var1, IntentBuilder var2);

        @Override
        public String escapeHtml(CharSequence var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ShareCompatImplICS
    extends ShareCompatImplBase {
        ShareCompatImplICS();

        @Override
        public void configureMenuItem(MenuItem var1, IntentBuilder var2);

        boolean shouldAddChooserIntent(MenuItem var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ShareCompatImplJB
    extends ShareCompatImplICS {
        ShareCompatImplJB();

        @Override
        public String escapeHtml(CharSequence var1);

        @Override
        boolean shouldAddChooserIntent(MenuItem var1);
    }

}

