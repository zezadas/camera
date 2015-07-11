.class public interface abstract Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
.super Ljava/lang/Object;
.source "SettingDialogInterface.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
.end method

.method public abstract getSelectedItemRect(Landroid/graphics/Rect;)Z
.end method

.method public abstract hitTest(II)Z
.end method

.method public abstract isNested()Z
.end method

.method public abstract open(Landroid/view/ViewGroup;)V
.end method

.method public abstract open(Landroid/view/ViewGroup;Z)V
.end method

.method public abstract setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
.end method

.method public abstract setCloseAnimation(Landroid/view/animation/Animation;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V
.end method

.method public abstract setSensorOrientation(I)V
.end method

.method public abstract setStateListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;)V
.end method
