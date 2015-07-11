.class public final enum Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;
.super Ljava/lang/Enum;
.source "FocusRectanglesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/FocusRectanglesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RectangleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

.field public static final enum DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

.field public static final enum INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

.field public static final enum SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

.field public static final enum TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    const-string v1, "SELECTED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->TRANSPARENT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->$VALUES:[Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->$VALUES:[Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    return-object v0
.end method
