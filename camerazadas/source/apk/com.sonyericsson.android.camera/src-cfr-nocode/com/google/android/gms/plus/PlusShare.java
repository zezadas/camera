/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.plus.PlusClient;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
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
    protected PlusShare();

    public static Bundle a(String var0, String var1, Uri var2);

    protected static boolean cd(String var0);

    public static Person createPerson(String var0, String var1);

    public static String getDeepLinkId(Intent var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private boolean alr;
        private ArrayList<Uri> als;
        private final Context mContext;
        private final Intent mIntent;

        public Builder(Activity var1);

        @Deprecated
        public Builder(Activity var1, PlusClient var2);

        public Builder(Context var1);

        public Builder addCallToAction(String var1, Uri var2, String var3);

        public Builder addStream(Uri var1);

        public Intent getIntent();

        public Builder setContentDeepLinkId(String var1);

        public Builder setContentDeepLinkId(String var1, String var2, String var3, Uri var4);

        public Builder setContentUrl(Uri var1);

        public Builder setRecipients(Person var1, List<Person> var2);

        @Deprecated
        public Builder setRecipients(List<Person> var1);

        public Builder setStream(Uri var1);

        public Builder setText(CharSequence var1);

        public Builder setType(String var1);
    }

}

