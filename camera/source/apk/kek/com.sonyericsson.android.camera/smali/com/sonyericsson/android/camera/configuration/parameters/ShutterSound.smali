.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
.super Ljava/lang/Enum;
.source "ShutterSound.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field public static final enum SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field private static final sParameterTextId:I = 0x7f090157


# instance fields
.field private final mBooleanValue:Ljava/lang/Boolean;

.field private final mDirectoryName:Ljava/lang/String;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    const-string v1, "SOUND1"

    const v4, 0x7f09002f

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "sound1/"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 29
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    const-string v5, "OFF"

    const v8, 0x7f090030

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "sound0/"

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/Boolean;
    .param p6, "directoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mIconId:I

    .line 60
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mTextId:I

    .line 61
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mBooleanValue:Ljava/lang/Boolean;

    .line 62
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mDirectoryName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static getOptions(Z)[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 7
    .param p0, "isForceSound"    # Z

    .prologue
    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v5

    .line 130
    .local v5, "values":[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    move-object v0, v5

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 131
    .local v4, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    iget-object v6, v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mBooleanValue:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    if-nez p0, :cond_0

    .line 137
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    :cond_2
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object v6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 72
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 73
    return-void
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mBooleanValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mDirectoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f090157

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 160
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
