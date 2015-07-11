.class Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$5;
.super Ljava/lang/Object;
.source "GeotagManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->confirmLocationService(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$5;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$5;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->access$102(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Z)Z

    .line 463
    return-void
.end method
