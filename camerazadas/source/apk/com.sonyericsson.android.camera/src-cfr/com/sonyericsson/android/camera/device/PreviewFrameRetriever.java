/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.hardware.Camera;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class PreviewFrameRetriever {
    private static final String TAG = PreviewFrameRetriever.class.getSimpleName();
    private Camera mCamera = null;
    private PreviewInfo mInfo = null;
    private boolean mIsPreviewCallbackRegistered = false;
    private final List<Request> mRequests = new LinkedList<Request>();

    private Request findWithListener(OnPreviewFrameAvarableListener onPreviewFrameAvarableListener) {
        for (Request request : this.mRequests) {
            if (request.callback != onPreviewFrameAvarableListener) continue;
            return request;
        }
        return null;
    }

    private void registerPreviewCallback() {
        if (!(this.mIsPreviewCallbackRegistered || this.mCamera == null)) {
            this.mIsPreviewCallbackRegistered = true;
            this.mCamera.setPreviewCallback(new OnPreviewFrameCallback());
        }
    }

    private void unregisterPreviewCallback() {
        this.mIsPreviewCallbackRegistered = false;
        if (this.mCamera != null) {
            this.mCamera.setPreviewCallback(null);
        }
    }

    public void attachCamera(Camera camera) {
        this.attachCamera(camera, camera.getParameters());
    }

    public void attachCamera(Camera camera, Camera.Parameters parameters) {
        this.dettachCamera();
        this.mCamera = camera;
        this.mInfo = new PreviewInfo(parameters.getPreviewFormat(), parameters.getPreviewSize().width, parameters.getPreviewSize().height);
    }

    public void dettachCamera() {
        this.mRequests.clear();
        this.unregisterPreviewCallback();
        this.mCamera = null;
    }

    public PreviewInfo getPreviewInfo() {
        return this.mInfo;
    }

    public void removeRequest(OnPreviewFrameAvarableListener object) {
        if ((object = this.findWithListener((OnPreviewFrameAvarableListener)object)) != null) {
            this.mRequests.remove(object);
        }
        if (this.mRequests.isEmpty()) {
            this.unregisterPreviewCallback();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean request(OnPreviewFrameAvarableListener onPreviewFrameAvarableListener) {
        if (this.findWithListener(onPreviewFrameAvarableListener) != null) {
            return false;
        }
        boolean bl = false;
        if (bl) {
            return false;
        }
        this.mRequests.add(new Request(false, onPreviewFrameAvarableListener));
        this.registerPreviewCallback();
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean requestPeriodic(OnPreviewFrameAvarableListener onPreviewFrameAvarableListener) {
        if (this.findWithListener(onPreviewFrameAvarableListener) != null) {
            return false;
        }
        boolean bl = false;
        if (bl) {
            return false;
        }
        this.mRequests.add(new Request(true, onPreviewFrameAvarableListener));
        this.registerPreviewCallback();
        return true;
    }

    public void setPreviewInfo(PreviewInfo previewInfo) {
        if (this.mInfo.format != previewInfo.format || this.mInfo.width != previewInfo.width || this.mInfo.height != previewInfo.height) {
            this.mRequests.clear();
            this.mInfo = previewInfo;
        }
    }

    public static interface OnPreviewFrameAvarableListener {
        public void onPreviewFrameAvarable(PreviewFrameRetriever var1, byte[] var2);
    }

    private class OnPreviewFrameCallback
    implements Camera.PreviewCallback {
        private OnPreviewFrameCallback() {
        }

        @Override
        public void onPreviewFrame(byte[] arrby, Camera iterator) {
            iterator = new ArrayList(PreviewFrameRetriever.this.mRequests);
            Iterator iterator2 = PreviewFrameRetriever.this.mRequests.iterator();
            while (iterator2.hasNext()) {
                if (((Request)iterator2.next()).periodic) continue;
                iterator2.remove();
            }
            iterator = iterator.iterator();
            while (iterator.hasNext()) {
                ((Request)iterator.next()).callback.onPreviewFrameAvarable(PreviewFrameRetriever.this, arrby);
            }
            if (PreviewFrameRetriever.this.mRequests.isEmpty()) {
                PreviewFrameRetriever.this.unregisterPreviewCallback();
            }
        }
    }

    public static class PreviewInfo {
        public final int format;
        public final int height;
        public final int width;

        public PreviewInfo(int n, int n2, int n3) {
            this.format = n;
            this.width = n2;
            this.height = n3;
        }
    }

    private static class Request {
        final OnPreviewFrameAvarableListener callback;
        final boolean periodic;

        Request(boolean bl, OnPreviewFrameAvarableListener onPreviewFrameAvarableListener) {
            this.periodic = bl;
            this.callback = onPreviewFrameAvarableListener;
        }
    }

}

