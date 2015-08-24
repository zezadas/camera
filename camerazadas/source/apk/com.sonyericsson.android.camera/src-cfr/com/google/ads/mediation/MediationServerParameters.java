/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation;

import com.google.android.gms.internal.gs;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Deprecated
public abstract class MediationServerParameters {
    protected void a() {
    }

    public void load(Map<String, String> object) throws MappingException {
        Object object2 = new HashMap<String, Field>();
        for (Field field2 : this.getClass().getFields()) {
            Parameter parameter = (Parameter)field2.getAnnotation(Parameter.class);
            if (parameter == null) continue;
            object2.put((String)parameter.name(), (Field)field2);
        }
        if (object2.isEmpty()) {
            gs.W("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Map.Entry entry : object.entrySet()) {
            Field field2;
            field2 = (Field)object2.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                }
                catch (IllegalAccessException var6_11) {
                    gs.W("Server option \"" + (String)entry.getKey() + "\" could not be set: Illegal Access");
                }
                catch (IllegalArgumentException var6_12) {
                    gs.W("Server option \"" + (String)entry.getKey() + "\" could not be set: Bad Type");
                }
                continue;
            }
            gs.S("Unexpected server option: " + (String)entry.getKey() + " = \"" + (String)entry.getValue() + "\"");
        }
        object = new StringBuilder();
        for (Field field3 : object2.values()) {
            if (!((Parameter)field3.getAnnotation(Parameter.class)).required()) continue;
            gs.W("Required server option missing: " + ((Parameter)field3.getAnnotation(Parameter.class)).name());
            if (object.length() > 0) {
                object.append(", ");
            }
            object.append(((Parameter)field3.getAnnotation(Parameter.class)).name());
        }
        if (object.length() > 0) {
            throw new MappingException("Required server option(s) missing: " + object.toString());
        }
        this.a();
    }

    public static final class MappingException
    extends Exception {
        public MappingException(String string) {
            super(string);
        }
    }

    @Retention(value=RetentionPolicy.RUNTIME)
    @Target(value={ElementType.FIELD})
    protected static @interface Parameter {
        public String name();

        public boolean required() default 1;
    }

}

