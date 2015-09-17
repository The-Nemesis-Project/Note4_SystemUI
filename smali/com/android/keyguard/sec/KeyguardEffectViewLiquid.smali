.class public Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLiquid.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

.field private mWallpaperPath:Ljava/lang/String;

.field private prevOrientation:I

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private touchDownTime:J

.field private touchMoveDiffTime:J

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v2, "Liquid_KeyguardEffectView"

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->TAG:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mWallpaperPath:Ljava/lang/String;

    .line 59
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    .line 60
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->sounds:[I

    .line 61
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 62
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->UNLOCK_SOUND_PLAY_TIME:J

    .line 63
    iput-wide v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->touchDownTime:J

    .line 64
    iput-wide v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->touchMoveDiffTime:J

    .line 65
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->leftVolumeMax:F

    .line 66
    iput v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->rightVolumeMax:F

    .line 67
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->SOUND_ID_TAB:I

    .line 68
    iput v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->SOUND_ID_UNLOCK:I

    .line 69
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isSystemSoundChecked:Z

    .line 72
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isUnlocked:Z

    .line 77
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->prevOrientation:I

    .line 78
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->windowWidth:I

    .line 79
    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->windowHeight:I

    .line 80
    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    .line 86
    const-string v2, "Liquid_KeyguardEffectView"

    const-string v3, "KeyguardEffectViewLiquidLock Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    .line 89
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->keyguardManager:Landroid/app/KeyguardManager;

    .line 90
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 92
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->windowWidth:I

    .line 94
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->windowHeight:I

    .line 96
    new-instance v2, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->windowWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->windowHeight:I

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    .line 97
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    sget v3, Lcom/android/keyguard/R$drawable;->kernel_512:I

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->setResourcesBitmap1(Landroid/graphics/Bitmap;)V

    .line 99
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->sounds:[I

    .line 101
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)Lcom/samsung/android/visualeffect/liquid/LiquidEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 323
    const/4 v2, 0x0

    .line 326
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 335
    :goto_0
    if-ne v2, v5, :cond_0

    .line 336
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isSystemSoundChecked:Z

    .line 339
    :goto_1
    return-void

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 266
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 267
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 269
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-object v2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 278
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->stopReleaseSound()V

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 284
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->liquid_tap:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->liquid_unlock:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 297
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 342
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->checkSound()V

    .line 343
    const-string v0, "Liquid_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOUND PLAY mSoundPool = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSystemSoundChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isSystemSoundChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "Liquid_KeyguardEffectView"

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

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 349
    :cond_0
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 308
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 242
    const-string v3, "Liquid_KeyguardEffectView"

    const-string v4, "setBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 246
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 247
    const-string v3, "Liquid_KeyguardEffectView"

    const-string v4, "newBitmapDrawable  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 258
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .local v2, "pBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 250
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    if-nez v1, :cond_1

    .line 253
    const-string v3, "Liquid_KeyguardEffectView"

    const-string v4, "pBitmap  is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 254
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 257
    .end local v2    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string v3, "Liquid_KeyguardEffectView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pBitmap.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pBitmap.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 258
    .end local v1    # "pBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "pBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->stopReleaseSound()V

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->releaseSound()V

    .line 123
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isUnlocked:Z

    .line 130
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 176
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isUnlocked:Z

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return v4

    .line 198
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 200
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 202
    const-string v1, "Liquid_KeyguardEffectView"

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

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->stopReleaseSound()V

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    .line 206
    const-string v1, "Liquid_KeyguardEffectView"

    const-string v2, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->makeSound()V

    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->checkSound()V

    .line 210
    :cond_1
    const-string v1, "Liquid_KeyguardEffectView"

    const-string v2, "SOUND PLAY SOUND_ID_TAB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->playSound(I)V

    .line 221
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v1, p2}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 213
    :cond_3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 216
    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 181
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->unlockEffect()V

    .line 183
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isUnlocked:Z

    .line 184
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->playSound(I)V

    .line 185
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->reset()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isUnlocked:Z

    .line 117
    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->screenTurnedOn()V

    .line 161
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "setContextualWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez p1, :cond_1

    .line 147
    const-string v0, "Liquid_KeyguardEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmp is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->changeBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 239
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->show()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->isUnlocked:Z

    .line 110
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->makeSound()V

    .line 111
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 169
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->showUnlockAffordance()V

    .line 172
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Liquid_KeyguardEffectView"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->mView:Lcom/samsung/android/visualeffect/liquid/LiquidEffect;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewLiquid;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/liquid/LiquidEffect;->changeBackground(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_0
    return-void
.end method
