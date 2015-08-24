/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.updator;

public final class CrQueryParameter {
    public int limit = 0;
    public int offset = 0;
    public String[] projection = null;
    public String[] selectionArgs = null;
    public String sortOrder = null;
    public String where = null;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.projection != null) {
            stringBuilder.append("project:[");
            for (String string : this.projection) {
                stringBuilder.append(string + ",");
            }
            stringBuilder.append("] ");
        }
        if (this.where != null) {
            stringBuilder.append("where:" + this.where + " ");
        }
        if (this.selectionArgs != null) {
            stringBuilder.append("selectionarg:[");
            for (String string : this.selectionArgs) {
                stringBuilder.append(string + ",");
            }
            stringBuilder.append("] ");
        }
        if (this.sortOrder != null) {
            stringBuilder.append("sort:" + this.sortOrder + " ");
        }
        stringBuilder.append("limit:" + this.limit + " ");
        stringBuilder.append("offset:" + this.offset + " ");
        return stringBuilder.toString();
    }
}

