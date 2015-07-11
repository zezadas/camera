.class public Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;,
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;,
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;,
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;
    }
.end annotation


# static fields
.field private static final BASE_CONDITION_TAG:Ljava/lang/String; = "base-condition"

.field private static final CHECK_CONDITION_TAG:Ljava/lang/String; = "check-condition"

.field private static final KEY_ATTRIBUTE_INDEX:I = 0x0

.field private static final KEY_VALUE_SET_TAG:Ljava/lang/String; = "key-value-set"

.field private static final LOCAL_LOG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VALIDATION_SET_TAG:Ljava/lang/String; = "validation-set"

.field private static final VALUE_ATTRIBUTE_INDEX:I = 0x1

.field private static mInvalidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mIsAlreadyLoaded:Z

.field private static mValidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mIsAlreadyLoaded:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method private static loadBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p0, "validationCase"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 271
    .local v0, "eventType":I
    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const-string v4, "base-condition"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 276
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 278
    :pswitch_0
    const-string v4, "key-value-set"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v1, v3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->addBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V

    goto :goto_1

    .line 290
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static loadCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p0, "validationCase"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 295
    .local v0, "eventType":I
    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const-string v4, "check-condition"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 300
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 302
    :pswitch_0
    const-string v4, "key-value-set"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v1, v3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->addCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V

    goto :goto_1

    .line 314
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static loadCheckList(Landroid/content/Context;Ljava/util/List;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 214
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 217
    .local v4, "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    if-eqz v1, :cond_4

    .line 218
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .local v3, "type":I
    move-object v5, v4

    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .local v5, "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    .line 221
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 222
    .local v2, "tag":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v4, v5

    .line 219
    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :goto_2
    :try_start_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    move-object v5, v4

    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_0

    .line 225
    :pswitch_0
    :try_start_3
    const-string v6, "validation-set"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    new-instance v4, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;-><init>(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;)V

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_2

    .line 228
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_1
    const-string v6, "base-condition"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 230
    invoke-static {v5, v1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v5

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_2

    .line 231
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_2
    const-string v6, "check-condition"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-static {v5, v1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v5

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_2

    .line 238
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :pswitch_1
    const-string v6, "validation-set"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 247
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 248
    .end local v3    # "type":I
    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :goto_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 249
    new-instance v6, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    const-string v7, "loadCheckList():[XmlPullParserException]"

    invoke-direct {v6, v7}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 250
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 252
    new-instance v6, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    const-string v7, "loadCheckList():[IOException]"

    invoke-direct {v6, v7}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v3    # "type":I
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_3
    move-object v4, v5

    .line 266
    .end local v3    # "type":I
    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_4
    return-void

    .line 250
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v3    # "type":I
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_4

    .line 247
    .end local v3    # "type":I
    :catch_3
    move-exception v0

    goto :goto_3

    .line 222
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invalidListXmlId"    # I
    .param p2, "validListXmlId"    # I
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    const-class v3, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mIsAlreadyLoaded:Z

    if-nez v2, :cond_0

    .line 76
    sget-object v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    invoke-static {p0, v2, p1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    .line 77
    sget-object v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    invoke-static {p0, v2, p2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    .line 78
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mIsAlreadyLoaded:Z

    .line 86
    :cond_0
    sget-object v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;

    .line 87
    .local v1, "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    invoke-virtual {v1, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->isBaseCondition(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v1, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->checkInvalid(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 94
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;

    .line 95
    .restart local v1    # "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    invoke-virtual {v1, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->isBaseCondition(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v1, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->checkValid(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    .end local v1    # "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_4
    monitor-exit v3

    return-void
.end method
