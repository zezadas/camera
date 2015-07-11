.class final enum Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;
.super Ljava/lang/Enum;
.source "ResolutionOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PreviewVideoResolutionDependentValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

.field public static final enum FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

.field public static final enum FULL_HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

.field public static final enum FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

.field public static final enum HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;


# instance fields
.field private final mDefaultVideoSizeValue:I

.field private final mVideoSizeOptionsValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0x7f090224

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    const-string v1, "FOUR_K_UHD"

    const v2, 0x7f0e001f

    const v3, 0x7f090221

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    const-string v1, "FULL_HD_60FPS"

    const v2, 0x7f0e0023

    invoke-direct {v0, v1, v5, v2, v8}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    const-string v1, "FULL_HD"

    const v2, 0x7f0e0023

    invoke-direct {v0, v1, v6, v2, v8}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    const-string v1, "HD"

    const v2, 0x7f0e0024

    const v3, 0x7f090225

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->HD:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "options"    # I
    .param p4, "defaultSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->mVideoSizeOptionsValue:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->mDefaultVideoSizeValue:I

    .line 48
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .prologue
    .line 32
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->mVideoSizeOptionsValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    .prologue
    .line 32
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->mDefaultVideoSizeValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/ResolutionOptions$PreviewVideoResolutionDependentValues;

    return-object v0
.end method
