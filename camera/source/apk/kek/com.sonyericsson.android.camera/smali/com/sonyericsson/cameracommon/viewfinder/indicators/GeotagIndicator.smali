.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "GeotagIndicator.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    .line 17
    return-void
.end method

.method private getAcquiredGpsIcon()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquired_gps_vzw_icn:I

    .line 41
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquired_gps_icn:I

    goto :goto_0
.end method

.method private getAcquiringGpsResource()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquiring_gps_vzw_anim:I

    .line 33
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquiring_gps_anim:I

    goto :goto_0
.end method


# virtual methods
.method public isAcquired(Z)V
    .locals 3
    .param p1, "acquired"    # Z

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->getAcquiredGpsIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->getAcquiringGpsResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 25
    .local v0, "geotagAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
