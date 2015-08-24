/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.util;

import android.util.Xml;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class XmlElement {
    private Map<String, String> mAttribs = new HashMap<String, String>();
    private List<XmlElement> mChildElmList = new LinkedList<XmlElement>();
    private XmlElement mParentElm = null;
    private final String mTag;
    private String mValue = "";

    private XmlElement(String string) {
        this.mTag = string;
    }

    private void addAttrib(String string, String string2) {
        this.mAttribs.put(string, string2);
    }

    private void addChildElm(XmlElement xmlElement) {
        this.mChildElmList.add(xmlElement);
        xmlElement.setParent(this);
    }

    /*
     * Exception decompiling
     */
    private static XmlElement doParse(XmlPullParser var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
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

    public static XmlElement parse(String object) {
        try {
            XmlPullParser xmlPullParser = Xml.newPullParser();
            xmlPullParser.setInput(new StringReader((String)object));
            object = XmlElement.doParse(xmlPullParser);
            return object;
        }
        catch (XmlPullParserException var0_1) {
            return null;
        }
    }

    private void setParent(XmlElement xmlElement) {
        this.mParentElm = xmlElement;
    }

    private void setValue(String string) {
        this.mValue = string;
    }

    public String getAttrib(String string, String string2) {
        String string3;
        string = string3 = this.mAttribs.get(string);
        if (string3 == null) {
            string = string2;
        }
        return string;
    }

    public int getAttribAsInt(String string, int n) {
        if ((string = this.mAttribs.get(string)) == null) {
            return n;
        }
        try {
            int n2 = Integer.valueOf(string);
            return n2;
        }
        catch (NumberFormatException var1_2) {
            return n;
        }
    }

    public XmlElement getChild(String string) {
        XmlElement xmlElement;
        XmlElement xmlElement2 = null;
        Iterator<XmlElement> iterator = this.mChildElmList.iterator();
        do {
            xmlElement = xmlElement2;
        } while (iterator.hasNext() && !(xmlElement = iterator.next()).getTag().equals(string));
        return xmlElement;
    }

    public List<XmlElement> getChildren(String string) {
        ArrayList<XmlElement> arrayList = new ArrayList<XmlElement>();
        for (XmlElement xmlElement : this.mChildElmList) {
            if (!xmlElement.getTag().equals(string)) continue;
            arrayList.add(xmlElement);
        }
        return arrayList;
    }

    public XmlElement getParent() {
        return this.mParentElm;
    }

    public String getTag() {
        return this.mTag;
    }

    public String getValue() {
        return this.mValue;
    }

    public int getValueAsInt(int n) {
        if (this.mValue == null) {
            return n;
        }
        try {
            int n2 = Integer.valueOf(this.mValue);
            return n2;
        }
        catch (NumberFormatException var3_3) {
            return n;
        }
    }
}

