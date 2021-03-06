.class public Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewBrilliantRing.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrilliantRing_Keyguard"


# instance fields
.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMaxValue:I

.field private dragSoudMinusOffset:F

.field private dragSoudVolume:F

.field private dragStreamID:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isFadeOutSound:Z

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field mLongPressTime:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private useCPUMaxClock:Z

.field private useGPUMaxClock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const v5, 0x9c40

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->UNLOCK_SOUND_PLAY_TIME:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_TAB:I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_DRAG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->SOUND_ID_UNLOCK:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    const-wide/16 v0, 0x19b

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mLongPressTime:J

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "KeyguardEffectViewBrilliantRing Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setEffect(I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->gpuMaxValue:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->cpuMaxValue:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->setLimit(Landroid/content/Context;III)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    return-void
.end method

.method private checkSound()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v5, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private fadeOutSound()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "SOUND STOP because UP or Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSound()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->brilliantring_tap:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->brilliantring_drag:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->brilliantring_unlock:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->checkSound()V

    const-string v0, "BrilliantRing_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const-string v0, "BrilliantRing_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY soundId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->rightVolumeMax:F

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->releaseSound()V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-eqz v1, :cond_0

    const-string v1, "BrilliantRing_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    const-string v1, "BrilliantRing_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->stopReleaseSound()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->checkSound()V

    :cond_1
    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    :cond_3
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-nez v1, :cond_3

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mLongPressTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    iget-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchDownTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const-string v1, "BrilliantRing_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOUND PLAY SOUND_ID_DRAG touchMoveDiff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->touchMoveDiffTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    goto :goto_1

    :cond_5
    if-eq v0, v6, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_6
    const-string v1, "BrilliantRing_Keyguard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-eqz v1, :cond_3

    const v1, 0x3d1fbe77    # 0.039f

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleCustomEvent(ILjava/util/HashMap;)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    const v0, 0x3d71a9fc    # 0.059f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->playSound(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    const-string v0, "BrilliantRing_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragStreamID:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    if-nez v0, :cond_2

    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudMinusOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isFadeOutSound:Z

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->dragSoudVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->fadeOutSound()V

    :cond_2
    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->release(I)V

    :cond_1
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useGPUMaxClock:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->useCPUMaxClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/samsung/android/visualeffect/utils/VisualEffectDVFS;->lock(I)V

    :cond_1
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "BrilliantRing_Keyguard"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->makeSound()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    const-string v1, "BrilliantRing_Keyguard"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->isUnlocked:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleCustomEvent(ILjava/util/HashMap;)V

    return-void
.end method

.method public update()V
    .locals 4

    const-string v2, "BrilliantRing_Keyguard"

    const-string v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "BrilliantRing_Keyguard"

    const-string v3, "newBitmapDrawable  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "BrilliantRing_Keyguard"

    const-string v3, "originBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
