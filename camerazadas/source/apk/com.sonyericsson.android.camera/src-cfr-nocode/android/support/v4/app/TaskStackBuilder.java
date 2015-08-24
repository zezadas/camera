/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TaskStackBuilder
implements Iterable<Intent> {
    private static final TaskStackBuilderImpl IMPL;
    private static final String TAG = "TaskStackBuilder";
    private final ArrayList<Intent> mIntents;
    private final Context mSourceContext;

    static;

    private TaskStackBuilder(Context var1);

    public static TaskStackBuilder create(Context var0);

    public static TaskStackBuilder from(Context var0);

    public TaskStackBuilder addNextIntent(Intent var1);

    public TaskStackBuilder addNextIntentWithParentStack(Intent var1);

    public TaskStackBuilder addParentStack(Activity var1);

    public TaskStackBuilder addParentStack(ComponentName var1);

    public TaskStackBuilder addParentStack(Class<?> var1);

    public Intent editIntentAt(int var1);

    public Intent getIntent(int var1);

    public int getIntentCount();

    public Intent[] getIntents();

    public PendingIntent getPendingIntent(int var1, int var2);

    public PendingIntent getPendingIntent(int var1, int var2, Bundle var3);

    @Override
    public Iterator<Intent> iterator();

    public void startActivities();

    public void startActivities(Bundle var1);

    public static interface SupportParentable {
        public Intent getSupportParentActivityIntent();
    }

    static interface TaskStackBuilderImpl {
        public PendingIntent getPendingIntent(Context var1, Intent[] var2, int var3, int var4, Bundle var5);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class TaskStackBuilderImplBase
    implements TaskStackBuilderImpl {
        TaskStackBuilderImplBase();

        @Override
        public PendingIntent getPendingIntent(Context var1, Intent[] var2, int var3, int var4, Bundle var5);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class TaskStackBuilderImplHoneycomb
    implements TaskStackBuilderImpl {
        TaskStackBuilderImplHoneycomb();

        @Override
        public PendingIntent getPendingIntent(Context var1, Intent[] var2, int var3, int var4, Bundle var5);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class TaskStackBuilderImplJellybean
    implements TaskStackBuilderImpl {
        TaskStackBuilderImplJellybean();

        @Override
        public PendingIntent getPendingIntent(Context var1, Intent[] var2, int var3, int var4, Bundle var5);
    }

}

