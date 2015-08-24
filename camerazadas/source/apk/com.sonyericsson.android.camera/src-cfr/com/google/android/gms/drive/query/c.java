/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.b;
import com.google.android.gms.drive.query.internal.Operator;
import com.google.android.gms.drive.query.internal.f;
import java.util.Iterator;
import java.util.List;

public class c
implements f<String> {
    public <T> String a(b<T> b, T t) {
        return String.format("contains(%s,%s)", b.getName(), t);
    }

    public <T> String a(Operator operator, MetadataField<T> metadataField, T t) {
        return String.format("cmp(%s,%s,%s)", operator.getTag(), metadataField.getName(), t);
    }

    public String a(Operator object, List<String> object2) {
        StringBuilder stringBuilder = new StringBuilder(object.getTag() + "(");
        object2 = object2.iterator();
        object = "";
        while (object2.hasNext()) {
            String string = (String)object2.next();
            stringBuilder.append((String)object);
            stringBuilder.append(string);
            object = ",";
        }
        return stringBuilder.append(")").toString();
    }

    @Override
    public /* synthetic */ Object b(b b, Object object) {
        return this.a(b, object);
    }

    @Override
    public /* synthetic */ Object b(Operator operator, MetadataField metadataField, Object object) {
        return this.a(operator, metadataField, object);
    }

    @Override
    public /* synthetic */ Object b(Operator operator, List list) {
        return this.a(operator, list);
    }

    public String bn(String string) {
        return String.format("not(%s)", string);
    }

    public String c(MetadataField<?> metadataField) {
        return String.format("fieldOnly(%s)", metadataField.getName());
    }

    public <T> String c(MetadataField<T> metadataField, T t) {
        return String.format("has(%s,%s)", metadataField.getName(), t);
    }

    @Override
    public /* synthetic */ Object d(MetadataField metadataField) {
        return this.c(metadataField);
    }

    @Override
    public /* synthetic */ Object d(MetadataField metadataField, Object object) {
        return this.c(metadataField, object);
    }

    public String ir() {
        return "all()";
    }

    @Override
    public /* synthetic */ Object is() {
        return this.ir();
    }

    @Override
    public /* synthetic */ Object j(Object object) {
        return this.bn((String)object);
    }
}

