.class public final enum Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
.super Ljava/lang/Enum;
.source "LaunchConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtraOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

.field public static final enum OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    const-string v1, "OPEN_SETTINGS_MENU"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    return-object v0
.end method
