.class public final Lcom/sonyericsson/android/camera/util/DebugEventIntruder;
.super Ljava/lang/Thread;
.source "DebugEventIntruder.java"


# static fields
.field private static final EVENT_DATA_FILENAME:Ljava/lang/String; = "DebugEvent.dat"

.field private static EVENT_MAX:I = 0x0

.field private static LOCATION_LISTENER_GPS:I = 0x0

.field private static LOCATION_LISTENER_NET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DebugEventIntruder"


# instance fields
.field private mDebugEventDataFile:Ljava/io/File;

.field private mListener:Landroid/hardware/Camera$ErrorCallback;

.field private mLocationListeners:[Landroid/location/LocationListener;

.field private mLocationProviders:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x10

    sput v0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->EVENT_MAX:I

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->LOCATION_LISTENER_GPS:I

    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->LOCATION_LISTENER_NET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    new-array v0, v1, [Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    .line 85
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method private behaviour(Ljava/io/InputStreamReader;)V
    .locals 11
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "event":I
    const/4 v4, 0x0

    .line 181
    .local v4, "provider":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->getEventData(Ljava/io/InputStreamReader;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    sget v8, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->EVENT_MAX:I

    div-int v4, v1, v8

    .line 186
    sget v8, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->EVENT_MAX:I

    rem-int/2addr v1, v8

    .line 189
    :try_start_1
    iget-object v8, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    aget-object v2, v8, v4

    .line 190
    .local v2, "listener":Landroid/location/LocationListener;
    iget-object v8, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    aget-object v5, v8, v4

    .line 191
    .local v5, "providerName":Ljava/lang/String;
    if-ne v1, v9, :cond_1

    .line 192
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-interface {v2, v5, v8, v9}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    .end local v2    # "listener":Landroid/location/LocationListener;
    .end local v5    # "providerName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "listener":Landroid/location/LocationListener;
    .restart local v5    # "providerName":Ljava/lang/String;
    :cond_1
    if-ne v1, v10, :cond_2

    .line 194
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v2, v5, v8, v9}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 244
    .end local v2    # "listener":Landroid/location/LocationListener;
    .end local v5    # "providerName":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 196
    .restart local v2    # "listener":Landroid/location/LocationListener;
    .restart local v5    # "providerName":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x3

    if-ne v1, v8, :cond_3

    .line 197
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v2, v5, v8, v9}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 198
    :cond_3
    const/4 v8, 0x4

    if-ne v1, v8, :cond_4

    .line 199
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 200
    .local v3, "location":Landroid/location/Location;
    const-wide v8, 0x405e800000000000L    # 122.0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 201
    const-wide v8, 0x4046800000000000L    # 45.0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 202
    invoke-interface {v2, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 203
    .end local v3    # "location":Landroid/location/Location;
    :cond_4
    const/4 v8, 0x5

    if-ne v1, v8, :cond_5

    .line 204
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v3    # "location":Landroid/location/Location;
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 206
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 207
    invoke-interface {v2, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 208
    .end local v3    # "location":Landroid/location/Location;
    :cond_5
    const/4 v8, 0x6

    if-ne v1, v8, :cond_a

    .line 209
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 213
    .restart local v3    # "location":Landroid/location/Location;
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;

    move-result-object v7

    .line 214
    .local v7, "value":Ljava/lang/Double;
    if-nez v7, :cond_6

    .line 215
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 219
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;

    move-result-object v7

    .line 220
    if-nez v7, :cond_7

    .line 221
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 225
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;

    move-result-object v7

    .line 226
    if-nez v7, :cond_8

    .line 230
    :goto_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->getExtraDataLong(Ljava/io/InputStreamReader;)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 231
    .local v6, "time":Ljava/lang/Long;
    if-nez v6, :cond_9

    .line 238
    :goto_4
    :try_start_4
    invoke-interface {v2, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 217
    .end local v6    # "time":Ljava/lang/Long;
    :cond_6
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 235
    .end local v7    # "value":Ljava/lang/Double;
    :catch_2
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "value":Ljava/lang/Double;
    :cond_7
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_2

    .line 228
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_3

    .line 233
    .restart local v6    # "time":Ljava/lang/Long;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setTime(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 239
    .end local v3    # "location":Landroid/location/Location;
    .end local v6    # "time":Ljava/lang/Long;
    .end local v7    # "value":Ljava/lang/Double;
    :cond_a
    if-nez v1, :cond_0

    .line 240
    :try_start_8
    iget-object v8, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mListener:Landroid/hardware/Camera$ErrorCallback;

    if-eqz v8, :cond_0

    .line 241
    iget-object v8, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mListener:Landroid/hardware/Camera$ErrorCallback;

    const/16 v9, 0x64

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0
.end method

.method private checkFile()V
    .locals 6

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 120
    .local v2, "filelist":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 124
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    :try_start_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DebugEvent.dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method private getEventData(Ljava/io/InputStreamReader;)I
    .locals 7
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, "ev":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 308
    .local v1, "character":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    int-to-char v5, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 316
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 323
    :goto_1
    return v3

    .line 312
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 320
    .restart local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;
    .locals 6
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 256
    .local v1, "character":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    int-to-char v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 268
    .local v3, "value":Ljava/lang/Double;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 272
    :goto_1
    return-object v3

    .line 260
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Double;
    :cond_1
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 269
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Double;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private getExtraDataLong(Ljava/io/InputStreamReader;)Ljava/lang/Long;
    .locals 6
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 282
    .local v1, "character":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    int-to-char v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 289
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 294
    .local v3, "value":Ljava/lang/Long;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 298
    :goto_1
    return-object v3

    .line 286
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Long;
    :cond_1
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 295
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Long;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private removeEvent()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 329
    .local v0, "b":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    .line 330
    if-nez v0, :cond_0

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 147
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->checkFile()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    .local v1, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->behaviour(Ljava/io/InputStreamReader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    if-eqz v1, :cond_2

    .line 165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 169
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->removeEvent()V

    move-object v0, v1

    .line 170
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 163
    :goto_3
    if-eqz v0, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 169
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->removeEvent()V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v2

    .line 163
    :goto_5
    if-eqz v0, :cond_4

    .line 165
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 169
    :cond_4
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->removeEvent()V

    goto :goto_0

    .line 161
    :catch_2
    move-exception v2

    .line 163
    :goto_7
    if-eqz v0, :cond_5

    .line 165
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 169
    :cond_5
    :goto_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->removeEvent()V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v0, :cond_6

    .line 165
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 169
    :cond_6
    :goto_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->removeEvent()V

    throw v2

    .line 148
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v2

    goto :goto_1

    .line 166
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_6

    :catch_7
    move-exception v2

    goto :goto_8

    :catch_8
    move-exception v3

    goto :goto_a

    .line 174
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    :cond_7
    return-void

    .line 163
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    goto :goto_9

    .line 161
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 160
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 159
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method public setListener(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mListener:Landroid/hardware/Camera$ErrorCallback;

    .line 92
    return-void
.end method

.method public setLocationListenerGps(Landroid/location/LocationListener;)V
    .locals 3
    .param p1, "locationListener"    # Landroid/location/LocationListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    sget v1, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->LOCATION_LISTENER_GPS:I

    aput-object p1, v0, v1

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    sget v1, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->LOCATION_LISTENER_GPS:I

    const-string v2, "gps"

    aput-object v2, v0, v1

    .line 98
    return-void
.end method

.method public setLocationListenerNet(Landroid/location/LocationListener;)V
    .locals 3
    .param p1, "locationListener"    # Landroid/location/LocationListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    sget v1, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->LOCATION_LISTENER_NET:I

    aput-object p1, v0, v1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    sget v1, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->LOCATION_LISTENER_NET:I

    const-string v2, "network"

    aput-object v2, v0, v1

    .line 103
    return-void
.end method

.method public startDebug()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/DebugEventIntruder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
