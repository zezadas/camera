/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.cameracommon.contentsview.DataLoader;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingDeque;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ContentLoader {
    private static final int MAX_LOCAL_CACHE_NUM = 100;
    public static final float PANORAMA_ASPECT_THRESHOLD = 1.8777778f;
    private static final String TAG;
    private final ContentCreationCallback mContentCallback;
    private Context mContext;
    private DataLoader.DataLoadCallback mDataCallback;
    private LinkedBlockingDeque<Future<Integer>> mDataLoaderQueue;
    private ExecutorService mExecutor;
    private DataLoaderHander mHandler;
    private LinkedList<Content.ContentInfo> mLocalCache;
    private SecurityLevel mSecurityLevel;

    static;

    public ContentLoader(Context var1, SecurityLevel var2, ContentCreationCallback var3, int var4);

    static /* synthetic */ void access$300(ContentLoader var0, int var1);

    static /* synthetic */ ContentCreationCallback access$400(ContentLoader var0);

    static /* synthetic */ void access$500(ContentLoader var0, Content.ContentInfo var1);

    static /* synthetic */ DataLoaderHander access$600(ContentLoader var0);

    static /* synthetic */ String access$800();

    private void addLocalCache(Content.ContentInfo var1);

    private void clearLocalCache();

    private LinkedList<Content.ContentInfo> getLocalCache();

    private void loadData(DataLoader var1);

    private void removeFuture(int var1);

    public void pause();

    public void release();

    public void reload(int var1, List<String> var2);

    public void removeTopContent();

    public void request(int var1, Uri var2);

    public void updateSecurityLevel(SecurityLevel var1);

    static interface ContentCreationCallback {
        public void onContentCreated(int var1, Content var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DataCallback
    implements DataLoader.DataLoadCallback {
        final /* synthetic */ ContentLoader this$0;

        private DataCallback(ContentLoader var1);

        /* synthetic */ DataCallback(ContentLoader var1,  var2);

        @Override
        public void onDataLoaded(boolean var1, Content.ContentInfo var2, int var3, boolean var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DataLoaderHander
    extends Handler {
        private static final int NOTIFY_CONTENT_CREATED = 1;
        final /* synthetic */ ContentLoader this$0;

        private DataLoaderHander(ContentLoader var1);

        /* synthetic */ DataLoaderHander(ContentLoader var1,  var2);

        static /* synthetic */ void access$200(DataLoaderHander var0);

        static /* synthetic */ void access$700(DataLoaderHander var0, int var1, Content var2);

        private void notifyContentCreated(int var1, Content var2);

        private void removeAllMessages();

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class SecurityLevel
    extends Enum<SecurityLevel> {
        private static final /* synthetic */ SecurityLevel[] $VALUES;
        public static final /* enum */ SecurityLevel NEWLY_ADDED_CONTENT_ONLY;
        public static final /* enum */ SecurityLevel NORMAL;

        static;

        private SecurityLevel();

        public static SecurityLevel valueOf(String var0);

        public static SecurityLevel[] values();
    }

}

