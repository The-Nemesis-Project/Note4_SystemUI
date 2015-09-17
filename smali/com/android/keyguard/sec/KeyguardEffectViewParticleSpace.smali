.class public Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewParticleSpace.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private cpuMinValue:I

.field private dragSoundCount:I

.field private gpuMaxValue:I

.field private hasWindowFocus:Z

.field private isSystemSoundChecked:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWindowManager:Landroid/view/WindowManager;

.field private particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private useCPUMinClock:Z

.field private useGPUMaxClock:Z

.field private wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->DBG:Z

    .line 43
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 44
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    .line 45
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    .line 46
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->UNLOCK_SOUND_PLAY_TIME:J

    .line 47
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 48
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    .line 49
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 50
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 51
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->DRAG_SOUND_COUNT_START_POINT:I

    .line 53
    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->SOUND_ID_TAB:I

    .line 54
    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->SOUND_ID_UNLOCK:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->SOUND_ID_DRAG:I

    .line 57
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->useGPUMaxClock:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->useCPUMinClock:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 66
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    new-instance v0, Lcom/samsung/android/visualeffect/EffectView;

    invoke-direct {v0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 161
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 165
    .local v2, "result":I
    :try_start_0
    const-string v4, "lockscreen_sounds_enabled"

    const/4 v5, -0x2

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 171
    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    .line 172
    return-void

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->getWallpaperImage()Landroid/widget/ImageView;

    move-result-object v1

    .line 239
    .local v1, "imgView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    move-object v0, v3

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v0, v3

    .line 246
    goto :goto_0
.end method

.method private makeSound()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 104
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->stopReleaseSound()V

    .line 105
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 109
    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    .line 112
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

    .line 116
    .local v0, "attr":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->particle_tap:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->particle_unlock:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$raw;->particle_drag:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 123
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->checkSound()V

    .line 151
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    if-eqz v0, :cond_2

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 191
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->stopReleaseSound()V

    .line 192
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSound()V

    .line 195
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 251
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    .line 286
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 287
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->stopReleaseSound()V

    .line 288
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    .line 289
    const-string v2, "VisualEffectParticleEffect"

    const-string v3, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 292
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-eqz v2, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    .local v1, "wallpaperBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 298
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v2, "BGBitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 311
    .end local v0    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v1    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v2, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 313
    const/4 v2, 0x1

    return v2

    .line 303
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 304
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    .line 305
    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1

    .line 306
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 307
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->dragSoundCount:I

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 256
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 273
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->playSound(I)V

    .line 274
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 329
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->hasWindowFocus:Z

    .line 330
    const-string v0, "VisualEffectParticleEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardEffectViewParticleSpace : onWindowFocusChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 216
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    .prologue
    .line 204
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 208
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 324
    return-void
.end method

.method public setLayers(Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "wallpaperWidget"    # Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;
    .param p2, "widgetLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 87
    const-string v1, "VisualEffectParticleEffect"

    const-string v2, "KeyguardEffectViewParticleSpace : setLayers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "VisualEffectParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewParticleSpace : widgetLayout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, "VisualEffectParticleEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewParticleSpace : wallpaperWidget = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    .line 92
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 93
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 94
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->poppingColorData:Lcom/samsung/android/visualeffect/lock/data/PoppingColorData;

    iput-object p2, v1, Lcom/samsung/android/visualeffect/lock/data/PoppingColorData;->widgetLayout:Landroid/widget/FrameLayout;

    .line 95
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->poppingColorData:Lcom/samsung/android/visualeffect/lock/data/PoppingColorData;

    iput-object p1, v1, Lcom/samsung/android/visualeffect/lock/data/PoppingColorData;->wallpaperWidget:Landroid/widget/FrameLayout;

    .line 96
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 97
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->isUnlocking:Z

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->makeSound()V

    .line 180
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 220
    const-string v3, "VisualEffectParticleEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardEffectViewParticleSpace : showUnlockAffordance, startDelay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->wallpaperWidget:Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-eqz v3, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 224
    .local v2, "wallpaperBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v0, "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v3, "BGBitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->getBitmapFromWallpaperImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 231
    .end local v0    # "hm0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v2    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v1, "hm1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v3, "Rect"

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->particleSpaceEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 235
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "KeyguardEffectViewParticleSpace : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
