.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
.super Ljava/lang/Enum;
.source "VolumeKey.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field public static final enum VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field public static final enum ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field private static final sParameterTextId:I = 0x7f09011f


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v1, "ZOOM"

    const v2, 0x7f090120

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v1, "VOLUME"

    const v2, 0x7f090122

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v1, "HW_CAMERA_KEY"

    const v2, 0x7f090121

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mIconId:I

    .line 49
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mTextId:I

    .line 50
    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;>;"
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 76
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;)V

    .line 77
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f09011f

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
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
    .line 110
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mValue:Ljava/lang/String;

    return-object v0
.end method
