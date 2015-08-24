/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.app.ShareCompatICS;
import android.support.v4.app.ShareCompatJB;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

public class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    private static ShareCompatImpl IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new ShareCompatImplJB();
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new ShareCompatImplICS();
            return;
        }
        IMPL = new ShareCompatImplBase();
    }

    public static void configureMenuItem(Menu object, int n, IntentBuilder intentBuilder) {
        if ((object = object.findItem(n)) == null) {
            throw new IllegalArgumentException("Could not find menu item with id " + n + " in the supplied menu");
        }
        ShareCompat.configureMenuItem((MenuItem)object, intentBuilder);
    }

    public static void configureMenuItem(MenuItem menuItem, IntentBuilder intentBuilder) {
        IMPL.configureMenuItem(menuItem, intentBuilder);
    }

    public static ComponentName getCallingActivity(Activity activity) {
        ComponentName componentName;
        ComponentName componentName2 = componentName = activity.getCallingActivity();
        if (componentName == null) {
            componentName2 = (ComponentName)activity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY");
        }
        return componentName2;
    }

    public static String getCallingPackage(Activity activity) {
        String string;
        String string2 = string = activity.getCallingPackage();
        if (string == null) {
            string2 = activity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE");
        }
        return string2;
    }

    public static class IntentBuilder {
        private Activity mActivity;
        private ArrayList<String> mBccAddresses;
        private ArrayList<String> mCcAddresses;
        private CharSequence mChooserTitle;
        private Intent mIntent;
        private ArrayList<Uri> mStreams;
        private ArrayList<String> mToAddresses;

        private IntentBuilder(Activity activity) {
            this.mActivity = activity;
            this.mIntent = new Intent().setAction("android.intent.action.SEND");
            this.mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE", activity.getPackageName());
            this.mIntent.putExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY", activity.getComponentName());
            this.mIntent.addFlags(524288);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void combineArrayExtra(String string, ArrayList<String> arrayList) {
            String[] arrstring = this.mIntent.getStringArrayExtra(string);
            int n = arrstring != null ? arrstring.length : 0;
            String[] arrstring2 = new String[arrayList.size() + n];
            arrayList.toArray(arrstring2);
            if (arrstring != null) {
                System.arraycopy(arrstring, 0, arrstring2, arrayList.size(), n);
            }
            this.mIntent.putExtra(string, arrstring2);
        }

        /*
         * Enabled aggressive block sorting
         */
        private void combineArrayExtra(String string, String[] arrstring) {
            Intent intent = this.getIntent();
            String[] arrstring2 = intent.getStringArrayExtra(string);
            int n = arrstring2 != null ? arrstring2.length : 0;
            String[] arrstring3 = new String[arrstring.length + n];
            if (arrstring2 != null) {
                System.arraycopy(arrstring2, 0, arrstring3, 0, n);
            }
            System.arraycopy(arrstring, 0, arrstring3, n, arrstring.length);
            intent.putExtra(string, arrstring3);
        }

        public static IntentBuilder from(Activity activity) {
            return new IntentBuilder(activity);
        }

        public IntentBuilder addEmailBcc(String string) {
            if (this.mBccAddresses == null) {
                this.mBccAddresses = new ArrayList();
            }
            this.mBccAddresses.add(string);
            return this;
        }

        public IntentBuilder addEmailBcc(String[] arrstring) {
            this.combineArrayExtra("android.intent.extra.BCC", arrstring);
            return this;
        }

        public IntentBuilder addEmailCc(String string) {
            if (this.mCcAddresses == null) {
                this.mCcAddresses = new ArrayList();
            }
            this.mCcAddresses.add(string);
            return this;
        }

        public IntentBuilder addEmailCc(String[] arrstring) {
            this.combineArrayExtra("android.intent.extra.CC", arrstring);
            return this;
        }

        public IntentBuilder addEmailTo(String string) {
            if (this.mToAddresses == null) {
                this.mToAddresses = new ArrayList();
            }
            this.mToAddresses.add(string);
            return this;
        }

        public IntentBuilder addEmailTo(String[] arrstring) {
            this.combineArrayExtra("android.intent.extra.EMAIL", arrstring);
            return this;
        }

        public IntentBuilder addStream(Uri uri) {
            Uri uri2 = (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
            if (uri2 == null) {
                return this.setStream(uri);
            }
            if (this.mStreams == null) {
                this.mStreams = new ArrayList();
            }
            if (uri2 != null) {
                this.mIntent.removeExtra("android.intent.extra.STREAM");
                this.mStreams.add(uri2);
            }
            this.mStreams.add(uri);
            return this;
        }

        public Intent createChooserIntent() {
            return Intent.createChooser(this.getIntent(), this.mChooserTitle);
        }

        Activity getActivity() {
            return this.mActivity;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Intent getIntent() {
            boolean bl = true;
            if (this.mToAddresses != null) {
                this.combineArrayExtra("android.intent.extra.EMAIL", this.mToAddresses);
                this.mToAddresses = null;
            }
            if (this.mCcAddresses != null) {
                this.combineArrayExtra("android.intent.extra.CC", this.mCcAddresses);
                this.mCcAddresses = null;
            }
            if (this.mBccAddresses != null) {
                this.combineArrayExtra("android.intent.extra.BCC", this.mBccAddresses);
                this.mBccAddresses = null;
            }
            if (this.mStreams == null || this.mStreams.size() <= 1) {
                bl = false;
            }
            boolean bl2 = this.mIntent.getAction().equals("android.intent.action.SEND_MULTIPLE");
            if (!bl && bl2) {
                this.mIntent.setAction("android.intent.action.SEND");
                if (!(this.mStreams == null || this.mStreams.isEmpty())) {
                    this.mIntent.putExtra("android.intent.extra.STREAM", this.mStreams.get(0));
                } else {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                }
                this.mStreams = null;
            }
            if (!bl) return this.mIntent;
            if (bl2) return this.mIntent;
            this.mIntent.setAction("android.intent.action.SEND_MULTIPLE");
            if (!(this.mStreams == null || this.mStreams.isEmpty())) {
                this.mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.mStreams);
                return this.mIntent;
            }
            this.mIntent.removeExtra("android.intent.extra.STREAM");
            return this.mIntent;
        }

        public IntentBuilder setChooserTitle(int n) {
            return this.setChooserTitle(this.mActivity.getText(n));
        }

        public IntentBuilder setChooserTitle(CharSequence charSequence) {
            this.mChooserTitle = charSequence;
            return this;
        }

        public IntentBuilder setEmailBcc(String[] arrstring) {
            this.mIntent.putExtra("android.intent.extra.BCC", arrstring);
            return this;
        }

        public IntentBuilder setEmailCc(String[] arrstring) {
            this.mIntent.putExtra("android.intent.extra.CC", arrstring);
            return this;
        }

        public IntentBuilder setEmailTo(String[] arrstring) {
            if (this.mToAddresses != null) {
                this.mToAddresses = null;
            }
            this.mIntent.putExtra("android.intent.extra.EMAIL", arrstring);
            return this;
        }

        public IntentBuilder setHtmlText(String string) {
            this.mIntent.putExtra("android.intent.extra.HTML_TEXT", string);
            if (!this.mIntent.hasExtra("android.intent.extra.TEXT")) {
                this.setText(Html.fromHtml(string));
            }
            return this;
        }

        public IntentBuilder setStream(Uri uri) {
            if (!this.mIntent.getAction().equals("android.intent.action.SEND")) {
                this.mIntent.setAction("android.intent.action.SEND");
            }
            this.mStreams = null;
            this.mIntent.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public IntentBuilder setSubject(String string) {
            this.mIntent.putExtra("android.intent.extra.SUBJECT", string);
            return this;
        }

        public IntentBuilder setText(CharSequence charSequence) {
            this.mIntent.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        public IntentBuilder setType(String string) {
            this.mIntent.setType(string);
            return this;
        }

        public void startChooser() {
            this.mActivity.startActivity(this.createChooserIntent());
        }
    }

    public static class IntentReader {
        private static final String TAG = "IntentReader";
        private Activity mActivity;
        private ComponentName mCallingActivity;
        private String mCallingPackage;
        private Intent mIntent;
        private ArrayList<Uri> mStreams;

        private IntentReader(Activity activity) {
            this.mActivity = activity;
            this.mIntent = activity.getIntent();
            this.mCallingPackage = ShareCompat.getCallingPackage(activity);
            this.mCallingActivity = ShareCompat.getCallingActivity(activity);
        }

        public static IntentReader from(Activity activity) {
            return new IntentReader(activity);
        }

        public ComponentName getCallingActivity() {
            return this.mCallingActivity;
        }

        public Drawable getCallingActivityIcon() {
            if (this.mCallingActivity == null) {
                return null;
            }
            Object object = this.mActivity.getPackageManager();
            try {
                object = object.getActivityIcon(this.mCallingActivity);
                return object;
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                Log.e("IntentReader", "Could not retrieve icon for calling activity", var1_2);
                return null;
            }
        }

        public Drawable getCallingApplicationIcon() {
            if (this.mCallingPackage == null) {
                return null;
            }
            Object object = this.mActivity.getPackageManager();
            try {
                object = object.getApplicationIcon(this.mCallingPackage);
                return object;
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                Log.e("IntentReader", "Could not retrieve icon for calling application", var1_2);
                return null;
            }
        }

        public CharSequence getCallingApplicationLabel() {
            if (this.mCallingPackage == null) {
                return null;
            }
            Object object = this.mActivity.getPackageManager();
            try {
                object = object.getApplicationLabel(object.getApplicationInfo(this.mCallingPackage, 0));
                return object;
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                Log.e("IntentReader", "Could not retrieve label for calling application", var1_2);
                return null;
            }
        }

        public String getCallingPackage() {
            return this.mCallingPackage;
        }

        public String[] getEmailBcc() {
            return this.mIntent.getStringArrayExtra("android.intent.extra.BCC");
        }

        public String[] getEmailCc() {
            return this.mIntent.getStringArrayExtra("android.intent.extra.CC");
        }

        public String[] getEmailTo() {
            return this.mIntent.getStringArrayExtra("android.intent.extra.EMAIL");
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public String getHtmlText() {
            String string;
            String string2 = string = this.mIntent.getStringExtra("android.intent.extra.HTML_TEXT");
            if (string != null) return string2;
            CharSequence charSequence = this.getText();
            if (charSequence instanceof Spanned) {
                return Html.toHtml((Spanned)charSequence);
            }
            string2 = string;
            if (charSequence == null) return string2;
            return IMPL.escapeHtml(charSequence);
        }

        public Uri getStream() {
            return (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
        }

        public Uri getStream(int n) {
            if (this.mStreams == null && this.isMultipleShare()) {
                this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            if (this.mStreams != null) {
                return this.mStreams.get(n);
            }
            if (n == 0) {
                return (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
            }
            throw new IndexOutOfBoundsException("Stream items available: " + this.getStreamCount() + " index requested: " + n);
        }

        public int getStreamCount() {
            if (this.mStreams == null && this.isMultipleShare()) {
                this.mStreams = this.mIntent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            if (this.mStreams != null) {
                return this.mStreams.size();
            }
            if (this.mIntent.hasExtra("android.intent.extra.STREAM")) {
                return 1;
            }
            return 0;
        }

        public String getSubject() {
            return this.mIntent.getStringExtra("android.intent.extra.SUBJECT");
        }

        public CharSequence getText() {
            return this.mIntent.getCharSequenceExtra("android.intent.extra.TEXT");
        }

        public String getType() {
            return this.mIntent.getType();
        }

        public boolean isMultipleShare() {
            return "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
        }

        public boolean isShareIntent() {
            String string = this.mIntent.getAction();
            if ("android.intent.action.SEND".equals(string) || "android.intent.action.SEND_MULTIPLE".equals(string)) {
                return true;
            }
            return false;
        }

        public boolean isSingleShare() {
            return "android.intent.action.SEND".equals(this.mIntent.getAction());
        }
    }

    static interface ShareCompatImpl {
        public void configureMenuItem(MenuItem var1, IntentBuilder var2);

        public String escapeHtml(CharSequence var1);
    }

    static class ShareCompatImplBase
    implements ShareCompatImpl {
        ShareCompatImplBase() {
        }

        /*
         * Enabled aggressive block sorting
         */
        private static void withinStyle(StringBuilder stringBuilder, CharSequence charSequence, int n, int n2) {
            while (n < n2) {
                char c = charSequence.charAt(n);
                if (c == '<') {
                    stringBuilder.append("&lt;");
                } else if (c == '>') {
                    stringBuilder.append("&gt;");
                } else if (c == '&') {
                    stringBuilder.append("&amp;");
                } else if (c > '~' || c < ' ') {
                    stringBuilder.append("&#" + c + ";");
                } else if (c == ' ') {
                    while (n + 1 < n2 && charSequence.charAt(n + 1) == ' ') {
                        stringBuilder.append("&nbsp;");
                        ++n;
                    }
                    stringBuilder.append(' ');
                } else {
                    stringBuilder.append(c);
                }
                ++n;
            }
            return;
        }

        @Override
        public void configureMenuItem(MenuItem menuItem, IntentBuilder intentBuilder) {
            menuItem.setIntent(intentBuilder.createChooserIntent());
        }

        @Override
        public String escapeHtml(CharSequence charSequence) {
            StringBuilder stringBuilder = new StringBuilder();
            ShareCompatImplBase.withinStyle(stringBuilder, charSequence, 0, charSequence.length());
            return stringBuilder.toString();
        }
    }

    static class ShareCompatImplICS
    extends ShareCompatImplBase {
        ShareCompatImplICS() {
        }

        @Override
        public void configureMenuItem(MenuItem menuItem, IntentBuilder intentBuilder) {
            ShareCompatICS.configureMenuItem(menuItem, intentBuilder.getActivity(), intentBuilder.getIntent());
            if (this.shouldAddChooserIntent(menuItem)) {
                menuItem.setIntent(intentBuilder.createChooserIntent());
            }
        }

        boolean shouldAddChooserIntent(MenuItem menuItem) {
            if (!menuItem.hasSubMenu()) {
                return true;
            }
            return false;
        }
    }

    static class ShareCompatImplJB
    extends ShareCompatImplICS {
        ShareCompatImplJB() {
        }

        @Override
        public String escapeHtml(CharSequence charSequence) {
            return ShareCompatJB.escapeHtml(charSequence);
        }

        @Override
        boolean shouldAddChooserIntent(MenuItem menuItem) {
            return false;
        }
    }

}

