.class public Lcom/android/systemui/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$11;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field public static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final BIG_VIEW:Ljava/lang/String; = "bigView"

.field public static final CARRIER_FLPP_LOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

.field public static final CARRIER_FLPP_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.android.FindingLostPhonePlus.CANCEL"

.field private static final DBG_WAKE:Z = false

.field static final DEBUG:Z = true

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final DISABLE_KEYGUARD_FACTORY_ACTION:Ljava/lang/String; = "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

.field private static final DISMISS:I = 0x11

.field public static final FMM_LOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

.field public static final FMM_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_ANALYTICS_SETTING:Ljava/lang/String; = "keyguard_analytics"

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_ACTIVITY_BENDED:I = 0x19

.field private static final LAUNCH_PERSO_LOCK:I = 0x18

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final ON_ACTIVITY_DRAWN:I = 0x13

.field private static OUT_OF_RANGE_ALERT_TIMEOUT:I = 0x0

.field private static final REMOVE_ADAPTIVE_EVENT:I = 0x15

.field private static final REQUEST_CLASS:Ljava/lang/String; = "requestClass"

.field private static final RESET:I = 0x4

.field private static final SET_ADAPTIVE_EVENT:I = 0x14

.field private static final SET_OCCLUDED:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SMALL_VIEW:Ljava/lang/String; = "smallView"

.field private static final SMART_UNLOCK_PERMISSION:Ljava/lang/String; = "com.sec.android.permission.SMART_UNLOCK"

.field private static final START_KEYGUARD_EXIT_ANIM:I = 0x12

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final UPDATE_ADAPTIVE_EVENT:I = 0x16

.field private static final UPDATE_RSSI_FOR_SMART_UNLOCK:I = 0x17

.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static sIsVzwDevice:Z


# instance fields
.field private mAdaptiveEventManager:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAm:Landroid/app/ActivityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBendedBundle:Landroid/os/Bundle;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCriteria_IN_RSSI:I

.field private mCriteria_OUT_RSSI:I

.field private mDelayedShowingSequence:I

.field private final mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideAnimationRun:Z

.field private mHiding:Z

.field private mIsUsbAlreadyConnected:Z

.field private mIsValidValue:Z

.field private mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedReenableAdbAfterUnlock:Z

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mOffset_IN_RSSI:I

.field private mOffset_OUT_RSSI:I

.field private mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:I

.field private mSViewCoverCovered:Z

.field private mScreenOffByProxSensor:Z

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSecureLockSoundId:I

.field private mSecureUnlockSoundId:I

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private final mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mSuppressNextLockSound:Z

.field private mSuppressNextUnLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mTrust:Z

.field private mTrustedSoundId:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWM:Landroid/view/IWindowManager;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWearabledevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    .line 394
    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    .line 2407
    const/16 v0, 0x7d0

    sput v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 264
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 294
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 301
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 308
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 334
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    .line 354
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 356
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 357
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 375
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 392
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    .line 405
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 407
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 604
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1612
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1653
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1856
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 2100
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 2408
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    .line 2410
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    .line 2431
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    .line 2432
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    .line 2433
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    .line 2434
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    .line 2435
    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    .line 2437
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$8;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 2603
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    .line 2673
    iput-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleLaunchActivityBended(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mIsValidValue:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOutOfRangeAlertRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5200()I
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->OUT_OF_RANGE_ALERT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    return v0
.end method

.method private adjustStatusBarLocked()V
    .locals 4

    .prologue
    .line 2185
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 2186
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2189
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 2190
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :cond_1
    :goto_0
    return-void

    .line 2194
    :cond_2
    const/4 v0, 0x0

    .line 2195
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 2199
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 2200
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 2202
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2203
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 2207
    :cond_4
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOccluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 2212
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 1110
    return-void
.end method

.method private checkSViewCoverWithNonSecure()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2595
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 2597
    .local v0, "isAutoUnlockEnabled":Z
    :goto_0
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoUnlockEnabled in KeyguardViewMediator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSViewCoverCovered:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isAutoUnlockEnabled":Z
    :cond_0
    move v0, v2

    .line 2595
    goto :goto_0

    .restart local v0    # "isAutoUnlockEnabled":Z
    :cond_1
    move v1, v2

    .line 2599
    goto :goto_1
.end method

.method private doKeyguardLaterLocked(I)V
    .locals 31
    .param p1, "why"    # I

    .prologue
    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 967
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v21, "screen_off_timeout"

    const/16 v28, 0x7530

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v8, v0

    .line 971
    .local v8, "displayTimeout":J
    const-string v21, "lock_screen_lock_after_timeout"

    const/16 v28, 0x1388

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 976
    .local v16, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v21

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v18

    .line 980
    .local v18, "policyTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v28, "enterprise_policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 982
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const-wide/16 v24, -0x1

    .line 983
    .local v24, "unlock_delay":J
    if-eqz v7, :cond_0

    .line 984
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/PasswordPolicy;->getPasswordLockDelay()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 985
    :cond_0
    move-wide/from16 v10, v16

    .line 986
    .local v10, "final_delay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_1

    const-wide/16 v28, 0x0

    cmp-long v21, v24, v28

    if-ltz v21, :cond_1

    .line 987
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 988
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "final_delay was changed by mdm"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_1
    const-wide/16 v28, 0x0

    cmp-long v21, v18, v28

    if-lez v21, :cond_a

    .line 994
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 995
    sub-long v28, v18, v8

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 998
    .local v22, "timeout":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 999
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 1000
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 1015
    :cond_2
    :goto_0
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timeout="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_3
    :goto_1
    const-wide/16 v28, 0x0

    cmp-long v21, v22, v28

    if-gtz v21, :cond_10

    .line 1048
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1049
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1051
    :cond_4
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 1052
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    .line 1106
    :cond_5
    :goto_2
    return-void

    .line 1001
    :cond_6
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v8

    .line 1005
    :cond_7
    cmp-long v21, v18, v8

    if-gtz v21, :cond_8

    .line 1006
    const-wide/16 v22, 0x0

    goto :goto_0

    .line 1008
    :cond_8
    cmp-long v21, v18, v10

    if-lez v21, :cond_9

    .line 1009
    sub-long v22, v10, v8

    goto :goto_0

    .line 1011
    :cond_9
    sub-long v22, v18, v8

    goto :goto_0

    .line 1020
    .end local v22    # "timeout":J
    :cond_a
    move-wide/from16 v22, v10

    .line 1021
    .restart local v22    # "timeout":J
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timeout : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1026
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1027
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1028
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v8

    .line 1031
    :cond_b
    sub-long v22, v10, v8

    .line 1040
    :cond_c
    :goto_3
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "timeout="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1034
    :cond_d
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 1035
    const-wide/16 v22, 0x1388

    goto :goto_3

    .line 1036
    :cond_e
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1037
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 1055
    :cond_f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1059
    :cond_10
    const/4 v15, 0x1

    .line 1060
    .local v15, "isSetAlarm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v28, "automatic_unlock"

    const/16 v29, 0x0

    const/16 v30, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 1064
    .local v13, "isAutoUnlock":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v21

    if-eqz v21, :cond_14

    :cond_11
    const/4 v14, 0x1

    .line 1066
    .local v14, "isSecureLock":Z
    :goto_4
    if-nez v14, :cond_12

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_12

    .line 1079
    :cond_12
    if-eqz v15, :cond_13

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    add-long v26, v28, v22

    .line 1082
    .local v26, "when":J
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v12, "intent":Landroid/content/Intent;
    const-string v21, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v28, 0x0

    const/high16 v29, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 1086
    .local v20, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v21, v0

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    move-wide/from16 v2, v26

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1088
    const-string v21, "KeyguardViewMediator"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "sender":Landroid/app/PendingIntent;
    .end local v26    # "when":J
    :cond_13
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1092
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 1094
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto/16 :goto_2

    .line 1064
    .end local v14    # "isSecureLock":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1096
    .restart local v14    # "isSecureLock":Z
    :cond_15
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v21

    if-nez v21, :cond_16

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 1101
    :cond_16
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1360
    iget-boolean v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1362
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because externally disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_1
    :goto_0
    return-void

    .line 1377
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1378
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because it is already showing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :cond_3
    new-instance v4, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1385
    .local v4, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v4}, Landroid/lsm/LockedStatePasswordWrapper;->setLocked()I

    .line 1390
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1391
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v10, "access_control_enabled"

    const/4 v11, -0x2

    invoke-static {v1, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v9, :cond_4

    .line 1393
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because access control is enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    goto :goto_0

    .line 1399
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v6

    .line 1400
    .local v6, "provisioned":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 1401
    .local v5, "numPhones":I
    const/4 v3, 0x0

    .line 1402
    .local v3, "lockedOrMissing":Z
    new-array v7, v5, [Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1404
    .local v7, "state":[Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_6

    .line 1405
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v10

    aput-object v10, v7, v2

    .line 1406
    if-nez v3, :cond_5

    aget-object v10, v7, v2

    invoke-virtual {p0, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_5
    move v3, v9

    .line 1407
    :goto_2
    if-eqz v3, :cond_9

    .line 1410
    :cond_6
    if-nez v3, :cond_a

    if-nez v6, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1411
    :cond_7
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v3, v8

    .line 1406
    goto :goto_2

    .line 1404
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1416
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v10

    if-eqz v10, :cond_c

    if-nez v3, :cond_c

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_c

    .line 1420
    :cond_b
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1425
    :cond_c
    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked()Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_d

    .line 1432
    const-string v9, "KeyguardViewMediator"

    const-string v10, "Not showing lock screen since just decrypted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iput-boolean v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1435
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    goto/16 :goto_0

    .line 1440
    :cond_d
    const-string v10, "trigger_restart_min_framework"

    const-string v11, "vold.decrypt"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1442
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because skt lock and device encryte"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1447
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1448
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because factory mode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1453
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1454
    const-string v9, "KeyguardViewMediator"

    const-string v10, "doKeyguard: not showing because cover is showing"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    if-eqz p1, :cond_1

    const-string v9, "fromOnSystemReady"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1461
    const-string v9, "KeyguardViewMediator"

    const-string v10, "mShowing set to false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iput-boolean v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    goto/16 :goto_0

    .line 1468
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInLockTaskMode()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1469
    const-string v8, "KeyguardViewMediator"

    const-string v9, "doKeyguard: not showing because Pin Window is enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1473
    :cond_11
    const-string v8, "KeyguardViewMediator"

    const-string v10, "doKeyguard: showing the lock screen"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iput-boolean v9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1477
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1478
    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 1479
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_1

    .line 1480
    invoke-virtual {v0, v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    goto/16 :goto_0
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 2121
    monitor-enter p0

    .line 2122
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2125
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->checkSViewCoverWithNonSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    .line 2128
    monitor-exit p0

    .line 2146
    :goto_0
    return-void

    .line 2131
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_2

    .line 2132
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_1

    .line 2133
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 2145
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2141
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 7
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1935
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    if-eqz p1, :cond_0

    .line 1944
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1946
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1948
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_1

    .line 1950
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1957
    if-eqz p1, :cond_1

    .line 1960
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1961
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1965
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1966
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v2, :cond_2

    .line 1967
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 1970
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1971
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 1972
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_3

    .line 1973
    invoke-virtual {v0, v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    .line 1976
    .end local v0    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_3
    return-void

    .line 1951
    :catch_0
    move-exception v1

    .line 1952
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call onKeyguardExitResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1994
    monitor-enter p0

    .line 1995
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1997
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1999
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2004
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2006
    :cond_0
    monitor-exit p0

    .line 2007
    return-void

    .line 2006
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleLaunchActivityBended(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2694
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2695
    const-string v2, "KeyguardViewMediator"

    const-string v3, "CocktailBar is not supported but setBendedPendingIntent() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :cond_0
    :goto_0
    return-void

    .line 2699
    :cond_1
    const-string v2, "PI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2700
    .local v1, "pIntent":Landroid/app/PendingIntent;
    const-string v2, "FI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2701
    .local v0, "fIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2702
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$10;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method

.method private handleNotifyScreenOff()V
    .locals 2

    .prologue
    .line 2265
    monitor-enter p0

    .line 2266
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 2268
    monitor-exit p0

    .line 2269
    return-void

    .line 2268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 2276
    monitor-enter p0

    .line 2277
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 2279
    monitor-exit p0

    .line 2280
    return-void

    .line 2279
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleOnActivityDrawn()V
    .locals 1

    .prologue
    .line 2149
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onActivityDrawn()V

    .line 2152
    :cond_0
    return-void
.end method

.method private handleReset()V
    .locals 4

    .prologue
    .line 2224
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 2225
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2226
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2227
    .local v0, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->isSimLockMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2228
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container exist on device. Ignoring owner keyguard right now from handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :goto_0
    return-void

    .line 2231
    .restart local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container not exists on device."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_1
    monitor-enter p0

    .line 2237
    :try_start_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleReset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 2239
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleSetOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 1326
    monitor-enter p0

    .line 1327
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 1328
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(Z)V

    .line 1330
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1331
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1333
    :cond_0
    monitor-exit p0

    .line 1334
    return-void

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2062
    monitor-enter p0

    .line 2063
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 2064
    const-string v2, "KeyguardViewMediator"

    const-string v3, "ignoring handleShow because system is not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    monitor-exit p0

    .line 2098
    :goto_0
    return-void

    .line 2067
    :cond_0
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleShow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 2072
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2073
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2074
    .local v0, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->isSimLockMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2075
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container exist on device. Ignoring owner keyguard right now from handleShow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    monitor-exit p0

    goto :goto_0

    .line 2096
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    .end local v1    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2078
    .restart local v0    # "personaManager":Landroid/os/PersonaManager;
    .restart local v1    # "versionInfo":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Kiosk container not exists on device."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    .end local v0    # "personaManager":Landroid/os/PersonaManager;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2084
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2085
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2086
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2087
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2088
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2089
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2090
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 2093
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2095
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2096
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2097
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    goto :goto_0
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2155
    monitor-enter p0

    .line 2157
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v0, :cond_0

    .line 2158
    monitor-exit p0

    .line 2182
    :goto_0
    return-void

    .line 2160
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 2164
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I

    if-nez v0, :cond_1

    .line 2165
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    if-eqz v0, :cond_1

    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 2167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 2171
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 2172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 2174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 2176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2178
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2179
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2180
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2181
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUpdateRSSI(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 2530
    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2531
    .local v1, "rssi":I
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2532
    .local v0, "RemoteRssidevice":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateRSSI( rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BluetoothDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2552
    :cond_0
    :goto_0
    return-void

    .line 2536
    :cond_1
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 2537
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SECURE_LOCK_TO_SWIPE_LOCK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2539
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2540
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2541
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 2543
    :cond_2
    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 2544
    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleUpdateRSSI(SMART_LOCK_SWIPE_LOCK_TO_SECURE_LOCK) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSwipeSmartLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2546
    sput-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 2547
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2548
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 2549
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 2247
    monitor-enter p0

    .line 2248
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 2255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 2256
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 2257
    monitor-exit p0

    .line 2258
    return-void

    .line 2257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1576
    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1578
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1579
    return-void
.end method

.method private isAdbEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2580
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2287
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFactoryMode()Z
    .locals 1

    .prologue
    .line 2556
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 2560
    if-nez p1, :cond_0

    .line 2561
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: device is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :goto_0
    return v1

    .line 2565
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2566
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2567
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: name is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2571
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GALAXY GEAR ("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2572
    const-string v1, "KeyguardViewMediator"

    const-string v2, "isGear1: device is B1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/4 v1, 0x1

    goto :goto_0

    .line 2575
    :cond_2
    const-string v2, "KeyguardViewMediator"

    const-string v3, "isGear1: device is not B1!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAm:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 2725
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    .line 2727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 1

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1141
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1544
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1546
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1554
    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1556
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1557
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x1

    .line 2024
    if-nez p1, :cond_1

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2025
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2026
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 2030
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 2032
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 2036
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0
.end method

.method private playSounds(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 2012
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 2013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 2021
    :goto_0
    return-void

    .line 2018
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private playTrustedSound()V
    .locals 1

    .prologue
    .line 2044
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 2048
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1523
    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1525
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1526
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    .line 1979
    monitor-enter p0

    .line 1980
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 1981
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1982
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1986
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    :goto_0
    monitor-exit p0

    .line 1987
    return-void

    .line 1984
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    goto :goto_0

    .line 1986
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAdbModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2584
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2592
    :cond_0
    :goto_0
    return-void

    .line 2588
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAdbEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setup()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 706
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 707
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    .line 708
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    .line 709
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v1, "show keyguard"

    invoke-virtual {v0, v11, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 710
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAm:Landroid/app/ActivityManager;

    .line 714
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 716
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    const-string v0, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const-string v0, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    const-string v0, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 726
    :cond_0
    const-string v0, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v0, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v0, "com.samsung.pen.INSERT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 741
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 747
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 749
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 750
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 751
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V

    .line 754
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 755
    .local v9, "smartUnlockFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v0, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string v0, "android.bluetooth.device.action.RSSI"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    const-string v0, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartUnlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 764
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 765
    .local v3, "edmFilter":Landroid/content/IntentFilter;
    const-string v0, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mEdmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 770
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 771
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v11

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 777
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 779
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 781
    .local v6, "cr":Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 783
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v11, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 800
    const-string v10, "/system/media/audio/ui/Lock_none_effect.ogg"

    .line 801
    .local v10, "soundPath":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 802
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v10, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    .line 804
    :cond_3
    if-eqz v10, :cond_4

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureLockSoundId:I

    if-nez v0, :cond_5

    .line 805
    :cond_4
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load secure lock sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_5
    const-string v10, "/system/media/audio/ui/Unlock_none_effect.ogg"

    .line 809
    if-eqz v10, :cond_6

    .line 810
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v10, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    .line 812
    :cond_6
    if-eqz v10, :cond_7

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSecureUnlockSoundId:I

    if-nez v0, :cond_8

    .line 813
    :cond_7
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load secure unlock sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_8
    const-string v0, "trusted_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 818
    if-eqz v10, :cond_9

    .line 819
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v0, v10, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 821
    :cond_9
    if-eqz v10, :cond_a

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v0, :cond_b

    .line 822
    :cond_a
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load trusted sound from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 827
    .local v8, "lockSoundDefaultAttenuation":I
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-float v2, v8

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 829
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v1, 0x10a004b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 832
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    .line 834
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundChangeCallback:Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->setLockSoundChangeCallback(Lcom/android/keyguard/sec/KeyguardEffectViewController$LockSoundChangeCallback;)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAdaptiveEventManager:Lcom/android/keyguard/sec/AdaptiveEventManager;

    .line 837
    return-void

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "lockSoundDefaultAttenuation":I
    .end local v10    # "soundPath":Ljava/lang/String;
    :cond_c
    move v0, v12

    .line 774
    goto/16 :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1564
    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1567
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1568
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1569
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 2052
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    :goto_1
    return-void

    .line 2052
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2053
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1533
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1535
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1516
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 1341
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1343
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1344
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleDismiss()V
    .locals 1

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissIfInsecure()V

    .line 1508
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v0, :cond_0

    .line 1509
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V

    .line 1512
    :cond_0
    return-void
.end method

.method public handleLunchPersoLock()V
    .locals 2

    .prologue
    .line 1597
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleLunchPersoLock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguardLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 1607
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1608
    return-void

    .line 1604
    :cond_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "resetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0
.end method

.method protected handleRemoveAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2393
    const-string v1, "requestClass"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, "requestClass":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 2395
    return-void
.end method

.method protected handleSetAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2398
    const-string v3, "requestClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2399
    .local v1, "requestClass":Ljava/lang/String;
    const-string v3, "smallView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 2400
    .local v2, "smallView":Landroid/widget/RemoteViews;
    const-string v3, "bigView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 2401
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2402
    return-void
.end method

.method protected handleUpdateAdaptiveEvent(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2386
    const-string v3, "requestClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2387
    .local v1, "requestClass":Ljava/lang/String;
    const-string v3, "smallView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 2388
    .local v2, "smallView":Landroid/widget/RemoteViews;
    const-string v3, "bigView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 2389
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 2390
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 2283
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockedOrMissing(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 6
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1487
    const-string v3, "keyguard.no_require_sim"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 1488
    .local v0, "requireSim":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1489
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockedOrMissing() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",requireSim :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    .line 1495
    :cond_2
    :goto_1
    return v2

    .end local v0    # "requireSim":Z
    :cond_3
    move v0, v2

    .line 1487
    goto :goto_0

    .line 1495
    .restart local v0    # "requireSim":Z
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_2

    :cond_5
    if-eqz v0, :cond_2

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 1300
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1834
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1836
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1837
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 1838
    invoke-static {v2}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 1841
    :cond_0
    const v3, 0x11170

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1842
    monitor-enter p0

    .line 1843
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1844
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    if-eqz p1, :cond_1

    move v3, v1

    :goto_0
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v4, v5, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1846
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1847
    return-void

    .line 1844
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    move v3, v2

    .line 1845
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2327
    return-void
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 2292
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 2293
    monitor-enter p0

    .line 2294
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 2295
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v1, :cond_0

    .line 2296
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 2298
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2301
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 2302
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_1

    .line 2303
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyKeyguardState(Z)V

    .line 2306
    .end local v0    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :cond_1
    return-void

    .line 2298
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 1148
    monitor-enter p0

    .line 1149
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    .line 1154
    :cond_0
    monitor-exit p0

    .line 1155
    return-void

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 1161
    monitor-enter p0

    .line 1162
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 1163
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1165
    :cond_0
    monitor-exit p0

    .line 1166
    return-void

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 9
    .param p1, "why"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 897
    monitor-enter p0

    .line 899
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 900
    const-string v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScreenTurnedOff("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 903
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 905
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    .line 906
    .local v1, "effectView":Lcom/android/keyguard/sec/KeyguardEffectViewController;
    if-eqz v1, :cond_0

    .line 907
    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->changeWallpaperByScreenOff()V

    .line 914
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 918
    .local v2, "lockImmediately":Z
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 920
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v4, :cond_5

    .line 921
    const-string v3, "KeyguardViewMediator"

    const-string v4, "pending exit secure callback cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 928
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v3, :cond_2

    .line 929
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 954
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 955
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 956
    return-void

    .line 914
    .end local v2    # "lockImmediately":Z
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    move v2, v3

    goto :goto_0

    .line 924
    .restart local v2    # "lockImmediately":Z
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 954
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "effectView":Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .end local v2    # "lockImmediately":Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 931
    .restart local v1    # "effectView":Lcom/android/keyguard/sec/KeyguardEffectViewController;
    .restart local v2    # "lockImmediately":Z
    :cond_5
    :try_start_4
    iget-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v4, :cond_6

    .line 932
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 933
    :cond_6
    if-eq p1, v8, :cond_7

    if-ne p1, v7, :cond_9

    if-nez v2, :cond_9

    .line 935
    :cond_7
    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->sIsVzwDevice:Z

    if-eqz v3, :cond_8

    if-ne p1, v8, :cond_8

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 938
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_2

    .line 941
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked(I)V

    goto :goto_2

    .line 944
    :cond_9
    const/4 v4, 0x4

    if-ne p1, v4, :cond_a

    .line 946
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    goto :goto_2

    .line 948
    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v4

    if-eqz v4, :cond_b

    if-ne p1, v3, :cond_b

    .line 950
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 952
    :cond_b
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1116
    monitor-enter p0

    .line 1118
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestBluetoothRSSI()V

    .line 1122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z

    .line 1124
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 1125
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-eqz p1, :cond_1

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 1129
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 1131
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 1132
    return-void

    .line 1129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 4

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 850
    monitor-enter p0

    .line 851
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onSystemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SIM_MANAGE_DONE"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 857
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 868
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    const-string v1, "KeyguardViewMediator"

    const-string v2, "suppressing biometric unlock during boot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 881
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "fromOnSystemReady"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 883
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 885
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 889
    return-void

    .line 873
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 885
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 2314
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 2316
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 2366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2367
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2369
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2370
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2371
    return-void
.end method

.method public requestBluetoothRSSI()V
    .locals 3

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->readRawRssi()Z

    .line 2525
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBluetoothRSSI mWearabledevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :cond_0
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2356
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v2, "smallView"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2358
    const-string v2, "bigView"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2359
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2360
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2361
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2362
    return-void
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "p"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .prologue
    .line 2677
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2678
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2679
    const-string v2, "FI"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2682
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eqz v2, :cond_1

    .line 2683
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2691
    :cond_0
    :goto_0
    return-void

    .line 2684
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    .line 2685
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 2686
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2687
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2688
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1594
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1174
    monitor-enter p0

    .line 1175
    :try_start_0
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeyguardEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vr_keyguard_control"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1180
    .local v1, "hmtConnected":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1194
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1196
    if-nez p1, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_7

    .line 1197
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_5

    .line 1198
    const-string v2, "KeyguardViewMediator"

    const-string v3, "in process of verifyUnlock request, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    monitor-exit p0

    .line 1245
    :goto_1
    return-void

    .end local v1    # "hmtConnected":Z
    :cond_1
    move v1, v2

    .line 1178
    goto :goto_0

    .line 1184
    .restart local v1    # "hmtConnected":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1188
    monitor-exit p0

    goto :goto_1

    .line 1244
    .end local v1    # "hmtConnected":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1205
    .restart local v1    # "hmtConnected":Z
    :cond_5
    :try_start_1
    const-string v2, "KeyguardViewMediator"

    const-string v3, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1208
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 1244
    :cond_6
    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 1209
    :cond_7
    if-eqz p1, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v2, :cond_6

    .line 1211
    const-string v2, "KeyguardViewMediator"

    const-string v3, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1215
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_8

    .line 1216
    const-string v2, "KeyguardViewMediator"

    const-string v3, "onKeyguardExitResult(false), resetting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1222
    :goto_3
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1223
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_2

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1225
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextUnLockSound:Z

    .line 1226
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 1231
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1232
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1233
    const-string v2, "KeyguardViewMediator"

    const-string v3, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_4
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_9

    .line 1236
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1237
    :catch_1
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_4

    .line 1241
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9
    const-string v2, "KeyguardViewMediator"

    const-string v3, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setOccluded(Z)V
    .locals 7
    .param p1, "isOccluded"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v3, 0x0

    .line 1307
    const-string v2, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOccluded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1310
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1313
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1314
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1315
    .local v1, "msg2":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1316
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mBendedBundle:Landroid/os/Bundle;

    .line 1320
    .end local v1    # "msg2":Landroid/os/Message;
    :cond_0
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v2, v3

    .line 1309
    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setup()V

    .line 842
    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 843
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 2320
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2322
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2323
    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2375
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdaptiveEvent() : requestClass= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , smallView= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2377
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    const-string v2, "smallView"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2379
    const-string v2, "bigView"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2380
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2381
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2382
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2383
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 703
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 1251
    monitor-enter p0

    .line 1252
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    const-string v1, "KeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1283
    return-void

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1282
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1261
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 1265
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1267
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1268
    :catch_1
    move-exception v0

    .line 1269
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    .line 1274
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1275
    :catch_2
    move-exception v0

    .line 1276
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method
