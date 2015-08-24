/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.cameraparametervalidator;

import android.content.Context;
import android.hardware.Camera;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class CameraParameterValidator {
    private static final String BASE_CONDITION_TAG = "base-condition";
    private static final String CHECK_CONDITION_TAG = "check-condition";
    private static final int KEY_ATTRIBUTE_INDEX = 0;
    private static final String KEY_VALUE_SET_TAG = "key-value-set";
    private static final boolean LOCAL_LOG = false;
    private static final String TAG = CameraParameterValidator.class.getSimpleName();
    private static final String VALIDATION_SET_TAG = "validation-set";
    private static final int VALUE_ATTRIBUTE_INDEX = 1;
    private static List<ValidationCase> mInvalidSetList;
    private static volatile boolean mIsAlreadyLoaded;
    private static List<ValidationCase> mValidSetList;

    static {
        mIsAlreadyLoaded = false;
        mValidSetList = new ArrayList<ValidationCase>();
        mInvalidSetList = new ArrayList<ValidationCase>();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void loadBaseCondition(ValidationCase validationCase, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int n = xmlPullParser.getEventType();
        while (!(n == 3 && "base-condition".equals(xmlPullParser.getName()))) {
            switch (n) {
                default: {
                    break;
                }
                case 2: {
                    if (!"key-value-set".equals(xmlPullParser.getName())) break;
                    validationCase.addBaseCondition(new KeyValueSet(xmlPullParser.getAttributeValue(0), xmlPullParser.getAttributeValue(1)));
                }
            }
            n = xmlPullParser.next();
        }
        return;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void loadCheckCondition(ValidationCase validationCase, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int n = xmlPullParser.getEventType();
        while (!(n == 3 && "check-condition".equals(xmlPullParser.getName()))) {
            switch (n) {
                default: {
                    break;
                }
                case 2: {
                    if (!"key-value-set".equals(xmlPullParser.getName())) break;
                    validationCase.addCheckCondition(new KeyValueSet(xmlPullParser.getAttributeValue(0), xmlPullParser.getAttributeValue(1)));
                }
            }
            n = xmlPullParser.next();
        }
        return;
    }

    /*
     * Exception decompiling
     */
    private static void loadCheckList(Context var0, List<ValidationCase> var1_7, int var2_8) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [6[CASE]], but top level block is 3[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void validate(Context iterator, int n, int n2, Camera.Parameters parameters) {
        synchronized (CameraParameterValidator.class) {
            if (!mIsAlreadyLoaded) {
                CameraParameterValidator.loadCheckList((Context)iterator, mInvalidSetList, n);
                CameraParameterValidator.loadCheckList((Context)iterator, mValidSetList, n2);
                mIsAlreadyLoaded = true;
            }
            for (ValidationCase validationCase2 : mInvalidSetList) {
                if (!validationCase2.isBaseCondition(parameters)) continue;
                validationCase2.checkInvalid(parameters);
            }
            iterator = mValidSetList.iterator();
            while (iterator.hasNext()) {
                ValidationCase validationCase2;
                validationCase2 = iterator.next();
                if (!validationCase2.isBaseCondition(parameters)) continue;
                validationCase2.checkValid(parameters);
            }
            return;
        }
    }

    private static class KeyValueSet {
        public final String key;
        public final String value;

        public KeyValueSet(String string, String string2) {
            this.key = string;
            this.value = string2;
        }

        public String toString() {
            return "KeyValueSet [KEY=" + this.key + "] [VALUE=" + this.value + "]";
        }
    }

    public static class ParameterValidationError
    extends RuntimeException {
        private static final long serialVersionUID = 0;

        public ParameterValidationError(String string) {
            super(string);
        }
    }

    private static class ValidationCase {
        private List<KeyValueSet> mBaseConditionList = new ArrayList<KeyValueSet>();
        private List<KeyValueSet> mCheckConditionList = new ArrayList<KeyValueSet>();

        private ValidationCase() {
        }

        public void addBaseCondition(KeyValueSet keyValueSet) {
            this.mBaseConditionList.add(keyValueSet);
        }

        public void addCheckCondition(KeyValueSet keyValueSet) {
            this.mCheckConditionList.add(keyValueSet);
        }

        public void checkInvalid(Camera.Parameters parameters) {
            for (KeyValueSet keyValueSet : this.mCheckConditionList) {
                String string = parameters.get(keyValueSet.key);
                if (!keyValueSet.value.equals(string)) continue;
                throw new ParameterValidationError("CameraParameterValidator ERROR : [KEY=" + keyValueSet.key + "]\n" + "  INVALID  : [VALUE=" + keyValueSet.value + "]\n");
            }
        }

        public void checkValid(Camera.Parameters parameters) {
            for (KeyValueSet keyValueSet : this.mCheckConditionList) {
                String string = parameters.get(keyValueSet.key);
                if (keyValueSet.value.equals(string)) continue;
                throw new ParameterValidationError("CameraParameterValidator ERROR : [KEY=" + keyValueSet.key + "\n" + "  EXPECTED : [VALUE=" + keyValueSet.value + "]\n" + "  ACTUAL   : [VALUE=" + string + "]\n");
            }
        }

        public boolean isBaseCondition(Camera.Parameters parameters) {
            for (KeyValueSet keyValueSet : this.mBaseConditionList) {
                String string = parameters.get(keyValueSet.key);
                if (keyValueSet.value.equals(string)) continue;
                return false;
            }
            return true;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("ValidationSet :\n");
            stringBuilder.append("  BaseConditionList :\n");
            for (KeyValueSet keyValueSet2 : this.mBaseConditionList) {
                stringBuilder.append("    ");
                stringBuilder.append(keyValueSet2.toString());
                stringBuilder.append("\n");
            }
            stringBuilder.append("  CheckConditionList :\n");
            for (KeyValueSet keyValueSet2 : this.mCheckConditionList) {
                stringBuilder.append("    ");
                stringBuilder.append(keyValueSet2.toString());
                stringBuilder.append("\n");
            }
            return stringBuilder.toString();
        }
    }

}

