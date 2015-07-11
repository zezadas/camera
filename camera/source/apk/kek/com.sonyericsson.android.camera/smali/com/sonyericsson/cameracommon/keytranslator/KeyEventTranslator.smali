.class public Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
.super Ljava/lang/Object;
.source "KeyEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;,
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;,
        Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field private final mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 62
    return-void
.end method

.method private isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Z)Z
    .locals 7
    .param p1, "code"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .param p2, "isDown"    # Z

    .prologue
    .line 151
    const/4 v6, 0x1

    .line 152
    .local v6, "isAvailable":Z
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return v6

    .line 154
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(ZLcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v6

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(ZLcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v6

    .line 160
    goto :goto_0

    .line 162
    :pswitch_2
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(ZLcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v6

    .line 164
    goto :goto_0

    .line 166
    :pswitch_3
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isExpectedKeyType(ZLcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z

    move-result v6

    .line 168
    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isExpectedKeyType(ZLcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;)Z
    .locals 2
    .param p1, "isDown"    # Z
    .param p2, "expectedTypeOnDown"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .param p3, "currentTypeOnDown"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .param p4, "expectedTypeOnUp"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .param p5, "currentTypeOnUp"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "isExpected":Z
    if-eqz p1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne v1, p2, :cond_0

    .line 184
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 185
    const/4 v0, 0x1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    if-ne v1, p4, :cond_0

    .line 189
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mCurrentKeyType:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 113
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 117
    .local v1, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :goto_0
    return-object v1

    .line 73
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :sswitch_0
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 74
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 76
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :sswitch_1
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->SHUTTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 77
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 81
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :sswitch_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->mSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    .line 82
    .local v0, "keyAssign":Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$VolumeKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 97
    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->TAG:Ljava/lang/String;

    const-string v3, "Volume key parameter is invalid state."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 99
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 84
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 85
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 87
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 88
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 90
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :pswitch_2
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    .line 91
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 93
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 95
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 103
    .end local v0    # "keyAssign":Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :sswitch_3
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->BACK:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 104
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 106
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :sswitch_4
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->MENU:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 107
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 109
    .end local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    :sswitch_5
    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ENTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 110
    .restart local v1    # "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x42 -> :sswitch_5
        0x50 -> :sswitch_0
        0x52 -> :sswitch_4
    .end sparse-switch

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 126
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 129
    :cond_0
    return-object v0
.end method

.method public translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 138
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->isAvailableNow(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 141
    :cond_0
    return-object v0
.end method
