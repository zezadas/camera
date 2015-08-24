/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

class dh
extends Number
implements Comparable<dh> {
    private double arR;
    private long arS;
    private boolean arT;

    private dh(double d) {
        this.arR = d;
        this.arT = false;
    }

    private dh(long l) {
        this.arS = l;
        this.arT = true;
    }

    public static dh a(Double d) {
        return new dh(d);
    }

    public static dh cW(String string) throws NumberFormatException {
        try {
            dh dh = new dh(Long.parseLong(string));
            return dh;
        }
        catch (NumberFormatException var1_2) {
            try {
                dh dh = new dh(Double.parseDouble(string));
                return dh;
            }
            catch (NumberFormatException var1_4) {
                throw new NumberFormatException(string + " is not a valid TypedNumber");
            }
        }
    }

    public static dh z(long l) {
        return new dh(l);
    }

    public int a(dh dh) {
        if (this.pA() && dh.pA()) {
            return new Long(this.arS).compareTo(dh.arS);
        }
        return Double.compare(this.doubleValue(), dh.doubleValue());
    }

    @Override
    public byte byteValue() {
        return (byte)this.longValue();
    }

    @Override
    public /* synthetic */ int compareTo(Object object) {
        return this.a((dh)object);
    }

    @Override
    public double doubleValue() {
        if (this.pA()) {
            return this.arS;
        }
        return this.arR;
    }

    public boolean equals(Object object) {
        if (object instanceof dh && this.a((dh)object) == 0) {
            return true;
        }
        return false;
    }

    @Override
    public float floatValue() {
        return (float)this.doubleValue();
    }

    public int hashCode() {
        return new Long(this.longValue()).hashCode();
    }

    @Override
    public int intValue() {
        return this.pC();
    }

    @Override
    public long longValue() {
        return this.pB();
    }

    public boolean pA() {
        return this.arT;
    }

    public long pB() {
        if (this.pA()) {
            return this.arS;
        }
        return (long)this.arR;
    }

    public int pC() {
        return (int)this.longValue();
    }

    public short pD() {
        return (short)this.longValue();
    }

    public boolean pz() {
        if (!this.pA()) {
            return true;
        }
        return false;
    }

    @Override
    public short shortValue() {
        return this.pD();
    }

    public String toString() {
        if (this.pA()) {
            return Long.toString(this.arS);
        }
        return Double.toString(this.arR);
    }
}

