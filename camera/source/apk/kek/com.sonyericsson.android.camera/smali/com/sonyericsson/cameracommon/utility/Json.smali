.class public Lcom/sonyericsson/cameracommon/utility/Json;
.super Ljava/lang/Object;
.source "Json.java"


# static fields
.field private static final GSON_SYNC_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/cameracommon/utility/Json;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/Json;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/Json;->GSON_SYNC_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGson(D)Lcom/google/gson/Gson;
    .locals 4
    .param p0, "version"    # D

    .prologue
    .line 31
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 32
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/google/gson/GsonBuilder;->setVersion(D)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 42
    .local v1, "gson":Lcom/google/gson/Gson;
    return-object v1
.end method

.method public static decodeFromJson(DLjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "version"    # D
    .param p2, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(D",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/Json;->GSON_SYNC_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/Json;->createGson(D)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    monitor-exit v2

    .line 86
    return-object v0

    .line 83
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static encodeToJson(DLjava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(DTT;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "jsonString":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/Json;->GSON_SYNC_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/Json;->createGson(D)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 61
    monitor-exit v2

    .line 64
    return-object v0

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
