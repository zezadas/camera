.class public final enum Lcom/sonyericsson/android/camera/controller/EventAction;
.super Ljava/lang/Enum;
.source "EventAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/controller/EventAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum MOVE:Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum STOP:Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum STRETCH:Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

.field public static final enum UP:Lcom/sonyericsson/android/camera/controller/EventAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 9
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->STOP:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 10
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->MOVE:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 11
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 12
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 13
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "STRETCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->STRETCH:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/EventAction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->DOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->STOP:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->MOVE:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->UP:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->STRETCH:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventAction;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/EventAction;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/EventAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/EventAction;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventAction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/EventAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/EventAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/EventAction;

    return-object v0
.end method
