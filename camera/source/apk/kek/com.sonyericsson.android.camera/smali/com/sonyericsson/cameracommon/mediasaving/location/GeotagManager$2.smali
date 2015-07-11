.class Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;
.super Ljava/lang/Object;
.source "GeotagManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field final synthetic val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field final synthetic val$listener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

.field final synthetic val$settingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$settingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$listener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$activity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$settingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;->val$listener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->access$000(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 339
    return-void
.end method
