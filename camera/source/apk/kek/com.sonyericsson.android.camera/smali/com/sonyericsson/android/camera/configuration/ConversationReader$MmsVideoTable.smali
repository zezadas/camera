.class Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;
.super Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;
.source "ConversationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/ConversationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsVideoTable"
.end annotation


# static fields
.field private static final KEY_MMS_BIT_RATE:Ljava/lang/String; = "mms_video_bit_rate_in_kbps"

.field private static final KEY_MMS_CODEC:Ljava/lang/String; = "mms_video_codec"

.field private static final KEY_MMS_MAX_DURATION:Ljava/lang/String; = "mms_video_max_duration_in_seconds"

.field private static final KEY_MMS_MIME_TYPE:Ljava/lang/String; = "mms_video_codec_mime_type"

.field private static final KEY_MMS_RESOLUTIONS:Ljava/lang/String; = "mms_video_resolution"

.field private static final URI:Ljava/lang/String; = "content://com.sonyericsson.conversations/settings/video"


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 152
    const-string v0, "content://com.sonyericsson.conversations/settings/video"

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$Table;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 153
    return-void
.end method


# virtual methods
.method readFromCursor(Landroid/database/Cursor;Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "builder"    # Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .prologue
    .line 157
    const-string v0, "mms_video_max_duration_in_seconds"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->maxDuration(I)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .line 158
    const-string v0, "mms_video_bit_rate_in_kbps"

    const/16 v1, 0x400

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->bitRate(I)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .line 159
    const-string v0, "mms_video_codec"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->codec(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .line 160
    const-string v0, "mms_video_codec_mime_type"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->mimeType(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .line 161
    const-string v0, "mms_video_resolution"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader$MmsVideoTable;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;->recommendSizeList(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/MmsOptions$Builder;

    .line 162
    return-void
.end method
