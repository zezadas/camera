.class public final enum Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
.super Ljava/lang/Enum;
.source "ParameterCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ParameterCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

.field public static final enum CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

.field public static final enum COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    .line 5
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const-string v1, "CAPTURING_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    return-object v0
.end method
