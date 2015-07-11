.class Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsTable;
.super Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;
.source "ConversationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ConversationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsTable"
.end annotation


# static fields
.field private static final KEY_MMS_MAX_SIZE:Ljava/lang/String; = "mms_max_size"

.field private static final URI:Ljava/lang/String; = "content://com.sonyericsson.conversations/settings"


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 128
    const-string v0, "content://com.sonyericsson.conversations/settings"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 129
    return-void
.end method


# virtual methods
.method readFromCursor(Landroid/database/Cursor;Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "builder"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 133
    const-string v0, "mms_max_size"

    const-wide/16 v2, 0x400

    invoke-static {p1, v0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsTable;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->maxFileSizeBytes(J)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .line 134
    return-void
.end method
