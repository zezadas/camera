.class public final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

.field public static final enum FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

.field public static final enum MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

.field public static final enum RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 148
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    return-object v0
.end method
