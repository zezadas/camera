/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataItemAsset;

public class i
implements DataItemAsset {
    private final String BL;
    private final String JO;

    public i(DataItemAsset dataItemAsset) {
        this.BL = dataItemAsset.getId();
        this.JO = dataItemAsset.getDataItemKey();
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.pX();
    }

    @Override
    public String getDataItemKey() {
        return this.JO;
    }

    @Override
    public String getId() {
        return this.BL;
    }

    @Override
    public boolean isDataValid() {
        return true;
    }

    public DataItemAsset pX() {
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("DataItemAssetEntity[");
        stringBuilder.append("@");
        stringBuilder.append(Integer.toHexString(this.hashCode()));
        if (this.BL == null) {
            stringBuilder.append(",noid");
        } else {
            stringBuilder.append(",");
            stringBuilder.append(this.BL);
        }
        stringBuilder.append(", key=");
        stringBuilder.append(this.JO);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}

