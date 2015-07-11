.class public Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;
.super Ljava/lang/Object;
.source "AutoUploadPluginItem.java"


# instance fields
.field private mChecked:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mPackageClassName:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "packageClassName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mTitle:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mPackageClassName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mPackageClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadPluginItem;->mChecked:Z

    .line 40
    return-void
.end method
