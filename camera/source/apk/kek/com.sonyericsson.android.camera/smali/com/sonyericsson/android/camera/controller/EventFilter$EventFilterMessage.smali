.class public Lcom/sonyericsson/android/camera/controller/EventFilter$EventFilterMessage;
.super Ljava/lang/Object;
.source "EventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventFilterMessage"
.end annotation


# static fields
.field public static final KEY_ZOOM_START:I = 0x4

.field public static final PINCH_ZOOM_START:I = 0x6

.field public static final RESET:I = 0x7

.field public static final SELFTIMER_FINISH:I = 0x1

.field public static final SELFTIMER_START:I = 0x0

.field public static final STOP:I = 0x8

.field public static final TOUCH_CAPTURE_FINISH:I = 0xa

.field public static final TOUCH_CAPTURE_START:I = 0x9

.field public static final TOUCH_FOCUS_FINISH:I = 0x3

.field public static final TOUCH_FOCUS_START:I = 0x2

.field public static final ZOOM_FINISH:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
