.class public final enum Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
.super Ljava/lang/Enum;
.source "SettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/settings/SettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final enum SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;


# instance fields
.field private final mGroup:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "FACING"

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "FLASH_LIGHT"

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "SCENE"

    invoke-direct {v0, v1, v6, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "CONTROL"

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "MENU"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "SELF_TIMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const-string v1, "BLANK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->$VALUES:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/view/settings/SettingGroup;)V
    .locals 0
    .param p3, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->mGroup:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->$VALUES:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    return-object v0
.end method


# virtual methods
.method public getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->mGroup:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    return-object v0
.end method
