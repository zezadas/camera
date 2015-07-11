.class final enum Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
.super Ljava/lang/Enum;
.source "ViewUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/ViewUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum FWVGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum HVGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum QHD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum WUXGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const-string v1, "WUXGA"

    const/16 v2, 0x780

    const/16 v3, 0x4b0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->WUXGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const-string v1, "FULL_HD"

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->FULL_HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const-string v1, "HD"

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const-string v1, "QHD"

    const/16 v2, 0x3c0

    const/16 v3, 0x21c

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->QHD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const-string v1, "FWVGA"

    const/16 v2, 0x356

    const/16 v3, 0x1e0

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->FWVGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const-string v1, "HVGA"

    const/4 v2, 0x5

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->HVGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->WUXGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->FULL_HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->QHD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->FWVGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->HVGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mWidth:I

    .line 44
    iput p4, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mHeight:I

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    return-object v0
.end method


# virtual methods
.method public getAsRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mWidth:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mWidth:I

    return v0
.end method
