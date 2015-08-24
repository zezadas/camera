/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.nz;
import com.google.android.gms.plus.PlusClient;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlusShare {
    public static final String EXTRA_CALL_TO_ACTION = "com.google.android.apps.plus.CALL_TO_ACTION";
    public static final String EXTRA_CONTENT_DEEP_LINK_ID = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID";
    public static final String EXTRA_CONTENT_DEEP_LINK_METADATA = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA";
    public static final String EXTRA_CONTENT_URL = "com.google.android.apps.plus.CONTENT_URL";
    public static final String EXTRA_IS_INTERACTIVE_POST = "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST";
    public static final String EXTRA_SENDER_ID = "com.google.android.apps.plus.SENDER_ID";
    public static final String KEY_CALL_TO_ACTION_DEEP_LINK_ID = "deepLinkId";
    public static final String KEY_CALL_TO_ACTION_LABEL = "label";
    public static final String KEY_CALL_TO_ACTION_URL = "url";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION = "description";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL = "thumbnailUrl";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_TITLE = "title";
    public static final String PARAM_CONTENT_DEEP_LINK_ID = "deep_link_id";

    @Deprecated
    protected PlusShare() {
        throw new AssertionError();
    }

    public static Bundle a(String string, String string2, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putString("title", string);
        bundle.putString("description", string2);
        if (uri != null) {
            bundle.putString("thumbnailUrl", uri.toString());
        }
        return bundle;
    }

    protected static boolean cd(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            Log.e("GooglePlusPlatform", "The provided deep-link ID is empty.");
            return false;
        }
        if (string.contains((CharSequence)" ")) {
            Log.e("GooglePlusPlatform", "Spaces are not allowed in deep-link IDs.");
            return false;
        }
        return true;
    }

    public static Person createPerson(String string, String string2) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("MinimalPerson ID must not be empty.");
        }
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("Display name must not be empty.");
        }
        return new nz(string2, string, null, 0, null);
    }

    public static String getDeepLinkId(Intent intent) {
        String string;
        String string2 = string = null;
        if (intent != null) {
            string2 = string;
            if (intent.getData() != null) {
                string2 = intent.getData().getQueryParameter("deep_link_id");
            }
        }
        return string2;
    }

    public static class Builder {
        private boolean alr;
        private ArrayList<Uri> als;
        private final Context mContext;
        private final Intent mIntent;

        public Builder(Activity activity) {
            this.mContext = activity;
            this.mIntent = new Intent().setAction("android.intent.action.SEND");
            this.mIntent.addFlags(524288);
            if (activity != null && activity.getComponentName() != null) {
                this.alr = true;
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Deprecated
        public Builder(Activity object, PlusClient plusClient) {
            this((Activity)object);
            boolean bl = plusClient != null;
            o.a(bl, "PlusClient must not be null.");
            o.a(plusClient.isConnected(), "PlusClient must be connected to create an interactive post.");
            o.a(plusClient.mZ().cg("https://www.googleapis.com/auth/plus.login"), "Must request PLUS_LOGIN scope in PlusClient to create an interactive post.");
            object = plusClient.getCurrentPerson();
            object = object != null ? object.getId() : "0";
            this.mIntent.putExtra("com.google.android.apps.plus.SENDER_ID", (String)object);
        }

        public Builder(Context context) {
            this.mContext = context;
            this.mIntent = new Intent().setAction("android.intent.action.SEND");
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder addCallToAction(String string, Uri uri, String string2) {
            o.a(this.alr, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action");
            boolean bl = uri != null && !TextUtils.isEmpty((CharSequence)uri.toString());
            o.b(bl, (Object)"Must provide a call to action URL");
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty((CharSequence)string)) {
                bundle.putString("label", string);
            }
            bundle.putString("url", uri.toString());
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                o.a(PlusShare.cd(string2), "The specified deep-link ID was malformed.");
                bundle.putString("deepLinkId", string2);
            }
            this.mIntent.putExtra("com.google.android.apps.plus.CALL_TO_ACTION", bundle);
            this.mIntent.putExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", true);
            this.mIntent.setType("text/plain");
            return this;
        }

        public Builder addStream(Uri uri) {
            Uri uri2 = (Uri)this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
            if (uri2 == null) {
                return this.setStream(uri);
            }
            if (this.als == null) {
                this.als = new ArrayList();
            }
            this.als.add(uri2);
            this.als.add(uri);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Intent getIntent() {
            boolean bl = true;
            boolean bl2 = this.als != null && this.als.size() > 1;
            boolean bl3 = "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
            boolean bl4 = this.mIntent.getBooleanExtra("com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST", false);
            boolean bl5 = !bl2 || !bl4;
            o.a(bl5, "Call-to-action buttons are only available for URLs.");
            bl5 = !bl4 || this.mIntent.hasExtra("com.google.android.apps.plus.CONTENT_URL");
            o.a(bl5, "The content URL is required for interactive posts.");
            bl5 = bl;
            if (bl4) {
                bl5 = bl;
                if (!this.mIntent.hasExtra("com.google.android.apps.plus.CONTENT_URL")) {
                    bl5 = this.mIntent.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID") ? bl : false;
                }
            }
            o.a(bl5, "Must set content URL or content deep-link ID to use a call-to-action button.");
            if (this.mIntent.hasExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")) {
                o.a(PlusShare.cd(this.mIntent.getStringExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID")), "The specified deep-link ID was malformed.");
            }
            if (!bl2 && bl3) {
                this.mIntent.setAction("android.intent.action.SEND");
                if (!(this.als == null || this.als.isEmpty())) {
                    this.mIntent.putExtra("android.intent.extra.STREAM", this.als.get(0));
                } else {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                }
                this.als = null;
            }
            if (bl2 && !bl3) {
                this.mIntent.setAction("android.intent.action.SEND_MULTIPLE");
                if (!(this.als == null || this.als.isEmpty())) {
                    this.mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.als);
                } else {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                }
            }
            if ("com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE".equals(this.mIntent.getAction())) {
                this.mIntent.setPackage("com.google.android.gms");
                return this.mIntent;
            }
            if (!this.mIntent.hasExtra("android.intent.extra.STREAM")) {
                this.mIntent.setAction("com.google.android.gms.plus.action.SHARE_GOOGLE");
                this.mIntent.setPackage("com.google.android.gms");
                return this.mIntent;
            }
            this.mIntent.setPackage("com.google.android.apps.plus");
            return this.mIntent;
        }

        public Builder setContentDeepLinkId(String string) {
            return this.setContentDeepLinkId(string, null, null, null);
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setContentDeepLinkId(String string, String object, String string2, Uri uri) {
            o.b(this.alr, (Object)"Must include the launching activity with PlusShare.Builder constructor before setting deep links");
            boolean bl = !TextUtils.isEmpty((CharSequence)string);
            o.b(bl, (Object)"The deepLinkId parameter is required.");
            object = PlusShare.a((String)object, string2, uri);
            this.mIntent.putExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_ID", string);
            this.mIntent.putExtra("com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA", (Bundle)object);
            this.mIntent.setType("text/plain");
            return this;
        }

        public Builder setContentUrl(Uri uri) {
            String string = null;
            if (uri != null) {
                string = uri.toString();
            }
            if (TextUtils.isEmpty((CharSequence)string)) {
                this.mIntent.removeExtra("com.google.android.apps.plus.CONTENT_URL");
                return this;
            }
            this.mIntent.putExtra("com.google.android.apps.plus.CONTENT_URL", string);
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Builder setRecipients(Person object, List<Person> list) {
            Intent intent = this.mIntent;
            object = object != null ? object.getId() : "0";
            intent.putExtra("com.google.android.apps.plus.SENDER_ID", (String)object);
            return this.setRecipients(list);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Deprecated
        public Builder setRecipients(List<Person> iterator) {
            int n = iterator != null ? iterator.size() : 0;
            if (n == 0) {
                this.mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_IDS");
                this.mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES");
                return this;
            }
            ArrayList<String> arrayList = new ArrayList<String>(n);
            ArrayList<String> arrayList2 = new ArrayList<String>(n);
            iterator = iterator.iterator();
            do {
                if (!iterator.hasNext()) {
                    this.mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_IDS", arrayList);
                    this.mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES", arrayList2);
                    return this;
                }
                Person person = (Person)iterator.next();
                arrayList.add(person.getId());
                arrayList2.add(person.getDisplayName());
            } while (true);
        }

        public Builder setStream(Uri uri) {
            this.als = null;
            this.mIntent.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public Builder setText(CharSequence charSequence) {
            this.mIntent.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        public Builder setType(String string) {
            this.mIntent.setType(string);
            return this;
        }
    }

}

