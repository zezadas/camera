/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.analytics.ExceptionParser;
import com.google.android.gms.analytics.z;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

public class StandardExceptionParser
implements ExceptionParser {
    private final TreeSet<String> Bl = new TreeSet();

    public StandardExceptionParser(Context context, Collection<String> collection) {
        this.setIncludedPackages(context, collection);
    }

    protected StackTraceElement getBestStackTraceElement(Throwable arrstackTraceElement) {
        if ((arrstackTraceElement = arrstackTraceElement.getStackTrace()) == null || arrstackTraceElement.length == 0) {
            return null;
        }
        int n = arrstackTraceElement.length;
        for (int i = 0; i < n; ++i) {
            StackTraceElement stackTraceElement = arrstackTraceElement[i];
            String string = stackTraceElement.getClassName();
            Iterator<String> iterator = this.Bl.iterator();
            while (iterator.hasNext()) {
                if (!string.startsWith(iterator.next())) continue;
                return stackTraceElement;
            }
        }
        return arrstackTraceElement[0];
    }

    protected Throwable getCause(Throwable throwable) {
        while (throwable.getCause() != null) {
            throwable = throwable.getCause();
        }
        return throwable;
    }

    @Override
    public String getDescription(String string, Throwable throwable) {
        return this.getDescription(this.getCause(throwable), this.getBestStackTraceElement(this.getCause(throwable)), string);
    }

    protected String getDescription(Throwable object, StackTraceElement stackTraceElement, String string) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(object.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String string2;
            String[] arrstring = stackTraceElement.getClassName().split("\\.");
            object = string2 = "unknown";
            if (arrstring != null) {
                object = string2;
                if (arrstring.length > 0) {
                    object = arrstring[arrstring.length - 1];
                }
            }
            stringBuilder.append(String.format(" (@%s:%s:%s)", object, stackTraceElement.getMethodName(), stackTraceElement.getLineNumber()));
        }
        if (string != null) {
            stringBuilder.append(String.format(" {%s}", string));
        }
        return stringBuilder.toString();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setIncludedPackages(Context arractivityInfo, Collection<String> object) {
        int n;
        this.Bl.clear();
        Object object2 = new HashSet();
        if (object != null) {
            object2.addAll(object);
        }
        if (arractivityInfo != null) {
            try {
                object = arractivityInfo.getApplicationContext().getPackageName();
                this.Bl.add((String)object);
                arractivityInfo = arractivityInfo.getApplicationContext().getPackageManager().getPackageInfo((String)object, (int)15).activities;
                if (arractivityInfo != null) {
                    int n2 = arractivityInfo.length;
                    for (n = 0; n < n2; ++n) {
                        object2.add(arractivityInfo[n].packageName);
                    }
                }
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                z.U("No package found");
            }
        }
        arractivityInfo = object2.iterator();
        block3 : while (arractivityInfo.hasNext()) {
            object = (String)arractivityInfo.next();
            object2 = this.Bl.iterator();
            n = 1;
            do {
                if (object2.hasNext()) {
                    String string = (String)object2.next();
                    if (!object.startsWith(string)) {
                        if (string.startsWith((String)object)) {
                            this.Bl.remove(string);
                        }
                        if (n == 0) continue block3;
                    }
                } else {
                    this.Bl.add((String)object);
                    continue block3;
                }
                n = 0;
            } while (true);
            break;
        }
        return;
    }
}

