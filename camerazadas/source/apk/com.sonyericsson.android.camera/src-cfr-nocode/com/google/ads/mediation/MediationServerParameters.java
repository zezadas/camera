/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation;

import java.util.Map;

/*
 * Exception performing whole class analysis ignored.
 */
@Deprecated
public abstract class MediationServerParameters {
    public MediationServerParameters();

    protected void a();

    public void load(Map<String, String> var1) throws MappingException;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static final class MappingException
    extends Exception {
        public MappingException(String var1);
    }

    @Retention(value=RetentionPolicy.RUNTIME)
    @Target(value={ElementType.FIELD})
    protected static @interface Parameter {
        public String name();

        public boolean required() default 1;
    }

}

