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
import com.sonyericsson.cameracommon.contentsview.contents.ContentFactory;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingDeque;

public class ContentLoader {
    private static final int MAX_LOCAL_CACHE_NUM = 100;
    public static final float PANORAMA_ASPECT_THRESHOLD = 1.8777778f;
    private static final String TAG = ContentLoader.class.getSimpleName();
    private final ContentCreationCallback mContentCallback;
    private Context mContext;
    private DataLoader.DataLoadCallback mDataCallback;
    private LinkedBlockingDeque<Future<Integer>> mDataLoaderQueue;
    private ExecutorService mExecutor;
    private DataLoaderHander mHandler;
    private LinkedList<Content.ContentInfo> mLocalCache;
    private SecurityLevel mSecurityLevel;

    public ContentLoader(Context context, SecurityLevel securityLevel, ContentCreationCallback contentCreationCallback, int n) {
        this.mDataCallback = new DataCallback();
        this.mExecutor = Executors.newSingleThreadExecutor();
        this.mLocalCache = new LinkedList();
        this.mContext = context;
        this.mSecurityLevel = securityLevel;
        this.mDataLoaderQueue = new LinkedBlockingDeque(n);
        this.mContentCallback = contentCreationCallback;
        this.mHandler = new DataLoaderHander();
    }

    private void addLocalCache(Content.ContentInfo contentInfo) {
        this.mLocalCache.addFirst(contentInfo);
        if (this.mLocalCache.size() > 100) {
            this.mLocalCache.removeLast();
        }
    }

    private void clearLocalCache() {
        if (this.mLocalCache != null) {
            this.mLocalCache.clear();
        }
    }

    private LinkedList<Content.ContentInfo> getLocalCache() {
        return this.mLocalCache;
    }

    private void loadData(DataLoader object) {
        Future<Integer> future;
        if (this.mDataLoaderQueue.remainingCapacity() <= 0 && (future = this.mDataLoaderQueue.pollFirst()) != null) {
            future.cancel(true);
        }
        object = this.mExecutor.submit(object);
        this.mDataLoaderQueue.addLast((Future<Integer>)object);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void removeFuture(int n) {
        if (this.mDataLoaderQueue != null) {
            Iterator<Future<Integer>> iterator = this.mDataLoaderQueue.iterator();
            while (iterator.hasNext()) {
                int n2;
                Future<Integer> future = iterator.next();
                if (!future.isDone() || future.isCancelled()) continue;
                n2 = 0;
                try {
                    int n3;
                    n2 = n3 = future.get().intValue();
                }
                catch (ExecutionException var5_6) {
                }
                catch (InterruptedException var5_7) {}
                if (n2 != n) continue;
                iterator.remove();
            }
        }
    }

    public void pause() {
        if (this.mDataLoaderQueue != null) {
            Iterator<Future<Integer>> iterator = this.mDataLoaderQueue.iterator();
            while (iterator.hasNext()) {
                iterator.next().cancel(false);
            }
            this.mDataLoaderQueue.clear();
        }
        this.clearLocalCache();
    }

    public void release() {
        this.clearLocalCache();
        this.mLocalCache = null;
        this.mDataCallback = null;
        this.mExecutor.shutdownNow();
        this.mExecutor = null;
        this.mDataLoaderQueue.clear();
        this.mDataLoaderQueue = null;
        this.mHandler.removeAllMessages();
    }

    public void reload(int n, List<String> object) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel[this.mSecurityLevel.ordinal()]) {
            default: {
                for (int i = 0; i < n; ++i) {
                    this.loadData(new DataLoader(this.mContext, (List<String>)object, i, this.mDataCallback, false));
                }
                break;
            }
            case 1: {
                object = this.getLocalCache();
                if (object == null || object.size() <= 0) break;
                object = ContentFactory.create((Content.ContentInfo)object.getFirst());
                this.mContentCallback.onContentCreated(-1, (Content)object);
            }
        }
    }

    public void removeTopContent() {
        if (this.mLocalCache != null && this.mLocalCache.size() > 0) {
            this.mLocalCache.removeFirst();
        }
    }

    public void request(int n, Uri uri) {
        this.loadData(new DataLoader(n, uri, this.mContext, this.mDataCallback, true));
    }

    public void updateSecurityLevel(SecurityLevel securityLevel) {
        this.mSecurityLevel = securityLevel;
    }

    static interface ContentCreationCallback {
        public void onContentCreated(int var1, Content var2);
    }

    private class DataCallback
    implements DataLoader.DataLoadCallback {
        private DataCallback() {
        }

        @Override
        public void onDataLoaded(boolean bl, Content.ContentInfo contentInfo, int n, boolean bl2) {
            if (bl) {
                Content content = ContentFactory.create(contentInfo);
                if (bl2) {
                    ContentLoader.this.addLocalCache(contentInfo);
                }
                ContentLoader.this.mHandler.notifyContentCreated(n, content);
                return;
            }
            CameraLogger.w(TAG, "Loading data is failed.");
        }
    }

    private class DataLoaderHander
    extends Handler {
        private static final int NOTIFY_CONTENT_CREATED = 1;

        private DataLoaderHander() {
        }

        private void notifyContentCreated(int n, Content content) {
            Message message = Message.obtain((Handler)this, 1);
            message.arg1 = n;
            message.obj = content;
            this.sendMessage(message);
        }

        private void removeAllMessages() {
            this.removeMessages(1);
        }

        @Override
        public void handleMessage(Message object) {
            switch (object.what) {
                default: {
                    return;
                }
                case 1: 
            }
            int n = object.arg1;
            object = (Content)object.obj;
            ContentLoader.this.removeFuture(object.getContentInfo().mId);
            ContentLoader.this.mContentCallback.onContentCreated(n, (Content)object);
        }
    }

    public static enum SecurityLevel {
        NORMAL,
        NEWLY_ADDED_CONTENT_ONLY;
        

        private SecurityLevel() {
        }
    }

}

