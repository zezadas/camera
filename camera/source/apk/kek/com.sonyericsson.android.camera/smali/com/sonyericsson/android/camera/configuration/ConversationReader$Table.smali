.class abstract Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;
.super Ljava/lang/Object;
.source "ConversationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ConversationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Table"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->mUri:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->mResolver:Landroid/content/ContentResolver;

    .line 57
    return-void
.end method

.method static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 3
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "gain"    # I

    .prologue
    const/4 v2, -0x1

    .line 99
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 104
    .local v1, "value":I
    if-eq v1, v2, :cond_0

    mul-int v2, v1, p2

    goto :goto_0
.end method

.method static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "gain"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 90
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-wide v4

    .line 94
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 95
    .local v2, "value":J
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    mul-long v4, v2, p2

    goto :goto_0
.end method

.method static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 112
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method read(Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V
    .locals 8
    .param p1, "builder"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 66
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 67
    if-nez v6, :cond_1

    .line 83
    if-eqz v6, :cond_0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0, v6, p1}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;->readFromCursor(Landroid/database/Cursor;Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_2
    if-eqz v6, :cond_0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 74
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v0, "ConversationReader"

    const-string v2, "readMmsSettings: An exception occurs in reading provider of conversation application."

    invoke-static {v0, v2, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-eqz v6, :cond_0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 78
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v0, "ConversationReader"

    const-string v2, "readMmsSettings: An exception occurs in reading provider of conversation application."

    invoke-static {v0, v2, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-eqz v6, :cond_0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 83
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method abstract readFromCursor(Landroid/database/Cursor;Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V
.end method
