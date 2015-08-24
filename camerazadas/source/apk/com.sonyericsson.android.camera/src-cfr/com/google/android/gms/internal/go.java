/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gs;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

@ez
public class go {
    public static final a<Void> wy = new a(){

        public /* synthetic */ Object b(InputStream inputStream) {
            return this.c(inputStream);
        }

        public Void c(InputStream inputStream) {
            return null;
        }

        public /* synthetic */ Object cJ() {
            return this.dq();
        }

        public Void dq() {
            return null;
        }
    };

    public <T> Future<T> a(final String string, final a<T> a) {
        return gi.submit(new Callable<T>(){

            /*
             * Unable to fully structure code
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Lifted jumps to return sites
             */
            @Override
            public T call() {
                block11 : {
                    var5_1 = null;
                    var2_2 = null;
                    var4_12 = null;
                    var3_17 = (HttpURLConnection)new URL(string).openConnection();
                    var3_17.connect();
                    var1_18 = var3_17.getResponseCode();
                    if (var1_18 < 200 || var1_18 > 299) break block11;
                    var2_3 = a.b(var3_17.getInputStream());
                    if (var3_17 == null) return var2_3;
                    var3_17.disconnect();
                    return var2_3;
                }
                if (var3_17 == null) return a.cJ();
                var3_17.disconnect();
                return a.cJ();
                catch (MalformedURLException var2_4) {
                    var3_17 = var4_12;
                    var4_12 = var2_4;
                    ** GOTO lbl41
                    catch (IOException var4_13) {
                        var3_17 = var5_1;
                        ** GOTO lbl28
                        catch (Throwable var2_11) {
                            ** GOTO lbl37
                        }
                        catch (IOException var4_15) {}
lbl28: // 2 sources:
                        var2_7 = var3_17;
                        try {
                            gs.d("Error making HTTP request.", var4_12);
                            if (var3_17 == null) return a.cJ();
                            var3_17.disconnect();
                            return a.cJ();
                        }
                        catch (Throwable var4_14) {
                            var3_17 = var2_8;
                            var2_9 = var4_14;
lbl37: // 2 sources:
                            if (var3_17 == null) throw var2_10;
                            var3_17.disconnect();
                            throw var2_10;
                        }
                        catch (MalformedURLException var4_16) {}
lbl41: // 2 sources:
                        var2_6 = var3_17;
                        gs.d("Error making HTTP request.", var4_12);
                        if (var3_17 == null) return a.cJ();
                        var3_17.disconnect();
                        return a.cJ();
                    }
                }
            }
        });
    }

    public static interface a<T> {
        public T b(InputStream var1);

        public T cJ();
    }

}

