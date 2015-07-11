.class public Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;
.super Ljava/lang/Object;
.source "FastCapturingParameterChanger.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
        ">;"
    }
.end annotation


# instance fields
.field private mKey:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

.field private mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p3, "viewFinder"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;->mKey:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 28
    iput-object p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .line 29
    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;->mKey:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastCapturingParameterChanger;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 34
    return-void
.end method
