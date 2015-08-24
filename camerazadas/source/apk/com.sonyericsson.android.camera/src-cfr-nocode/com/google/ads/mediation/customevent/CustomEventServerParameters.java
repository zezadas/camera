/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationServerParameters;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CustomEventServerParameters
extends MediationServerParameters {
    @MediationServerParameters.Parameter(name="class_name", required=1)
    public String className;
    @MediationServerParameters.Parameter(name="label", required=1)
    public String label;
    @MediationServerParameters.Parameter(name="parameter", required=0)
    public String parameter;

    public CustomEventServerParameters();
}

