/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NavUtils;
import android.support.v4.app.TaskStackBuilderHoneycomb;
import android.support.v4.app.TaskStackBuilderJellybean;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class TaskStackBuilder
implements Iterable<Intent> {
    private static final TaskStackBuilderImpl IMPL;
    private static final String TAG = "TaskStackBuilder";
    private final ArrayList<Intent> mIntents = new ArrayList();
    private final Context mSourceContext;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            IMPL = new TaskStackBuilderImplHoneycomb();
            return;
        }
        IMPL = new TaskStackBuilderImplBase();
    }

    private TaskStackBuilder(Context context) {
        this.mSourceContext = context;
    }

    public static TaskStackBuilder create(Context context) {
        return new TaskStackBuilder(context);
    }

    public static TaskStackBuilder from(Context context) {
        return TaskStackBuilder.create(context);
    }

    public TaskStackBuilder addNextIntent(Intent intent) {
        this.mIntents.add(intent);
        return this;
    }

    public TaskStackBuilder addNextIntentWithParentStack(Intent intent) {
        ComponentName componentName;
        ComponentName componentName2 = componentName = intent.getComponent();
        if (componentName == null) {
            componentName2 = intent.resolveActivity(this.mSourceContext.getPackageManager());
        }
        if (componentName2 != null) {
            this.addParentStack(componentName2);
        }
        this.addNextIntent(intent);
        return this;
    }

    public TaskStackBuilder addParentStack(Activity object) {
        Parcelable parcelable = null;
        if (object instanceof SupportParentable) {
            parcelable = ((SupportParentable)object).getSupportParentActivityIntent();
        }
        Intent intent = parcelable;
        if (parcelable == null) {
            intent = NavUtils.getParentActivityIntent((Activity)object);
        }
        if (intent != null) {
            object = parcelable = intent.getComponent();
            if (parcelable == null) {
                object = intent.resolveActivity(this.mSourceContext.getPackageManager());
            }
            this.addParentStack((ComponentName)object);
            this.addNextIntent(intent);
        }
        return this;
    }

    public TaskStackBuilder addParentStack(ComponentName parcelable) {
        int n = this.mIntents.size();
        parcelable = NavUtils.getParentActivityIntent(this.mSourceContext, parcelable);
        while (parcelable != null) {
            try {
                this.mIntents.add(n, (Intent)parcelable);
                parcelable = NavUtils.getParentActivityIntent(this.mSourceContext, parcelable.getComponent());
                continue;
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(var1_2);
            }
        }
        return this;
    }

    public TaskStackBuilder addParentStack(Class<?> class_) {
        return this.addParentStack(new ComponentName(this.mSourceContext, class_));
    }

    public Intent editIntentAt(int n) {
        return this.mIntents.get(n);
    }

    public Intent getIntent(int n) {
        return this.editIntentAt(n);
    }

    public int getIntentCount() {
        return this.mIntents.size();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Intent[] getIntents() {
        Intent[] arrintent = new Intent[this.mIntents.size()];
        if (arrintent.length == 0) {
            return arrintent;
        }
        arrintent[0] = new Intent(this.mIntents.get(0)).addFlags(268484608);
        for (int i = 1; i < arrintent.length; ++i) {
            arrintent[i] = new Intent(this.mIntents.get(i));
        }
        return arrintent;
    }

    public PendingIntent getPendingIntent(int n, int n2) {
        return this.getPendingIntent(n, n2, null);
    }

    public PendingIntent getPendingIntent(int n, int n2, Bundle bundle) {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        Intent[] arrintent = this.mIntents.toArray(new Intent[this.mIntents.size()]);
        arrintent[0] = new Intent(arrintent[0]).addFlags(268484608);
        return IMPL.getPendingIntent(this.mSourceContext, arrintent, n, n2, bundle);
    }

    @Override
    public Iterator<Intent> iterator() {
        return this.mIntents.iterator();
    }

    public void startActivities() {
        this.startActivities(null);
    }

    public void startActivities(Bundle parcelable) {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] arrintent = this.mIntents.toArray(new Intent[this.mIntents.size()]);
        arrintent[0] = new Intent(arrintent[0]).addFlags(268484608);
        if (!ContextCompat.startActivities(this.mSourceContext, arrintent, parcelable)) {
            parcelable = new Intent(arrintent[arrintent.length - 1]);
            parcelable.addFlags(268435456);
            this.mSourceContext.startActivity((Intent)parcelable);
        }
    }

    public static interface SupportParentable {
        public Intent getSupportParentActivityIntent();
    }

    static interface TaskStackBuilderImpl {
        public PendingIntent getPendingIntent(Context var1, Intent[] var2, int var3, int var4, Bundle var5);
    }

    static class TaskStackBuilderImplBase
    implements TaskStackBuilderImpl {
        TaskStackBuilderImplBase() {
        }

        @Override
        public PendingIntent getPendingIntent(Context context, Intent[] object, int n, int n2, Bundle bundle) {
            object = new Intent(object[object.length - 1]);
            object.addFlags(268435456);
            return PendingIntent.getActivity(context, n, (Intent)object, n2);
        }
    }

    static class TaskStackBuilderImplHoneycomb
    implements TaskStackBuilderImpl {
        TaskStackBuilderImplHoneycomb() {
        }

        @Override
        public PendingIntent getPendingIntent(Context context, Intent[] arrintent, int n, int n2, Bundle bundle) {
            arrintent[0] = new Intent(arrintent[0]).addFlags(268484608);
            return TaskStackBuilderHoneycomb.getActivitiesPendingIntent(context, n, arrintent, n2);
        }
    }

    static class TaskStackBuilderImplJellybean
    implements TaskStackBuilderImpl {
        TaskStackBuilderImplJellybean() {
        }

        @Override
        public PendingIntent getPendingIntent(Context context, Intent[] arrintent, int n, int n2, Bundle bundle) {
            arrintent[0] = new Intent(arrintent[0]).addFlags(268484608);
            return TaskStackBuilderJellybean.getActivitiesPendingIntent(context, n, arrintent, n2, bundle);
        }
    }

}

