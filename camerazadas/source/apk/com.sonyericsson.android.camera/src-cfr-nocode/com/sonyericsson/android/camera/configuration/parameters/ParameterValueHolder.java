/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 */
public class ParameterValueHolder<T extends ParameterValue> {
    public static final String DELIMITER = "-";
    public static final String NO_VALUE = "NO_VALUE";
    public static final String REGULAR_EXPRESSION = "@";
    private static final String TAG = "ParameterValueHolder";
    private boolean mChanged;
    private T mDefaultValue;
    private T[] mOptions;
    private ParameterValueHolder<T> mState;

    public ParameterValueHolder(T var1);

    static /* synthetic */ boolean access$002(ParameterValueHolder var0, boolean var1);

    static /* synthetic */ ParameterState access$102(ParameterValueHolder var0, ParameterState var1);

    private T deserialize(String var1);

    private ParameterValueHolder<T> getParameterState(String var1);

    private String serialize(T var1);

    public void applyCurrentValue();

    public void applyRecommendedValue(T var1);

    public String createValueString();

    public boolean forceChange(T var1);

    public T get();

    public T getDefaultValue();

    public T[] getOptions();

    public T getOriginalValue();

    public T getRecommendedValue();

    public boolean hasChanged();

    public void onApplied();

    public void parseValueString(String var1);

    public boolean reset();

    public void set(T var1);

    public T setDefaultValue();

    public void setOptions(T[] var1);

    public T updateDefaultValue(T var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ForceChangedState
    extends ParameterValueHolder<T> {
        final /* synthetic */ ParameterValueHolder this$0;

        public ForceChangedState(ParameterValueHolder var1);

        public ForceChangedState(T var1, T var2, T var3);

        @Override
        public void applyCurrentValue();

        @Override
        public void applyRecommendedValue(T var1);

        @Override
        public boolean forceChange(T var1);

        @Override
        public boolean reset();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NormalState
    extends ParameterValueHolder<T> {
        final /* synthetic */ ParameterValueHolder this$0;

        public NormalState(ParameterValueHolder var1);

        public NormalState(T var1, T var2, T var3);

        @Override
        public void applyCurrentValue();

        @Override
        public void applyRecommendedValue(T var1);

        @Override
        public boolean forceChange(T var1);

        @Override
        public boolean reset();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class ParameterState {
        protected T mCurrentValue;
        protected T mOriginalValue;
        protected T mRecommendedValue;
        final /* synthetic */ ParameterValueHolder this$0;

        public ParameterState(ParameterValueHolder var1);

        public ParameterState(T var1, T var2, T var3);

        public abstract void applyCurrentValue();

        public abstract void applyRecommendedValue(T var1);

        public abstract boolean forceChange(T var1);

        public final T getCurrentValue();

        public final T getOriginalValue();

        public final T getRecommendedValue();

        public abstract boolean reset();

        public final void setCurrentValue(T var1);

        public final void setOriginalValue(T var1);

        public final void setRecommendedValue(T var1);
    }

}

