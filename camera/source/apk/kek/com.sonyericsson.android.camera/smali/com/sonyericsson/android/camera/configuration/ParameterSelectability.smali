.class public final enum Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
.super Ljava/lang/Enum;
.source "ParameterSelectability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

.field public static final enum FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

.field public static final enum INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

.field public static final enum SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

.field private static final TAG:Ljava/lang/String; = "ParameterSelectability"

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;


# instance fields
.field private final mIsUpdatable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    const-string v1, "FIXED"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    const-string v1, "SELECTABLE"

    invoke-direct {v0, v1, v5, v3}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    const-string v1, "FORCE_CHANGED"

    invoke-direct {v0, v1, v6, v3}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "updatable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->mIsUpdatable:Z

    .line 37
    return-void
.end method

.method public static getSelectability(I)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    .locals 1
    .param p0, "numberOfOptions"    # I

    .prologue
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 63
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    return-object v0
.end method


# virtual methods
.method public isUpdatable()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->mIsUpdatable:Z

    return v0
.end method
