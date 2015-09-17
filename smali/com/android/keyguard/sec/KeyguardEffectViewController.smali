.class public Lcom/android/keyguard/sec/KeyguardEffectViewController;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewController$8;,
        Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;,
        Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;,
        Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGES_CHANGED:Ljava/lang/String; = "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

.field public static final EFFECT_ABSTRACTTILE:I = 0xb

.field public static final EFFECT_AUTUMN:I = 0x53

.field public static final EFFECT_BLIND:I = 0x5

.field public static final EFFECT_BRILLIANTCUT:I = 0x9

.field public static final EFFECT_BRILLIANTRING:I = 0x8

.field public static final EFFECT_GEOMETRICMOSAIC:I = 0xc

.field public static final EFFECT_HOME:I = -0x2

.field public static final EFFECT_JUST_LOCK_LIVE_WALLPAPER:I = 0x64

.field public static final EFFECT_LIGHT:I = 0x2

.field public static final EFFECT_LIVEWALLPAPER:I = -0x1

.field public static final EFFECT_MASS_RIPPLE:I = 0x7

.field public static final EFFECT_MASS_TENSION:I = 0x6

.field public static final EFFECT_MONTBLANC:I = 0xa

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_PARTICLE:I = 0x3

.field public static final EFFECT_RIPPLE:I = 0x1

.field public static final EFFECT_SEASONAL:I = 0x55

.field public static final EFFECT_SPRING:I = 0x51

.field public static final EFFECT_SUMMER:I = 0x52

.field public static final EFFECT_TILT:I = 0x65

.field public static final EFFECT_WATERCOLOR:I = 0x4

.field public static final EFFECT_WINTER:I = 0x54

.field public static final EFFECT_ZOOM_PANNING:I = 0x50

.field private static final EMPTY_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/keyguard_empty_image.jpg"

.field public static final KEYGUARD_DEFAULT_WALLPAPER_TYPE_BRILLIANT:I = 0x1

.field public static final LOCK_SOUND_ABSTRACT_TILE:Ljava/lang/String; = "/system/media/audio/ui/abstracttile_lock.ogg"

.field public static final LOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_lock.ogg"

.field public static final LOCK_SOUND_BLIND:Ljava/lang/String; = "/system/media/audio/ui/blind_lock.ogg"

.field public static final LOCK_SOUND_BRILLIANT_CUT:Ljava/lang/String; = "/system/media/audio/ui/brilliantcut_lock.ogg"

.field public static final LOCK_SOUND_BRILLIANT_RING:Ljava/lang/String; = "/system/media/audio/ui/brilliantring_lock.ogg"

.field public static final LOCK_SOUND_GEOMETRIC_MOSAIC:Ljava/lang/String; = "/system/media/audio/ui/GeometricMosaic_lock.ogg"

.field public static final LOCK_SOUND_LENS:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_lock.ogg"

.field public static final LOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Lock_none_effect.ogg"

.field public static final LOCK_SOUND_PARTICLE:Ljava/lang/String; = "/system/media/audio/ui/Particle_Lock.ogg"

.field public static final LOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_lock.ogg"

.field public static final LOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_lock.ogg"

.field public static final LOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_lock.ogg"

.field private static final MSG_CHARGE_STATE_CHANGED:I = 0x12f4

.field private static final MSG_WALLPAPER_FILE_CHANGED:I = 0x12f2

.field private static final MSG_WALLPAPER_PATH_CHANGED:I = 0x12f1

.field private static final MSG_WALLPAPER_PRELOAD_CHANGED:I = 0x12f3

.field private static final MSG_WALLPAPER_TYPE_CHANGED:I = 0x12f0

.field private static final RICH_LOCK_CATEGORIES_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

.field private static final RICH_LOCK_WALLPAPER_ROOT_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.keyguardwallpaperupdator"

.field public static final SETTING_KEYGUARD_DEFAULT_WALLPAPER_TYPE_FOR_EFFECT:Ljava/lang/String; = "keyguard_default_wallpaper_type_for_effect"

.field public static final SETTING_KEYGUARD_SET_DEFAULT_WALLPAPER:Ljava/lang/String; = "keyguard_set_default_wallpaper"

.field public static final SETTING_LOCKSCREEN_MONTBLANC_WALLPAPER:Ljava/lang/String; = "lockscreen_montblanc_wallpaper"

.field public static final SLIDING_INTERNAL_EVERY_12HOUR:I = 0x2

.field public static final SLIDING_INTERNAL_EVERY_1HOUR:I = 0x1

.field public static final SLIDING_INTERNAL_EVERY_24HOUR:I = 0x3

.field public static final SLIDING_INTERNAL_SCREENOFF:I = 0x0

.field public static final SlidingWallpaperPath:Ljava/lang/String; = "com.sec.android.slidingGallery"

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewController"

.field public static final UNLOCK_SOUND_AUTUMN:Ljava/lang/String; = "/system/media/audio/ui/autumn_unlock.ogg"

.field public static final UNLOCK_SOUND_LENS:Ljava/lang/String; = "/system/media/audio/ui/lock_screen_silence.ogg"

.field public static final UNLOCK_SOUND_NONE:Ljava/lang/String; = "/system/media/audio/ui/Unlock_none_effect.ogg"

.field public static final UNLOCK_SOUND_PARTICLE:Ljava/lang/String; = "/system/media/audio/ui/lock_screen_silence.ogg"

.field public static final UNLOCK_SOUND_SPRING:Ljava/lang/String; = "/system/media/audio/ui/spring_unlock.ogg"

.field public static final UNLOCK_SOUND_SUMMER:Ljava/lang/String; = "/system/media/audio/ui/summer_unlock.ogg"

.field public static final UNLOCK_SOUND_WINTER:Ljava/lang/String; = "/system/media/audio/ui/winter_unlock.ogg"

.field private static displayHeight:I

.field private static displayWidth:I

.field private static mOrientation:I

.field private static mSlidingHour:I

.field private static mSlidingInterval:I

.field private static mSlidingMin:I

.field private static mSlidingScreenOffTime:J

.field private static mSlidingTime:J

.field private static mSlidingTotalCount:I

.field private static mSlidingWallpaperIndex:I

.field private static sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field public static uriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final UNLOCK_EFFECT_VIEW_BACKGROUND:I

.field private final UNLOCK_EFFECT_VIEW_FOREGROUND:I

.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

.field private mBackgroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mBgHasAddChargeView:Z

.field private mBootCompleted:Z

.field private mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private final mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyModeStateChanged:Z

.field private mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

.field private mFestivalEffectEnabled:Z

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

.field private mForegroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowing:Z

.field private mIsVisible:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mMusicBackgroundSet:Z

.field private mNotificationPanel:Landroid/widget/FrameLayout;

.field private mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

.field private mOldEffect:I

.field private mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRegisterReceiver:Z

.field private mStatusBarGradationView:Landroid/view/View;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUnlockEffectViewMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitching:Z

.field protected mWallpaperPath:Ljava/lang/String;

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    sput-wide v2, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    sput-wide v2, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sput v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->UNLOCK_EFFECT_VIEW_FOREGROUND:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->UNLOCK_EFFECT_VIEW_BACKGROUND:I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsVisible:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBootCompleted:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController$5;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardEffectViewMain SlidingWallpaperPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    const-string v1, "2"

    invoke-virtual {v0, v5}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    :goto_0
    new-instance v1, Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->initWallpaperTypes()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperContentObservers()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayHeight:I

    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperImageChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardEffectViewController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleSetGradationLayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleChargeStateChange()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardEffectViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->chenckSlidingWallpaperByScreenon()V

    return-void
.end method

.method static synthetic access$702(J)J
    .locals 0

    sput-wide p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardEffectViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private chenckSlidingWallpaperByScreenon()V
    .locals 5

    const/16 v4, 0x12f2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private getCurrentSeasonEffect()I
    .locals 14

    const/4 v3, 0x0

    new-instance v6, Landroid/text/format/Time;

    const-string v9, "GMT+8"

    invoke-direct {v6, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    iget v8, v6, Landroid/text/format/Time;->year:I

    iget v9, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v9, 0x1

    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x400ef5c28f5c28f6L    # 3.87

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v4, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x4016147ae147ae14L    # 5.52

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v5, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x401e000000000000L    # 7.5

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v0, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x401dc083126e978dL    # 7.438

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v7, v10

    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    if-lt v1, v4, :cond_1

    const/16 v3, 0x51

    :cond_0
    :goto_0
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentSeason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/16 v3, 0x54

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    if-ge v9, v2, :cond_3

    const/4 v9, 0x5

    if-ge v2, v9, :cond_3

    const/16 v3, 0x51

    goto :goto_0

    :cond_3
    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    if-lt v1, v5, :cond_4

    const/16 v3, 0x52

    goto :goto_0

    :cond_4
    const/16 v3, 0x51

    goto :goto_0

    :cond_5
    const/4 v9, 0x5

    if-ge v9, v2, :cond_6

    const/16 v9, 0x8

    if-ge v2, v9, :cond_6

    const/16 v3, 0x52

    goto :goto_0

    :cond_6
    const/16 v9, 0x8

    if-ne v2, v9, :cond_8

    if-lt v1, v0, :cond_7

    const/16 v3, 0x53

    goto :goto_0

    :cond_7
    const/16 v3, 0x52

    goto :goto_0

    :cond_8
    const/16 v9, 0x8

    if-ge v9, v2, :cond_9

    const/16 v9, 0xb

    if-ge v2, v9, :cond_9

    const/16 v3, 0x53

    goto :goto_0

    :cond_9
    const/16 v9, 0xb

    if-ne v2, v9, :cond_b

    if-lt v1, v7, :cond_a

    const/16 v3, 0x54

    goto :goto_0

    :cond_a
    const/16 v3, 0x53

    goto :goto_0

    :cond_b
    const/16 v9, 0xb

    if-gt v2, v9, :cond_c

    const/4 v9, 0x2

    if-ge v2, v9, :cond_0

    :cond_c
    const/16 v3, 0x54

    goto :goto_0
.end method

.method private getDataFromSlideshow(Landroid/content/Context;)V
    .locals 14

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ultra_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v5, 0x1

    :goto_1
    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EMMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",UPSMode :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    if-eqz v5, :cond_4

    :cond_0
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "content://com.samsung.slidinggallery"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, "getData"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v10, v11, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v10, "interval"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const-string v10, "imgCount"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    const-string v10, "time"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sput-wide v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    const-string v10, "hour"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    const-string v10, "minute"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sget-wide v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "HH"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sget v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "hh"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    const-string v10, "uriArray"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    sput-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imgCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSlidingTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Hour :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ,Min:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "KeyguardEffectViewController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uriStr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    sput-object v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    goto/16 :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "*** KeyguardEffectView getInstanceIfExists ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->sKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    return-object v0
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "/system/wallpaper/keyguard_empty_image.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSlidingWallpaperDegree(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x4

    iput v9, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x0

    invoke-static {v4, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    sget v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    if-lez v9, :cond_1

    sget v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOrientation:I

    invoke-static {v5, v9}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_1
    const-string v9, "KeyguardEffectViewController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScaledBitmapDrawable File = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,canRead() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempBitmap:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :try_start_2
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_1
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-object v7, v6

    goto/16 :goto_0

    :cond_3
    :try_start_4
    sget v9, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayWidth:I

    sget v10, Lcom/android/keyguard/sec/KeyguardEffectViewController;->displayHeight:I

    const/4 v11, 0x1

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$drawable;->intro_bg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v6, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_4
.end method

.method private getSeasonalLockSoundId(IZ)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    if-eqz p2, :cond_0

    sget v0, Lcom/android/keyguard/R$raw;->spring_lock:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/keyguard/R$raw;->spring_unlock:I

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    sget v0, Lcom/android/keyguard/R$raw;->summer_lock:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/keyguard/R$raw;->summer_unlock:I

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    sget v0, Lcom/android/keyguard/R$raw;->autumn_lock:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/keyguard/R$raw;->autumn_unlock:I

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    sget v0, Lcom/android/keyguard/R$raw;->winter_lock:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/keyguard/R$raw;->winter_unlock:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSeasonalLockSoundPath(IZ)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_0

    const-string v0, "/system/media/audio/ui/spring_lock.ogg"

    goto :goto_0

    :cond_0
    const-string v0, "/system/media/audio/ui/spring_unlock.ogg"

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    const-string v0, "/system/media/audio/ui/summer_lock.ogg"

    goto :goto_0

    :cond_1
    const-string v0, "/system/media/audio/ui/summer_unlock.ogg"

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    const-string v0, "/system/media/audio/ui/autumn_lock.ogg"

    goto :goto_0

    :cond_2
    const-string v0, "/system/media/audio/ui/autumn_unlock.ogg"

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    const-string v0, "/system/media/audio/ui/winter_lock.ogg"

    goto :goto_0

    :cond_3
    const-string v0, "/system/media/audio/ui/winter_unlock.ogg"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSlidingWallpaperDegree(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSlidingWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingWallpaperIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , uriArray.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget-object v4, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    sput v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    :cond_0
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewController;->uriArray:Ljava/util/ArrayList;

    sget v4, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    :cond_1
    :goto_0
    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlidingWallpaperPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    const-string v2, "/system/wallpaper/keyguard_empty_image.jpg"

    goto :goto_0
.end method

.method private handleChargeStateChange()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleFestivalEffect()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isCommonDayShowFestivalWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eq v3, v0, :cond_3

    const-string v3, "KeyguardFestivalEffect"

    const-string v4, "change festival"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFestivalEffect   mIsShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isUnlockEffectEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getUnlockEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/16 v2, 0x55

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setForeground()V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)V

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleSetGradationLayer()V
    .locals 6

    const/4 v5, -0x2

    const/4 v0, 0x1

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_4

    :goto_0
    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreloadedWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/R$drawable;->gradation_indi_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mStatusBarGradationView:Landroid/view/View;

    goto :goto_1
.end method

.method private handleWallpaperImageChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_zoom_panning_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateMontblancEffectType()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0
.end method

.method private handleWallpaperTypeChanged()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isZoomPanningEffectEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isRichLockWallpaper()Z

    move-result v1

    if-ne v1, v5, :cond_2

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleFestivalEffect()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleSetGradationLayer()V

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldEffect:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldEffect:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->reloadLockSound()V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->seasonal:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    if-ne v1, v2, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)V

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;)V

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLayerAndBitmapForParticleEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    goto/16 :goto_0

    :pswitch_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    :pswitch_3
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initWallpaperTypes()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setDefaultEffectViewTypes()V

    return-void
.end method

.method public static isLockScreenEffect(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0x50

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    const/16 v1, 0x51

    if-eq p0, v1, :cond_0

    const/16 v1, 0x52

    if-eq p0, v1, :cond_0

    const/16 v1, 0x53

    if-eq p0, v1, :cond_0

    const/16 v1, 0x54

    if-eq p0, v1, :cond_0

    const/16 v1, 0x55

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController$8;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewController$Background:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUserSwitching:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->update(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-nez v0, :cond_4

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-nez v0, :cond_5

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-nez v0, :cond_6

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-nez v0, :cond_8

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-nez v0, :cond_9

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-nez v0, :cond_a

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    if-nez v0, :cond_b

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    if-nez v0, :cond_c

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewController$8;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewController$Foreground:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setForeground()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassTensionUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->makeForeground(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardEffectViewBase;Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setBackground()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleSetGradationLayer()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBgHasAddChargeView:Z

    :cond_2
    return-void
.end method

.method private setDefaultEffectViewTypes()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->ripple:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->lens:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->spring:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->summer:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->autumn:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->winter:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->seasonal:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->watercolor:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->blind:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->brilliantring:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->brilliantcut:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->massRipple:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->massTension:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->zoompanning:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->montblanc:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->tilt:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->abstracttile:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->geometricmosaic:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewController$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setForeground()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 18

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mSlidingInterval = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    add-int/lit8 v13, v13, 0x1

    sput v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    sget v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTotalCount:I

    if-lt v13, v14, :cond_1

    const/4 v13, 0x0

    sput v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    :cond_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "results = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , mSlidingWallpaperIndex:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingWallpaperIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :pswitch_0
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_1
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_2

    const-wide/16 v8, 0x3c

    :cond_2
    :pswitch_2
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_3

    const-wide/16 v8, 0x2d0

    :cond_3
    :pswitch_3
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_4

    const-wide/16 v8, 0x5a0

    :cond_4
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    mul-long v8, v14, v16

    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sget-wide v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    sget-wide v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    add-long/2addr v10, v14

    :goto_1
    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(minutesCount "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " minuteThreshold "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v13, v10, v8

    if-ltz v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_5
    sget-wide v14, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingScreenOffTime:J

    sget-wide v16, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingTime:J

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    rem-long/2addr v14, v8

    sub-long v14, v8, v14

    add-long/2addr v10, v14

    goto :goto_1

    :cond_6
    const-string v13, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "HH"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "hh"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "mm"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v13, "KeyguardEffectViewController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",  :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v5, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_8
    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingInterval:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingHour:I

    if-ne v4, v13, :cond_0

    sget v13, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mSlidingMin:I

    if-ne v6, v13, :cond_0

    const/4 v12, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final setWallpaperContentObservers()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController$6;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_zoom_panning_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setWallpaperFileObserver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.slidingGallery.LOCKSCREEN_IMAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mRegisterReceiver:Z

    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDataFromSlideshow(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    :cond_2
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$7;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method


# virtual methods
.method public changeEffectType()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeEffectType()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_set_default_wallpaper"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public changeWallpaperByScreenOff()V
    .locals 4

    const/16 v3, 0x12f2

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "changeWallpaperByScreenOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "com.sec.android.slidingGallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KeyguardEffectViewController"

    const-string v2, "change sliding wallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setSlidingWallpaperInfo(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object p1, v4

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_0

    const-string v5, "KeyguardEffectViewController"

    const-string v6, "start to convert album art"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v3, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    move-object p1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    goto :goto_0
.end method

.method protected getBackgroundEffectType()Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    return-object v0
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCircleView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method protected getCurrentEffecType()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    return v0
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method protected getForegroundEffectType()Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    return-object v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public isCategoriesWallpaper()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v6, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    move v1, v3

    :goto_2
    const-string v5, "KeyguardEffectViewController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCategoriesWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isLiveWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isHomeWallpaper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method public isFestivalActivated()Z
    .locals 3

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFestivalActivated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJustLockLiveEnabled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isMusicBackgroundSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    return v0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_zoom_panning_effect"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "KeyguardEffectViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isZoomPanningEffectEnabled() isZoomPanningEffect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPowerSavingMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public playLockSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    :cond_0
    return-void
.end method

.method public reloadLockSound()V
    .locals 12

    const/16 v11, 0x53

    const/16 v10, 0x52

    const/16 v9, 0x51

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "KeyguardEffectViewController"

    const-string v6, "reloadLockSound()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    packed-switch v5, :pswitch_data_0

    const-string v2, "/system/media/audio/ui/Lock_none_effect.ogg"

    const-string v3, "/system/media/audio/ui/Unlock_none_effect.ogg"

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffectEnabled:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-interface {v5, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;->reloadLockSound(II)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v4

    invoke-direct {p0, v4, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v0

    invoke-direct {p0, v4, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mCurrentEffect:I

    sparse-switch v5, :sswitch_data_0

    const-string v2, "/system/media/audio/ui/Lock_none_effect.ogg"

    const-string v3, "/system/media/audio/ui/Unlock_none_effect.ogg"

    goto :goto_0

    :sswitch_0
    const-string v2, "/system/media/audio/ui/lens_flare_lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_1
    const-string v2, ""

    const-string v3, ""

    goto :goto_0

    :sswitch_2
    const-string v2, ""

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_3
    const-string v2, "/system/media/audio/ui/blind_lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_4
    const-string v2, "/system/media/audio/ui/Particle_Lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_5
    const-string v2, "/system/media/audio/ui/brilliantring_lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_6
    const-string v2, "/system/media/audio/ui/brilliantcut_lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_7
    const-string v2, "/system/media/audio/ui/abstracttile_lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_8
    const-string v2, "/system/media/audio/ui/GeometricMosaic_lock.ogg"

    const-string v3, "/system/media/audio/ui/lock_screen_silence.ogg"

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, v9, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v0

    invoke-direct {p0, v9, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v1

    goto :goto_0

    :sswitch_a
    invoke-direct {p0, v10, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v0

    invoke-direct {p0, v10, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v1

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, v11, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v0

    invoke-direct {p0, v11, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v1

    goto :goto_0

    :sswitch_c
    const/16 v5, 0x54

    invoke-direct {p0, v5, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v0

    const/16 v5, 0x54

    invoke-direct {p0, v5, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getCurrentSeasonEffect()I

    move-result v4

    invoke-direct {p0, v4, v8}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v0

    invoke-direct {p0, v4, v7}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getSeasonalLockSoundId(IZ)I

    move-result v1

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-interface {v5, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;->reloadLockSound(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_1
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0x51 -> :sswitch_9
        0x52 -> :sswitch_a
        0x53 -> :sswitch_b
        0x54 -> :sswitch_c
        0x55 -> :sswitch_d
    .end sparse-switch
.end method

.method public removeMusicWallpaper()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mMusicBackgroundSet:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->removeMusicWallpaper()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :cond_2
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_3
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetScreenState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_3
    return-void
.end method

.method public setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateAttributionInfoView()V

    return-void
.end method

.method public setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method public setFestivalKeyguardShowing(ZI)V
    .locals 6

    const-string v3, "KeyguardEffectViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFestivalKeyguardShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isFestivalActivated()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 3

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsVisible:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyguardShowing(Z)V
    .locals 4

    const-string v1, "KeyguardEffectViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsShowing:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->reset()V

    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mIsShowing:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setFestivalKeyguardShowing(ZI)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->show()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->cleanUp()V

    goto :goto_1
.end method

.method public setLayerAndBitmapForParticleEffect()V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->setLayers(Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mNotificationPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->setLayers(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setLiveWallpaperBg(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v2, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiveWallpaperBg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/android/keyguard/sec/EffectBehindView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/EffectBehindView;->setLiveWallpaperBg(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLiveWeatherViewVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewController$Background;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setBackground()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0
.end method

.method public setLockSoundChangeCallback(Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->reloadLockSound()V

    return-void
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isCategoriesWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->isJustLockLiveEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 2

    const-string v0, "KeyguardEffectViewController"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->handleWallpaperTypeChanged()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->SetShowState(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->GetScreenState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mFestivalEffect:Lcom/android/keyguard/sec/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_3
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mForegroundCircleView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    :cond_2
    return-void
.end method

.method public updateAttributionInfoView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    goto :goto_0
.end method

.method public updateMontblancEffectType()V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v2, v2, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_montblanc_wallpaper"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewController;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    :cond_1
    return-void
.end method
