.class public Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
.super Ljava/lang/Object;
.source "SettingLayoutCoordinatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutCoordinateData"
.end annotation


# instance fields
.field public final anchorRect:Landroid/graphics/Rect;

.field public final containerRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "container"    # Landroid/graphics/Rect;
    .param p2, "anchor"    # Landroid/graphics/Rect;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->containerRect:Landroid/graphics/Rect;

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;->anchorRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method
