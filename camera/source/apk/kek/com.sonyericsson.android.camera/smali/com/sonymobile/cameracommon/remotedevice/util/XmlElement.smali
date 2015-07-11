.class public Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# instance fields
.field private mAttribs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildElmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field private mParentElm:Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

.field private final mTag:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mValue:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mAttribs:Ljava/util/Map;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mParentElm:Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mChildElmList:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mTag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private addAttrib(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mAttribs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method private addChildElm(Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;)V
    .locals 1
    .param p1, "childElm"    # Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mChildElmList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p1, p0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->setParent(Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;)V

    .line 120
    return-void
.end method

.method private static doParse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .locals 9
    .param p0, "xmlPullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v6, 0x0

    .line 171
    const/4 v4, 0x0

    .line 175
    .local v4, "rootElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    const/4 v0, 0x0

    .line 178
    .local v0, "curElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move-object v6, v4

    .line 231
    :goto_1
    return-object v6

    .line 185
    :pswitch_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "tag":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    invoke-direct {v2, v5}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "elm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    if-nez v0, :cond_1

    .line 191
    move-object v4, v2

    .line 196
    :goto_2
    move-object v0, v2

    .line 199
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 200
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->addAttrib(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 194
    .end local v3    # "i":I
    :cond_1
    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->addChildElm(Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 223
    .end local v2    # "elm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .end local v5    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :pswitch_3
    if-eqz v0, :cond_0

    .line 208
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_4
    if-eqz v0, :cond_0

    .line 214
    :try_start_2
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getParent()Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .locals 3
    .param p0, "xmlString"    # Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 244
    .local v1, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 245
    invoke-static {v1}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->doParse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 247
    .end local v1    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setParent(Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;)V
    .locals 0
    .param p1, "parent"    # Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mParentElm:Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .line 167
    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mValue:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getAttrib(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mAttribs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 92
    move-object v0, p2

    .line 94
    :cond_0
    return-object v0
.end method

.method public getAttribAsInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 105
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mAttribs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "attrib":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 110
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "child":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mChildElmList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .line 132
    .local v1, "eachElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v0, v1

    .line 137
    .end local v1    # "eachElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    :cond_1
    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;>;"
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mChildElmList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .line 149
    .local v1, "eachElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v1    # "eachElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    :cond_1
    return-object v0
.end method

.method public getParent()Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mParentElm:Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueAsInt(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .prologue
    .line 67
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 73
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 71
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
