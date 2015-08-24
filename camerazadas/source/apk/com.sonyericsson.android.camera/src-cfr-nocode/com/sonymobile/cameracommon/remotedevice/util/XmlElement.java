/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.util;

import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/*
 * Exception performing whole class analysis.
 */
public class XmlElement {
    private Map<String, String> mAttribs;
    private List<XmlElement> mChildElmList;
    private XmlElement mParentElm;
    private final String mTag;
    private String mValue;

    private XmlElement(String var1);

    private void addAttrib(String var1, String var2);

    private void addChildElm(XmlElement var1);

    private static XmlElement doParse(XmlPullParser var0);

    public static XmlElement parse(String var0);

    private void setParent(XmlElement var1);

    private void setValue(String var1);

    public String getAttrib(String var1, String var2);

    public int getAttribAsInt(String var1, int var2);

    public XmlElement getChild(String var1);

    public List<XmlElement> getChildren(String var1);

    public XmlElement getParent();

    public String getTag();

    public String getValue();

    public int getValueAsInt(int var1);
}

