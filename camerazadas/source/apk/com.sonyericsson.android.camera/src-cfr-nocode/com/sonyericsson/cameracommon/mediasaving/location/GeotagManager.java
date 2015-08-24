/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.location;

import android.content.Context;
import android.content.DialogInterface;
import android.location.Location;
import android.location.LocationManager;
import android.widget.CompoundButton;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagLocationListener;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GeotagManager {
    private static final String TAG;
    private boolean mAcquiring;
    private final Context mContext;
    private boolean mIsItemChecked;
    private LocationAcquiredListener mLocationAcquiredListener;
    private GeotagLocationListener mLocationListenerGps;
    private GeotagLocationListener mLocationListenerNetwork;
    private LocationManager mLocationManager;

    static;

    public GeotagManager(Context var1);

    static /* synthetic */ void access$000(GeotagManager var0, Geotag var1, BaseActivity var2, SettingDialogController var3, GeotagSettingListener var4);

    static /* synthetic */ boolean access$100(GeotagManager var0);

    static /* synthetic */ boolean access$102(GeotagManager var0, boolean var1);

    private void checkLocationService(Geotag var1, BaseActivity var2, SettingDialogController var3, GeotagSettingListener var4);

    public static Geotag getGeotag(BaseActivity var0, Geotag var1);

    private static boolean isLocationServiceAvailable(BaseActivity var0);

    public void assignResource();

    public void confirmLocationService(BaseActivity var1, CommonSettings var2, GeotagSettingListener var3);

    public Location getCurrentLocation();

    public GeotagLocationListener getLocationListener(String var1);

    public boolean isAcquiring();

    public boolean isDisabled();

    public boolean isGpsAcquired();

    public boolean isNetworkAcquired();

    public void notifyStatus();

    public void release();

    public void releaseResource();

    public void setGeotag(Geotag var1, BaseActivity var2, SettingDialogController var3, GeotagSettingListener var4);

    public void setLocationAcquiredListener(LocationAcquiredListener var1);

    public void startLocationUpdates(boolean var1, boolean var2) throws SecurityException;

    public void stopReceivingLocationUpdates();

    public void updateLocation(CommonSettingValue var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConfirmLocationAccessDialogListener
    implements DialogInterface.OnClickListener {
        private final BaseActivity mActivity;
        private final GeotagSettingListener mListener;
        private final CommonSettings mSettings;
        final /* synthetic */ GeotagManager this$0;

        public ConfirmLocationAccessDialogListener(GeotagManager var1, BaseActivity var2, CommonSettings var3, GeotagSettingListener var4);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

}

