.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    }
.end annotation


# static fields
.field private static final ACTION_FACE_UNLOCK_STARTED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STARTED"

.field private static final ACTION_FACE_UNLOCK_STOPPED:Ljava/lang/String; = "com.android.facelock.FACE_UNLOCK_STOPPED"

.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_LOCK_SET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

.field private static final ACTION_FONT_CHANGED:Ljava/lang/String; = "FONT_THEME_CHANGED"

.field private static final DEBUG:Z = true

.field private static final DEBUG_SIM_STATES:Z = true

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_AIRPLANE_UPDATE:I = 0x141

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_FACE_UNLOCK_STATE_CHANGED:I = 0x145

.field private static final MSG_FINGERPRINT_ACQUIRED:I = 0x144

.field private static final MSG_FINGERPRINT_PROCESSED:I = 0x143

.field private static final MSG_FONT_CHANGED:I = 0x146

.field private static final MSG_KEYGUARD_BOUNCER_CHANGED:I = 0x142

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_REPORT_EMERGENCY_CALL_ACTION:I = 0x13e

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x140

.field private static final MSG_SCREEN_TURNED_ON:I = 0x13f

.field private static final MSG_SET_CURRENT_CLIENT_ID:I = 0x13b

.field private static final MSG_SET_PLAYBACK_STATE:I = 0x13c

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_INFO_CHANGED:I = 0x13d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHING:I = 0x136

.field private static final MSG_USER_SWITCH_COMPLETE:I = 0x13a

.field private static final SPASS_PREF_KEY:Ljava/lang/String; = "KeyguardSPassPopupGuideInt"

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field public static mSwipeLockShowingBeforeTimeout:Z

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public static sIsMultiSimEnabled:Z


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockThemeFont:Ljava/lang/String;

.field private mClockVisible:Z

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mFingerprintManagerReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOldUserPersona:Z

.field private mKeyguardIsVisible:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedToBeReturn:Z

.field private mNumericThemeFont:Ljava/lang/String;

.field private mPhoneState:I

.field private mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mRingMode:I

.field private mScreenOn:Z

.field private mShowingCMAS:Z

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSwitchingUser:Z

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonyPlmnDefault:Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    .line 284
    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 166
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 172
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 181
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    .line 193
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 279
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 280
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    .line 281
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 427
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 429
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 518
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintManagerReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    .line 733
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 734
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 736
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    .line 745
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 751
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v5, 0x64

    invoke-direct {v0, v1, v5, v2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 752
    const/4 v11, 0x0

    .line 753
    .local v11, "numPhones":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 755
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 758
    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    .line 759
    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    .line 760
    new-array v0, v11, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 761
    new-array v0, v11, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 762
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v11, :cond_3

    .line 763
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v10

    .line 764
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aput-object v4, v0, v10

    .line 765
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v10

    .line 766
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v10

    .line 762
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v10    # "i":I
    .end local v11    # "numPhones":I
    :cond_1
    move v0, v2

    .line 737
    goto :goto_0

    .line 740
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    goto :goto_1

    .line 769
    .restart local v10    # "i":I
    .restart local v11    # "numPhones":I
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    .line 772
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 773
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v0, "FONT_THEME_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    .local v6, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v0, 0x3e8

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 791
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 794
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 795
    .local v3, "allUserFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 804
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_3
    const-string v0, "trust"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/trust/TrustManager;

    .line 825
    .local v12, "trustManager":Landroid/app/trust/TrustManager;
    invoke-virtual {v12, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 828
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/fingerprint/FingerprintManager;

    .line 829
    .local v9, "fpm":Landroid/service/fingerprint/FingerprintManager;
    if-eqz v9, :cond_4

    .line 830
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintManagerReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    invoke-virtual {v9, v0}, Landroid/service/fingerprint/FingerprintManager;->startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V

    .line 831
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateRequest()V

    .line 832
    return-void

    .line 819
    .end local v9    # "fpm":Landroid/service/fingerprint/FingerprintManager;
    .end local v12    # "trustManager":Landroid/app/trust/TrustManager;
    :catch_0
    move-exception v7

    .line 821
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintProcessed(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdateChina(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFontChangeUpdate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnavailableSimState(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnDefault:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1432
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040883

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1435
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 682
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 685
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method public static getPhoneId()I
    .locals 4

    .prologue
    .line 1856
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    .line 1857
    .local v2, "subId":J
    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1859
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1860
    const/4 v0, 0x0

    .line 1862
    :cond_0
    return v0
.end method

.method public static getPhoneId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1847
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1849
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1850
    const/4 v0, 0x0

    .line 1852
    :cond_0
    return v0
.end method

.method private getSimStateRequest()V
    .locals 10

    .prologue
    .line 1865
    const-string v7, "KeyguardUpdateMonitor"

    const-string v8, "getSimStateRequest()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sIsMultiSimEnabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isSimLocked() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1904
    :cond_0
    return-void

    .line 1870
    :cond_1
    const/4 v3, 0x0

    .line 1871
    .local v3, "numPhones":I
    const/4 v1, 0x0

    .line 1873
    .local v1, "changed":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 1877
    const-string v7, "gsm.sim.state"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1879
    .local v5, "simState":Ljava/lang/String;
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimStateRequest() :  simState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const/4 v6, 0x0

    .line 1881
    .local v6, "simStates":[Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1882
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1884
    :cond_2
    const/4 v4, 0x0

    .local v4, "simSlot":I
    :goto_0
    if-ge v4, v3, :cond_0

    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 1885
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "simStates["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    aget-object v7, v6, v4

    const-string v8, "PIN_REQUIRED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1887
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v8, v7, v4

    .line 1888
    const/4 v1, 0x1

    .line 1894
    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    .line 1895
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 1896
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1897
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_4

    .line 1898
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v7, v7, v4

    invoke-virtual {v0, v7, v4}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1895
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1889
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_5
    aget-object v7, v6, v4

    const-string v8, "PUK_REQUIRED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1890
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v8, v7, v4

    .line 1891
    const/4 v1, 0x1

    goto :goto_1

    .line 1884
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1421
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "plmn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1425
    .end local v0    # "plmn":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1423
    .restart local v0    # "plmn":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1425
    .end local v0    # "plmn":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1444
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "spn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1450
    .end local v0    # "spn":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAirplaneUpdate(I)V
    .locals 9
    .param p1, "on"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 957
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "handleAirplaneUpdate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_e

    .line 959
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 960
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    sget-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-nez v5, :cond_8

    .line 961
    if-eqz v0, :cond_2

    .line 962
    if-ne p1, v8, :cond_4

    .line 966
    if-nez v1, :cond_0

    .line 967
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    .line 969
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_3

    .line 970
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v7

    .line 971
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 958
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 976
    :cond_4
    if-nez v1, :cond_5

    .line 977
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    .line 979
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_7

    .line 980
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v7

    .line 981
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 983
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 987
    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 988
    const/4 v4, 0x0

    .line 989
    .local v4, "numPhones":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 990
    if-eqz v0, :cond_2

    .line 991
    if-ne p1, v8, :cond_b

    .line 992
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 993
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v3

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v3

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_a

    .line 995
    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v3

    aput-object v6, v5, v3

    .line 996
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v3

    .line 997
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto :goto_1

    .line 1000
    :cond_a
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 992
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1004
    .end local v3    # "l":I
    :cond_b
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v4, :cond_2

    .line 1005
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_d

    .line 1007
    :cond_c
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 1008
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v2

    .line 1009
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    goto/16 :goto_1

    .line 1012
    :cond_d
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1019
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "j":I
    .end local v4    # "numPhones":I
    :cond_e
    return-void
.end method

.method private handleAirplaneUpdateChina(I)V
    .locals 10
    .param p1, "on"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1022
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "handleAirplaneUpdate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v6, 0x2

    new-array v2, v6, [Z

    .line 1024
    .local v2, "isSimStateChanged":[Z
    const/4 v5, 0x0

    .line 1026
    .local v5, "numPhones":I
    sget-boolean v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-nez v6, :cond_5

    .line 1027
    if-ne p1, v9, :cond_3

    .line 1028
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v8

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v8

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v7, :cond_1

    .line 1029
    :cond_0
    aput-boolean v9, v2, v8

    .line 1030
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v7, v7, v8

    aput-object v7, v6, v8

    .line 1031
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v7, v6, v8

    .line 1065
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_d

    .line 1066
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1067
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    sget-boolean v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-nez v6, :cond_b

    .line 1068
    if-eqz v0, :cond_2

    .line 1069
    aget-boolean v6, v2, v8

    if-eqz v6, :cond_2

    .line 1070
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v8

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1065
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1034
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v8

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v8

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v7, :cond_1

    .line 1035
    :cond_4
    aput-boolean v9, v2, v8

    .line 1036
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v7, v7, v8

    aput-object v7, v6, v8

    .line 1037
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v7, v6, v8

    goto :goto_0

    .line 1040
    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1041
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 1042
    if-ne p1, v9, :cond_8

    .line 1043
    const/4 v4, 0x0

    .local v4, "l":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 1044
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v4

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v4

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v7, :cond_7

    .line 1046
    :cond_6
    aput-boolean v9, v2, v4

    .line 1048
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v7, v7, v4

    aput-object v7, v6, v4

    .line 1049
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v7, v6, v4

    .line 1043
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1053
    .end local v4    # "l":I
    :cond_8
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v5, :cond_1

    .line 1054
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v3

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v7, :cond_a

    .line 1056
    :cond_9
    aput-boolean v9, v2, v3

    .line 1058
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v7, v7, v3

    aput-object v7, v6, v3

    .line 1059
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrevSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v7, v6, v3

    .line 1053
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1073
    .end local v3    # "j":I
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .restart local v1    # "i":I
    :cond_b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1074
    if-eqz v0, :cond_2

    .line 1075
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    if-ge v3, v5, :cond_2

    .line 1076
    aget-boolean v6, v2, v3

    if-eqz v6, :cond_c

    .line 1077
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1075
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1083
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v3    # "j":I
    :cond_d
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 1189
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 1191
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1192
    if-eqz v0, :cond_1

    .line 1193
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1194
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1195
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1196
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1200
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private handleCarrierInfoUpdate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1206
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1210
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1211
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1212
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v2, :cond_1

    .line 1213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1209
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1221
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 4

    .prologue
    .line 1290
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleClockVisibilityChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1292
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1293
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 360
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    .line 358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 3
    .param p1, "info"    # I

    .prologue
    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 350
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleFingerprintProcessed(I)V
    .locals 8
    .param p1, "fingerprintId"    # I

    .prologue
    .line 325
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 335
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v4    # "userId":I
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "Failed to get current user id: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v4    # "userId":I
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 339
    .local v3, "res":Landroid/content/ContentResolver;
    invoke-static {v3, v4}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintIdsForUser(Landroid/content/ContentResolver;I)[I

    move-result-object v2

    .line 340
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 341
    aget v5, v2, v1

    if-ne v5, p1, :cond_3

    .line 342
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintRecognized(I)V

    .line 340
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleFontChangeUpdate()V
    .locals 4

    .prologue
    .line 1346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1347
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1348
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1349
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockThemeFont:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNumericThemeFont:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFontChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 6
    .param p1, "bouncer"    # I

    .prologue
    const/4 v2, 0x1

    .line 1319
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardBouncerChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    if-ne p1, v2, :cond_1

    .line 1321
    .local v2, "isBouncer":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 1322
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1323
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1324
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 1322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1320
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isBouncer":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1328
    .restart local v1    # "i":I
    .restart local v2    # "isBouncer":Z
    :cond_2
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 6
    .param p1, "showing"    # I

    .prologue
    const/4 v2, 0x1

    .line 1303
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    if-ne p1, v2, :cond_1

    .line 1305
    .local v2, "isShowing":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 1306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1307
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1308
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 1306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1304
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    .end local v2    # "isShowing":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1312
    .restart local v1    # "i":I
    .restart local v2    # "isShowing":Z
    :cond_2
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 3

    .prologue
    .line 1334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1335
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1336
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    .line 1334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleSimStateChange(Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 9
    .param p1, "simArgs"    # Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    .prologue
    const/4 v8, 0x0

    .line 1227
    iget-object v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1228
    .local v3, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;->subscription:I

    .line 1231
    .local v4, "subscription":I
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSimStateChange: intentValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state resolved to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1236
    .local v0, "airPlaneEnabled":I
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v5, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v4

    if-eq v3, v5, :cond_5

    .line 1238
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatching state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "subscription: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v3, v5, v4

    .line 1242
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTMOModel()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1243
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    .line 1284
    :cond_1
    :goto_0
    return-void

    .line 1245
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1246
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1247
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_3

    .line 1248
    sget-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v5, :cond_4

    .line 1249
    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1245
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1251
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_2

    .line 1256
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2    # "i":I
    :cond_5
    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v8

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v8

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    :cond_6
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v5, :cond_1

    .line 1259
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatching state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subscription: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v3, v5, v8

    .line 1263
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTMOModel()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1264
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneUpdate(I)V

    goto :goto_0

    .line 1266
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1267
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1268
    .restart local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_8

    .line 1269
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1266
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private handleTimeUpdate()V
    .locals 4

    .prologue
    .line 1176
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1178
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1179
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1177
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 726
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 724
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .param p0, "old"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1388
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1389
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1390
    .local v2, "wasPluggedIn":Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1395
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1413
    :cond_0
    :goto_1
    return v3

    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1
    move v1, v4

    .line 1390
    goto :goto_0

    .line 1400
    .restart local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1405
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1410
    :cond_4
    if-ne v2, v3, :cond_5

    if-ne v0, v3, :cond_5

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-ne v5, v6, :cond_0

    :cond_5
    move v3, v4

    .line 1413
    goto :goto_1
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 835
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 395
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1688
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1716
    move-object v0, p0

    .line 1717
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTrustDisabled(I)Z
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 371
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 373
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v5, :cond_1

    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, "disabledByGlobalActions":Z
    const/4 v3, 0x0

    .line 377
    .local v3, "disabledBySettings":Z
    invoke-virtual {v5, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    const/high16 v9, 0x20000

    if-lt v8, v9, :cond_2

    move v0, v6

    .line 382
    .local v0, "disableByEnforcedPolicy":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    .line 384
    .local v4, "disabledBySimPin":Z
    invoke-virtual {v5, v10, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_3

    move v1, v6

    .line 386
    .local v1, "disabledByDpm":Z
    :goto_1
    if-nez v1, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v7, v6

    .line 389
    .end local v0    # "disableByEnforcedPolicy":Z
    .end local v1    # "disabledByDpm":Z
    .end local v2    # "disabledByGlobalActions":Z
    .end local v3    # "disabledBySettings":Z
    .end local v4    # "disabledBySimPin":Z
    :cond_1
    return v7

    .restart local v2    # "disabledByGlobalActions":Z
    .restart local v3    # "disabledBySettings":Z
    :cond_2
    move v0, v7

    .line 377
    goto :goto_0

    .restart local v0    # "disableByEnforcedPolicy":Z
    .restart local v4    # "disabledBySimPin":Z
    :cond_3
    move v1, v7

    .line 384
    goto :goto_1
.end method

.method private isUnavailableSimState(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "stateExtra":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ICCID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MDN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "unavailable intent, drop!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x1

    .line 416
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onFingerprintRecognized(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 318
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRecognized(I)V

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1489
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1490
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1491
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1492
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1494
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId()I

    move-result v2

    .line 1495
    .local v2, "subscription":I
    const/4 v0, 0x0

    .line 1496
    .local v0, "count":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 1498
    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v3, :cond_0

    .line 1499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1500
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {p1, v3, v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1501
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-virtual {p1, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1506
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1508
    :cond_1
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1510
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 5

    .prologue
    .line 840
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 853
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 859
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 860
    .local v0, "provisioned":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 861
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 862
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 866
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1630
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1631
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1632
    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1636
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 954
    return-void
.end method

.method public dispatchScreenTurndOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v3, 0x0

    .line 1745
    monitor-enter p0

    .line 1746
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 1747
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x140

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1749
    return-void

    .line 1747
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 2

    .prologue
    .line 1738
    monitor-enter p0

    .line 1739
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 1740
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1742
    return-void

    .line 1740
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchSetBackground(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 713
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "dispatchSetBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 715
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 716
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 717
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSetBackground(Landroid/graphics/Bitmap;)V

    .line 715
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1772
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 1773
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 4

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1799
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1800
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get EnterpriseDeviceManager: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    .prologue
    .line 1615
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getFailedUnlockAttempts(IZ)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "useautowipe"    # Z

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 1620
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 1622
    .local v1, "isITPolicyEnabled":Z
    :goto_0
    if-nez v1, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 1623
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v2

    .line 1625
    :goto_1
    return v2

    .line 1620
    .end local v1    # "isITPolicyEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1625
    .restart local v1    # "isITPolicyEnabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v2

    goto :goto_1
.end method

.method public getFailedUnlockAttemptswithITPolicy(I)I
    .locals 2
    .param p1, "userid"    # I

    .prologue
    .line 1781
    const/4 v0, 0x0

    .line 1783
    .local v0, "currentFailedAttempts":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1786
    :goto_0
    return v0

    .line 1784
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 4

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 1758
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 1760
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 1761
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Can\'t get IDevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1655
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1647
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getPinLockedSubscription()I
    .locals 4

    .prologue
    .line 1816
    const/4 v1, -0x1

    .line 1818
    .local v1, "sub":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1819
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v1

    .line 1828
    :cond_0
    :goto_0
    return v1

    .line 1821
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1822
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_2

    .line 1823
    move v1, v0

    .line 1824
    goto :goto_0

    .line 1821
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPukLockedSubscription()I
    .locals 4

    .prologue
    .line 1832
    const/4 v1, -0x1

    .line 1833
    .local v1, "sub":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1834
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentPukLockSlot()I

    move-result v1

    .line 1843
    :cond_0
    :goto_0
    return v1

    .line 1836
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1837
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_2

    .line 1838
    move v1, v0

    .line 1839
    goto :goto_0

    .line 1836
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 1535
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1591
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1599
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUserHasTrust(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintRecognized:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public getUserTrustIsManaged(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleBootCompleted()V
    .locals 4

    .prologue
    .line 1089
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleBootCompleted()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v2, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1091
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 1092
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1093
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1094
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1095
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 1092
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1098
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateRequest()V

    goto :goto_0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 872
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 873
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 874
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 872
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 878
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    .prologue
    .line 1125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1126
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1127
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 1125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1131
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 1136
    :cond_2
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    .line 1142
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1144
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 1150
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1151
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1152
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1153
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1150
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1145
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1146
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1147
    :cond_3
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 1156
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 1162
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 1164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1166
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1170
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleScreenTurnedOff(I)V
    .locals 4
    .param p1, "arg1"    # I

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 700
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 701
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 702
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 703
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    .line 701
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleScreenTurnedOn()V
    .locals 4

    .prologue
    .line 689
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 690
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 692
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 690
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1115
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 1113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1119
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 931
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    if-eqz v2, :cond_1

    .line 932
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleUserSwitchComplete() It\'s Knox UserSwitching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 944
    :cond_0
    return-void

    .line 938
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 940
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 941
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 938
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 885
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 886
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    if-eqz v3, :cond_0

    .line 887
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "mIsOldUserPersona is true!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 891
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 892
    .local v2, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 893
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Current user is persona!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    .line 895
    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    .line 897
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 898
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 900
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 901
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKnoxSwitching()V

    .line 897
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "mIsOldUserPersona = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsOldUserPersona:Z

    .line 908
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedToBeReturn:Z

    if-eqz v3, :cond_4

    .line 909
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleUserSwitching() It\'s Knox UserSwitching"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :goto_1
    return-void

    .line 914
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 915
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 916
    .restart local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_5

    .line 917
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 914
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 921
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_6
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 922
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1659
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1643
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isITPolicyenabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1790
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1791
    .local v0, "isITPolicyEnabled":Z
    :goto_0
    return v0

    .line 1790
    .end local v0    # "isITPolicyEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIccBlockedPermanently()Z
    .locals 2

    .prologue
    .line 1729
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 1730
    const/4 v0, 0x1

    .line 1732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardBouncer()Z
    .locals 1

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    return v0
.end method

.method public isKeyguardVisible()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isMDMenabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1809
    .local v0, "isMDMenabled":Z
    :goto_0
    return v0

    .line 1808
    .end local v0    # "isMDMenabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isShowingCMAS()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 6

    .prologue
    .line 1667
    const/4 v2, 0x0

    .line 1669
    .local v2, "isLocked":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1670
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v2

    .line 1680
    :cond_0
    :goto_0
    return v2

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .local v0, "arr$":[Lcom/android/internal/telephony/IccCardConstants$State;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1673
    .local v4, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1674
    const/4 v2, 0x1

    .line 1675
    goto :goto_0

    .line 1672
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isSimLocked(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 6

    .prologue
    .line 1695
    const/4 v2, 0x0

    .line 1697
    .local v2, "isSecure":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1698
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v2

    .line 1708
    :cond_0
    :goto_0
    return v2

    .line 1700
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .local v0, "arr$":[Lcom/android/internal/telephony/IccCardConstants$State;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1701
    .local v4, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1702
    const/4 v2, 0x1

    .line 1703
    goto :goto_0

    .line 1700
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isSimPinSecure(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    return v0
.end method

.method public isSwitchingUser()Z
    .locals 1

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return v0
.end method

.method public onTrustChanged(ZIZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "initiatedByUser"    # Z

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 293
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 295
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 296
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustInitiatedByUser(I)V

    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 3
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 308
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1473
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1476
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1477
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    :goto_1
    return-void

    .line 1475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1482
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1484
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .prologue
    .line 1459
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1461
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1460
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1465
    :cond_1
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1530
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1531
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1532
    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2
    .param p1, "bypassHandler"    # Z

    .prologue
    .line 1583
    if-nez p1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1588
    :goto_0
    return-void

    .line 1586
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    goto :goto_0
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1651
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1652
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1640
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 1

    .prologue
    .line 1551
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 1552
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 5
    .param p1, "subscription"    # I

    .prologue
    .line 1555
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSimUnlocked("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v2, :cond_0

    .line 1559
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v3, v2, p1

    .line 1561
    :cond_0
    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    :goto_0
    invoke-direct {v3, v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 1563
    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v2, :cond_4

    .line 1564
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1565
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1566
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 1567
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1564
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1561
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1570
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimStateRequest()V

    .line 1572
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 4
    .param p1, "showingBouncer"    # Z

    .prologue
    .line 1523
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardBouncerChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1525
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1526
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1527
    return-void

    .line 1525
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 1513
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1515
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1516
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1517
    return-void

    .line 1515
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1663
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 1664
    return-void
.end method

.method public updateCMASText(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 1356
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCMASText( show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    if-eq v2, p1, :cond_1

    .line 1358
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShowingCMAS:Z

    .line 1359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1360
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1361
    .local v0, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onCMASChanged()V

    .line 1359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1366
    .end local v0    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
