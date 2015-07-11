.class public final enum Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycleIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

.field public static final enum ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;


# instance fields
.field private final mLog:Ljava/lang/String;

.field private final mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1073
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_CREATE"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onCreate()"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1076
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_NEW_INTENT"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onNewIntent()"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1079
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_START"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onStart()"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1082
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_RESTART"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onRestart()"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1085
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_RESUME"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onResume()"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1088
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x5

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v4, "onPause()"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1091
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_STOP"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v4, "onStop()"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1094
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    const-string v1, "ON_DESTROY"

    const/4 v2, 0x7

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v4, "onDestroy()"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .line 1072
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V
    .locals 0
    .param p3, "performanceIds"    # Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .param p4, "log"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1105
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 1106
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    .line 1107
    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1072
    const-class v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;
    .locals 1

    .prologue
    .line 1072
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-object v0
.end method
