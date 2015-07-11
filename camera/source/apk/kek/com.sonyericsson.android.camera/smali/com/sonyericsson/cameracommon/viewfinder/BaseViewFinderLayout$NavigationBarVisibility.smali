.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
.super Ljava/lang/Enum;
.source "BaseViewFinderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationBarVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

.field public static final enum HIDE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

.field public static final enum LOW_PROFILE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

.field public static final enum VISIBLE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    const-string v1, "LOW_PROFILE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->HIDE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->HIDE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    return-object v0
.end method
