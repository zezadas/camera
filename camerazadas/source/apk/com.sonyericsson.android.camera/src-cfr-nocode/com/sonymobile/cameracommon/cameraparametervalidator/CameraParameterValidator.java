/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.cameraparametervalidator;

import android.content.Context;
import android.hardware.Camera;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraParameterValidator {
    private static final String BASE_CONDITION_TAG = "base-condition";
    private static final String CHECK_CONDITION_TAG = "check-condition";
    private static final int KEY_ATTRIBUTE_INDEX = 0;
    private static final String KEY_VALUE_SET_TAG = "key-value-set";
    private static final boolean LOCAL_LOG = false;
    private static final String TAG;
    private static final String VALIDATION_SET_TAG = "validation-set";
    private static final int VALUE_ATTRIBUTE_INDEX = 1;
    private static List<ValidationCase> mInvalidSetList;
    private static volatile boolean mIsAlreadyLoaded;
    private static List<ValidationCase> mValidSetList;

    static;

    public CameraParameterValidator();

    private static void loadBaseCondition(ValidationCase var0, XmlPullParser var1) throws XmlPullParserException, IOException;

    private static void loadCheckCondition(ValidationCase var0, XmlPullParser var1) throws XmlPullParserException, IOException;

    private static void loadCheckList(Context var0, List<ValidationCase> var1, int var2);

    public static void validate(Context var0, int var1, int var2, Camera.Parameters var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class KeyValueSet {
        public final String key;
        public final String value;

        public KeyValueSet(String var1, String var2);

        public String toString();
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ParameterValidationError
    extends RuntimeException {
        private static final long serialVersionUID = 0;

        public ParameterValidationError(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ValidationCase {
        private List<KeyValueSet> mBaseConditionList;
        private List<KeyValueSet> mCheckConditionList;

        private ValidationCase();

        /* synthetic */ ValidationCase( var1);

        public void addBaseCondition(KeyValueSet var1);

        public void addCheckCondition(KeyValueSet var1);

        public void checkInvalid(Camera.Parameters var1);

        public void checkValid(Camera.Parameters var1);

        public boolean isBaseCondition(Camera.Parameters var1);

        public String toString();
    }

}

