.class public final enum Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;
.super Ljava/lang/Enum;
.source "BaseFastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiComponentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

.field public static final enum OVERLAY_ALERT_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

.field public static final enum REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

.field public static final enum SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

.field public static final enum ZOOM_BAR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    const-string v1, "ZOOM_BAR"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    const-string v1, "SETTING_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    const-string v1, "OVERLAY_ALERT_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->OVERLAY_ALERT_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    const-string v1, "REVIEW_WINDOW"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->OVERLAY_ALERT_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    return-object v0
.end method
