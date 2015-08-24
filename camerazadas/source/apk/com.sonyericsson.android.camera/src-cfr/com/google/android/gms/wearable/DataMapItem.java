/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import com.google.android.gms.internal.pc;
import com.google.android.gms.internal.pd;
import com.google.android.gms.internal.pm;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DataMapItem {
    private final DataMap auX;
    private final Uri mUri;

    private DataMapItem(DataItem dataItem) {
        this.mUri = dataItem.getUri();
        this.auX = this.a((DataItem)dataItem.freeze());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private DataMap a(DataItem object) {
        if (object.getData() == null && object.getAssets().size() > 0) {
            throw new IllegalArgumentException("Cannot create DataMapItem from a DataItem  that wasn't made with DataMapItem.");
        }
        if (object.getData() == null) {
            return new DataMap();
        }
        try {
            ArrayList<Asset> arrayList = new ArrayList<Asset>();
            int n = object.getAssets().size();
            for (int i = 0; i < n; ++i) {
                DataItemAsset dataItemAsset = object.getAssets().get(Integer.toString(i));
                if (dataItemAsset == null) {
                    throw new IllegalStateException("Cannot find DataItemAsset referenced in data at " + i + " for " + object);
                }
                arrayList.add(Asset.createFromRef(dataItemAsset.getId()));
            }
            return pc.a(new pc.a(pd.n(object.getData()), arrayList));
        }
        catch (pm var1_2) {
            throw new IllegalStateException("Unable to parse. Not a DataItem.");
        }
    }

    public static DataMapItem fromDataItem(DataItem dataItem) {
        if (dataItem == null) {
            throw new IllegalStateException("provided dataItem is null");
        }
        return new DataMapItem(dataItem);
    }

    public DataMap getDataMap() {
        return this.auX;
    }

    public Uri getUri() {
        return this.mUri;
    }
}

