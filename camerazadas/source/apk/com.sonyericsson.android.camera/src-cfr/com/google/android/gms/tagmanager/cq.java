/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.ol;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;
import com.google.android.gms.tagmanager.ba;
import com.google.android.gms.tagmanager.bg;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.ce;
import com.google.android.gms.tagmanager.cr;
import com.google.android.gms.tagmanager.o;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

class cq
implements o.f {
    private final String aoc;
    private final ExecutorService aqA;
    private bg<ol.a> aqt;
    private final Context mContext;

    cq(Context context, String string) {
        this.mContext = context;
        this.aoc = string;
        this.aqA = Executors.newSingleThreadExecutor();
    }

    private cr.c a(ByteArrayOutputStream object) {
        try {
            object = ba.cG(object.toString("UTF-8"));
            return object;
        }
        catch (UnsupportedEncodingException var1_2) {
            bh.S("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        }
        catch (JSONException var1_3) {
            bh.W("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private void d(ol.a a) throws IllegalArgumentException {
        if (a.gs == null && a.ass == null) {
            throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
        }
    }

    private cr.c k(byte[] object) {
        block4 : {
            object = cr.b(c.f.a((byte[])object));
            if (object == null) break block4;
            try {
                bh.V("The container was successfully loaded from the resource (using binary file)");
            }
            catch (pm var1_2) {
                bh.T("The resource file is corrupted. The container cannot be extracted from the binary file");
                return null;
            }
            catch (cr.g var1_3) {
                bh.W("The resource file is invalid. The container from the binary file is invalid");
                return null;
            }
        }
        return object;
    }

    @Override
    public void a(bg<ol.a> bg) {
        this.aqt = bg;
    }

    @Override
    public void b(final ol.a a) {
        this.aqA.execute(new Runnable(){

            @Override
            public void run() {
                cq.this.c(a);
            }
        });
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    boolean c(ol.a a) {
        FileOutputStream fileOutputStream;
        File file = this.oS();
        try {
            fileOutputStream = new FileOutputStream(file);
        }
        catch (FileNotFoundException var1_2) {
            bh.T("Error opening resource file for writing");
            return false;
        }
        fileOutputStream.write(pn.f(a));
        try {
            fileOutputStream.close();
            return true;
        }
        catch (IOException var1_3) {
            bh.W("error closing stream for writing resource to disk");
            return true;
        }
        catch (IOException iOException) {
            try {
                bh.W("Error writing resource to disk. Removing resource from disk.");
                file.delete();
            }
            catch (Throwable var1_6) {
                try {
                    fileOutputStream.close();
                }
                catch (IOException var2_9) {
                    bh.W("error closing stream for writing resource to disk");
                    throw var1_6;
                }
                throw var1_6;
            }
            try {
                fileOutputStream.close();
                return false;
            }
            catch (IOException var1_5) {
                bh.W("error closing stream for writing resource to disk");
                return false;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public cr.c ff(int var1_1) {
        var3_2 = this.mContext.getResources().openRawResource(var1_1);
        bh.V("Attempting to load a container from the resource ID " + var1_1 + " (" + this.mContext.getResources().getResourceName(var1_1) + ")");
        try {
            var2_3 = new ByteArrayOutputStream();
            cr.b((InputStream)var3_2, (OutputStream)var2_3);
            var3_2 = this.a((ByteArrayOutputStream)var2_3);
            if (var3_2 != null) {
                bh.V("The container was successfully loaded from the resource (using JSON file format)");
                return var3_2;
            } else {
                ** GOTO lbl18
            }
        }
        catch (IOException var2_5) {
            bh.W("Error reading the default container with resource ID " + var1_1 + " (" + this.mContext.getResources().getResourceName(var1_1) + ")");
            return null;
        }
        catch (Resources.NotFoundException var2_4) {
            bh.W("Failed to load the container. No default container resource found with the resource ID " + var1_1);
            return null;
        }
lbl18: // 3 sources:
        return this.k(var2_3.toByteArray());
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    void oR() {
        if (this.aqt == null) {
            throw new IllegalStateException("Callback must be set before execute");
        }
        this.aqt.ob();
        bh.V("Attempting to load resource from disk");
        if ((ce.oJ().oK() == ce.a.aqi || ce.oJ().oK() == ce.a.aqj) && this.aoc.equals(ce.oJ().getContainerId())) {
            this.aqt.a(bg.a.apM);
            return;
        }
        try {
            var1_1 = new FileInputStream(this.oS());
        }
        catch (FileNotFoundException var1_2) {
            bh.S("Failed to find the resource in the disk");
            this.aqt.a(bg.a.apM);
            return;
        }
        var2_7 = new ByteArrayOutputStream();
        cr.b(var1_1, (OutputStream)var2_7);
        var2_7 = ol.a.l(var2_7.toByteArray());
        this.d((ol.a)var2_7);
        this.aqt.l((ol.a)var2_7);
        try {
            var1_1.close();
        }
        catch (IOException var1_3) {
            bh.W("Error closing stream for reading resource from disk");
        }
        ** GOTO lbl52
        catch (IOException var2_8) {
            this.aqt.a(bg.a.apN);
            bh.W("Failed to read the resource from disk");
            {
                catch (Throwable var2_10) {
                    try {
                        var1_1.close();
                    }
                    catch (IOException var1_6) {
                        bh.W("Error closing stream for reading resource from disk");
                        throw var2_10;
                    }
                    throw var2_10;
                }
            }
            try {
                var1_1.close();
            }
            catch (IOException var1_4) {
                bh.W("Error closing stream for reading resource from disk");
            }
            ** GOTO lbl52
            catch (IllegalArgumentException var2_9) {
                this.aqt.a(bg.a.apN);
                bh.W("Failed to read the resource from disk. The resource is inconsistent");
                try {
                    var1_1.close();
                }
                catch (IOException var1_5) {
                    bh.W("Error closing stream for reading resource from disk");
                }
lbl52: // 6 sources:
                bh.V("The Disk resource was successfully read.");
                return;
            }
        }
    }

    File oS() {
        String string = "resource_" + this.aoc;
        return new File(this.mContext.getDir("google_tagmanager", 0), string);
    }

    @Override
    public void oc() {
        this.aqA.execute(new Runnable(){

            @Override
            public void run() {
                cq.this.oR();
            }
        });
    }

    @Override
    public void release() {
        synchronized (this) {
            this.aqA.shutdown();
            return;
        }
    }

}

