.class public Lcom/android/keyguard/sec/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DUALSIMSLOT:I = 0x2

.field public static final LAUNCH_FROM_NONE:I = 0x0

.field public static final LAUNCH_FROM_SETTING:I = 0x1

.field public static final LAUNCH_FROM_SIMCARDMANAGEMENT:I = 0x2

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

.field private static final PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MultiSimUtils"

.field public static final UNKNOWN:I = -0x1

.field private static mCurrentPukLockSlot:I

.field private static mCurrnetPinLockSlot:I

.field private static mPIN1LockReceived:Z

.field private static mPIN1LockState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mPIN2LockReceived:Z

.field private static mPIN2LockState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mPINPUKLaunchMode:I

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I

.field private static mSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    sput-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 36
    sput v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 37
    sput v0, Lcom/android/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 38
    sput v0, Lcom/android/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 39
    sput v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKLaunchMode:I

    .line 40
    sput v2, Lcom/android/keyguard/sec/MultiSimUtils;->mSlotCount:I

    .line 42
    sput-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN1LockReceived:Z

    .line 43
    sput-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN2LockReceived:Z

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple_2.jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path_ripple"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_ripple_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_RIPPLE_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_path"

    aput-object v1, v0, v2

    const-string v1, "lockscreen_wallpaper_path_2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 256
    move-object v0, p0

    .line 257
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    if-eqz p1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    if-eqz p1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentPinLockSlot()I
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    const-string v0, "MultiSimUtils"

    const-string v1, "getCurrentPinLockSlot = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentPukLockSlot()I
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKSlot()I

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 171
    :cond_0
    const-string v0, "MultiSimUtils"

    const-string v1, "getCurrentPukLockSlot = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentVoiceCall()I
    .locals 4

    .prologue
    .line 123
    const-string v1, "persist.radio.calldefault.simid"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "sim":Ljava/lang/String;
    const-string v1, "MultiSimUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentVoiceCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    .line 62
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mSimMode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getSIMCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 sim inserted getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-nez v1, :cond_0

    .line 71
    sget-object v2, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    .line 87
    :cond_0
    :goto_0
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v1

    .line 73
    :cond_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimMode = 1, getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-nez v1, :cond_0

    .line 77
    sget-object v2, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH_DATABASE:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimMode = 0, inserted getCurrentWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez v1, :cond_0

    .line 82
    sget-object v2, Lcom/android/keyguard/sec/MultiSimUtils;->PORTRAIT_WALLPAPER_IMAGE_PATH:[Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentVoiceCall()I

    move-result v3

    aget-object v1, v2, v3

    goto :goto_0
.end method

.method public static getDualModePINPUKRequest()Z
    .locals 3

    .prologue
    .line 191
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDualModePINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-boolean v0, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPINPUKRequest()Z
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPINPUKRequest(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "airPlaneEnabled":I
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKRequest airPlaneEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v1

    goto :goto_0
.end method

.method public static getPINPUKRequestMode()I
    .locals 1

    .prologue
    .line 204
    sget v0, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKLaunchMode:I

    return v0
.end method

.method public static getPINPUKSlot()I
    .locals 3

    .prologue
    .line 199
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget v0, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    return v0
.end method

.method public static getPINRequest()Z
    .locals 8

    .prologue
    .line 208
    const/4 v5, -0x1

    sput v5, Lcom/android/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 209
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v1

    .line 210
    .local v1, "simSlotCount":I
    const-string v5, "gsm.sim.state"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "simStates":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 213
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "slotState":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "simSlot":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 216
    array-length v5, v4

    if-gt v5, v0, :cond_1

    .line 228
    .end local v0    # "simSlot":I
    .end local v4    # "slotState":[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 219
    .restart local v0    # "simSlot":I
    .restart local v4    # "slotState":[Ljava/lang/String;
    :cond_1
    aget-object v2, v4, v0

    .line 221
    .local v2, "simSlotState":Ljava/lang/String;
    const-string v5, "MultiSimUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v5, "PIN_REQUIRED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    sput v0, Lcom/android/keyguard/sec/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 224
    const/4 v5, 0x1

    goto :goto_1

    .line 215
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPINRequestWithSlot(I)Z
    .locals 5
    .param p0, "simSlot"    # I

    .prologue
    .line 274
    const-string v2, "gsm.sim.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "simStates":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 277
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "slotState":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, p0, :cond_0

    .line 280
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINRequestWithSlot() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    aget-object v2, v1, p0

    const-string v3, "PIN_REQUIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const/4 v2, 0x1

    .line 286
    .end local v1    # "slotState":[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPUKRequest()Z
    .locals 8

    .prologue
    .line 232
    const/4 v5, -0x1

    sput v5, Lcom/android/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 233
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v1

    .line 234
    .local v1, "simSlotCount":I
    const-string v5, "gsm.sim.state"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "simStates":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 237
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "slotState":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "simSlot":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 240
    array-length v5, v4

    if-gt v5, v0, :cond_1

    .line 252
    .end local v0    # "simSlot":I
    .end local v4    # "slotState":[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 243
    .restart local v0    # "simSlot":I
    .restart local v4    # "slotState":[Ljava/lang/String;
    :cond_1
    aget-object v2, v4, v0

    .line 245
    .local v2, "simSlotState":Ljava/lang/String;
    const-string v5, "MultiSimUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", simState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v5, "PUK_REQUIRED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    sput v0, Lcom/android/keyguard/sec/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 248
    const/4 v5, 0x1

    goto :goto_1

    .line 239
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPUKRequestWithSlot(I)Z
    .locals 5
    .param p0, "simSlot"    # I

    .prologue
    .line 290
    const-string v2, "gsm.sim.state"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "simStates":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 293
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "slotState":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, p0, :cond_0

    .line 296
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPUKRequestWithSlot() : simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    aget-object v2, v1, p0

    const-string v3, "PUK_REQUIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const/4 v2, 0x1

    .line 302
    .end local v1    # "slotState":[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPinLockRequest()V
    .locals 3

    .prologue
    .line 328
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPinLockRequest() slot1 : mPIN1LockReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN1LockReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPIN1LockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN1LockState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPinLockRequest() slot2 : mPIN2LockReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN2LockReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPIN2LockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN2LockState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public static getSIMCount()I
    .locals 9

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "mSimCount":I
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getSimSlotCount()I

    move-result v3

    .line 98
    .local v3, "simSlotCount":I
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "iccType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "slotState":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 104
    array-length v6, v5

    if-gt v6, v2, :cond_1

    .line 117
    .end local v2    # "simSlot":I
    .end local v5    # "slotState":[Ljava/lang/String;
    :cond_0
    const-string v6, "MultiSimUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inserted SIM card count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1

    .line 108
    .restart local v2    # "simSlot":I
    .restart local v5    # "slotState":[Ljava/lang/String;
    :cond_1
    aget-object v4, v5, v2

    .line 109
    .local v4, "simSlotState":Ljava/lang/String;
    const-string v6, "MultiSimUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInsertedSimNum() : simSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getSimSlotCount()I
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/MultiSimUtils;->mSlotCount:I

    .line 269
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimSlotCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/MultiSimUtils;->mSlotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget v0, Lcom/android/keyguard/sec/MultiSimUtils;->mSlotCount:I

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    return v0
.end method

.method public static isPlmnEnabled()Z
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .param p0, "state"    # Z

    .prologue
    .line 177
    sput-boolean p0, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    .line 178
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public static setPINPUKRequestMode(I)V
    .locals 0
    .param p0, "launchMode"    # I

    .prologue
    .line 187
    sput p0, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKLaunchMode:I

    .line 188
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 182
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sput p0, Lcom/android/keyguard/sec/MultiSimUtils;->mPINPUKSlot:I

    .line 184
    return-void
.end method

.method public static setPinLockRequest(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .param p0, "subscription"    # I
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v3, 0x1

    .line 316
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPinLockRequest() : subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez p0, :cond_0

    .line 318
    sput-boolean v3, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN1LockReceived:Z

    .line 319
    sput-object p1, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN1LockState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    sput-boolean v3, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN2LockReceived:Z

    .line 323
    sput-object p1, Lcom/android/keyguard/sec/MultiSimUtils;->mPIN2LockState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public static showMultiWallpaper()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method
