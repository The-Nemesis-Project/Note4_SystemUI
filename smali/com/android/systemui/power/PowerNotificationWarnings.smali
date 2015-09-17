.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;,
        Lcom/android/systemui/power/PowerNotificationWarnings$CocktailProvider;
    }
.end annotation


# static fields
.field static final ACTION_BATTERY_LOW_COCKTAIL_BUTTON:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

.field static final ACTION_BATTERY_LOW_COCKTAIL_TOUCH:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

.field private static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final ACTION_COVER_REQUEST_REMOTEVIEWS:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field private static final ACTION_SHOW_BATTERY_SETTINGS:Ljava/lang/String; = "PNW.batterySettings"

.field private static final ACTION_START_SAVER:Ljava/lang/String; = "PNW.startSaver"

.field private static final ACTION_STOP_SAVER:Ljava/lang/String; = "PNW.stopSaver"

.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field private static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field private static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final ID_NOTIFICATION:I = 0x64

.field private static final ID_NOTIFICATION_BATTERY_SWELLING_RECOVERY:I = 0x6c

.field private static final ID_NOTIFICATION_BATTERY_SWELLING_WARNING:I = 0x6b

.field private static final ID_NOTIFICATION_CHARGING_INTERRUPTION:I = 0x6e

.field private static final ID_NOTIFICATION_FACE_DETECTION_FAIL:I = 0x6a

.field private static final ID_NOTIFICATION_FULL_BATTERY:I = 0x65

.field private static final ID_NOTIFICATION_HIGH_VOLTAGE_CHARGER:I = 0x69

.field private static final ID_NOTIFICATION_INCOMPATIBLE_CHARGER:I = 0x67

.field private static final ID_NOTIFICATION_OVER_HEAT:I = 0x6d

.field private static final ID_NOTIFICATION_SLOW_CHARGER:I = 0x68

.field private static final ID_NOTIFICATION_WIRELESS_CHARGER:I = 0x66

.field static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final PSM_ACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$PowerSavingModeSettings2014Activity"

.field private static final PSM_ACTIVITY_GENERIC:Ljava/lang/String; = "com.android.settings.Settings$GenericPowerSavingModeActivity"

.field private static final SHOWING_INVALID_CHARGER:I = 0x3

.field private static final SHOWING_NOTHING:I = 0x0

.field private static final SHOWING_SAVER:I = 0x2

.field private static final SHOWING_STRINGS:[Ljava/lang/String;

.field private static final SHOWING_WARNING:I = 0x1

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PowerUI.Notification"

.field private static final TAG_NOTIFICATION:Ljava/lang/String; = "low_battery"

.field private static final TAG_NOTIFICATION_BATTERY_SWELLING_RECOVERY:Ljava/lang/String; = "battery_swelling_recovery"

.field private static final TAG_NOTIFICATION_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "battery_swelling_warning"

.field private static final TAG_NOTIFICATION_CHARGING_INTERRUPTION:Ljava/lang/String; = "charging_interruption"

.field private static final TAG_NOTIFICATION_FACE_DETECTION_FAIL:Ljava/lang/String; = "face_detection_fail"

.field private static final TAG_NOTIFICATION_FULL_BATTERY:Ljava/lang/String; = "full_battery"

.field private static final TAG_NOTIFICATION_HIGH_VOLTAGE_CHARGER:Ljava/lang/String; = "afc_charger"

.field private static final TAG_NOTIFICATION_INCOMPATIBLE_CHARGER:Ljava/lang/String; = "incompatible_charger"

.field private static final TAG_NOTIFICATION_OVER_HEAT:Ljava/lang/String; = "over_heat"

.field private static final TAG_NOTIFICATION_SLOW_CHARGER:Ljava/lang/String; = "slow_charger"

.field private static final TAG_NOTIFICATION_WIRELESS_CHARGER:Ljava/lang/String; = "wireless_charger"


# instance fields
.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryOnline:I

.field mBatterySwellingDialog:Landroid/app/AlertDialog;

.field private mBatterySwellingRecovery:Z

.field mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

.field mBatterySwellingTask:Ljava/lang/Runnable;

.field private mBatterySwellingWarning:Z

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private mCallState:I

.field private mChargingInterruption:Z

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field private mCocktailLowBatteryWarning:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:I

.field private mFaceDetectionFail:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field private mFullBattery:Z

.field mFullBatteryNotification:Landroid/app/Notification;

.field private final mHandler:Landroid/os/Handler;

.field private mHighVoltageCharger:Z

.field mHighVoltageChargerDialog:Landroid/app/AlertDialog;

.field mHighVoltageChargerNotification:Landroid/app/Notification;

.field mHighVoltageChargerTask:Ljava/lang/Runnable;

.field private mIncompatibleCharger:Z

.field private mInvalidCharger:Z

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field private final mNoMan:Landroid/app/NotificationManager;

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenSaverSettings:Landroid/content/Intent;

.field private mOverHeat:Z

.field mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlaySound:Z

.field private mPlugType:I

.field private final mPowerMan:Landroid/os/PowerManager;

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSaver:Z

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;

.field private mShowing:I

.field private mSlowCharger:Z

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mWarning:Z

.field private mWirelessCharger:Z

.field mWirelessChargingDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 118
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 162
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHOWING_NOTHING"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHOWING_WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SHOWING_SAVER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SHOWING_INVALID_CHARGER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 186
    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 187
    const-string v1, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    .line 194
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 195
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryOnline:I

    .line 196
    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    .line 197
    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    .line 218
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    .line 247
    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    .line 963
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 1044
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 1327
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    .line 1520
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 1527
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$15;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 1830
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    .line 1880
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    .line 2091
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 2105
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$21;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 264
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 265
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 266
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 267
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 269
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguardConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    sget-boolean v1, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "PowerUI.Notification"

    const-string v2, "*** Keyguard: can\'t bind to com.android.systemui.keyguard.KeyguardService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 281
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 283
    return-void

    .line 277
    :cond_1
    sget-boolean v1, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "PowerUI.Notification"

    const-string v2, "*** Keyguard started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->cancelFaceDetectionFailureNotification()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCallState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    return v0
.end method

.method private addStopSaverAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .prologue
    .line 574
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0315

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PNW.stopSaver"

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 577
    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v10, 0x1

    .line 734
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 736
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "low_battery_sound_timeout"

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 738
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 739
    .local v2, "offTime":J
    if-lez v1, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 742
    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms): not waking up the user with low battery sound"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 748
    const-string v6, "PowerUI.Notification"

    const-string v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_2
    const-string v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 752
    const-string v6, "low_battery_sound"

    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 756
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 757
    sget-object v6, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 758
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private attachSECSounds(Landroid/app/Notification$Builder;I)V
    .locals 6
    .param p1, "b"    # Landroid/app/Notification$Builder;
    .param p2, "soundType"    # I

    .prologue
    const/4 v4, 0x1

    .line 845
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 847
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "power_sounds_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, "soundPath":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 866
    const-string v1, "system/media/audio/ui/TW_Battery_caution.ogg"

    .line 869
    :goto_0
    if-eqz v1, :cond_2

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 871
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 872
    sget-object v3, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 873
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playing sound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v1    # "soundPath":Ljava/lang/String;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 851
    .restart local v1    # "soundPath":Ljava/lang/String;
    :pswitch_0
    const-string v1, "system/media/audio/ui/Charger_Connection.ogg"

    .line 852
    goto :goto_0

    .line 854
    :pswitch_1
    const-string v3, "low_battery_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 856
    goto :goto_0

    .line 858
    :pswitch_2
    const-string v1, "system/media/audio/ui/TW_Battery_caution.ogg"

    .line 859
    goto :goto_0

    .line 862
    :pswitch_3
    const-string v1, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    .line 863
    goto :goto_0

    .line 875
    .restart local v2    # "soundUri":Landroid/net/Uri;
    :cond_1
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 878
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_2
    const-string v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path is null. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 849
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 1821
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1825
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0d0406

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1826
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1828
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private dismissFullBatteryNotification()V
    .locals 3

    .prologue
    .line 1686
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing full battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    .line 1688
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1689
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "full_battery"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1690
    return-void
.end method

.method private dismissHighVoltageChargerNotification()V
    .locals 2

    .prologue
    .line 1618
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    if-eqz v0, :cond_0

    .line 1619
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing high voltage charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    .line 1622
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1623
    return-void
.end method

.method private dismissIncompatibleChargerNotification()V
    .locals 3

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_0

    .line 1129
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing incompatible charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    .line 1132
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "incompatible_charger"

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1135
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 892
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 893
    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_2

    .line 622
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 624
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    .line 625
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCocktailLowBatteryWarning(Z)V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 629
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 633
    :cond_2
    return-void
.end method

.method private dismissSaverNotification()V
    .locals 2

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 582
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 583
    return-void
.end method

.method private dismissSlowChargerNotification()V
    .locals 3

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    if-eqz v0, :cond_0

    .line 1201
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing slow charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    .line 1204
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1206
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "slow_charger"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1207
    return-void
.end method

.method private dismissWirelessChargerNotification()V
    .locals 3

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_0

    .line 1059
    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing wireless charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "wireless_charger"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1063
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1064
    return-void
.end method

.method private hasBatterySettings()Z
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSaverSettings()Z
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAvailablePowerSaving()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2031
    const/4 v1, 0x0

    .line 2033
    .local v1, "isEmergencyMode":Z
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2034
    .local v0, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    .line 2037
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kids_home_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v2, v4

    .line 2039
    .local v2, "isKidsMode":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 2047
    .local v3, "isSetupwizard":Z
    :goto_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return v4

    .end local v2    # "isKidsMode":Z
    .end local v3    # "isSetupwizard":Z
    :cond_0
    move v2, v5

    .line 2037
    goto :goto_0

    .restart local v2    # "isKidsMode":Z
    :cond_1
    move v3, v5

    .line 2039
    goto :goto_1

    .restart local v3    # "isSetupwizard":Z
    :cond_2
    move v4, v5

    .line 2047
    goto :goto_2
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 591
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 921
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showChargingInterruptionNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1002
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v5, v3, :cond_0

    .line 1003
    const v2, 0x7f0d03be

    .line 1015
    .local v2, "messageId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 1016
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1041
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 1042
    .end local v2    # "messageId":I
    :goto_2
    return-void

    .line 1004
    :cond_0
    const/4 v3, 0x7

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_1

    .line 1005
    const v2, 0x7f0d03bf

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1006
    .end local v2    # "messageId":I
    :cond_1
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_2

    .line 1007
    const v2, 0x7f0d03bd

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1008
    .end local v2    # "messageId":I
    :cond_2
    const/16 v3, 0x8

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    if-ne v3, v4, :cond_3

    .line 1009
    const v2, 0x7f0d03c0

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 1011
    .end local v2    # "messageId":I
    :cond_3
    const-string v3, "PowerUI.Notification"

    const-string v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1019
    .restart local v2    # "messageId":I
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1021
    const v3, 0x7f0d03bc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1022
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1023
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1025
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1026
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1037
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1038
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1039
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private showFullBatteryNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1753
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1754
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03c2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1756
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020359

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a007a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1772
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1773
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1776
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1777
    .local v0, "n":Landroid/app/Notification;
    const v4, -0x7f7f7f80

    iput v4, v0, Landroid/app/Notification;->commonValue:I

    .line 1779
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 1780
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020034

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1782
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "full_battery"

    const/16 v6, 0x65

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1783
    return-void
.end method

.method private showHighVoltageChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1653
    const-string v3, "PowerUI.Notification"

    const-string v4, "showHighVoltageChargerNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0405

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1657
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02033f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0402

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "sys"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1670
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1671
    .local v0, "n":Landroid/app/Notification;
    iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_0

    .line 1672
    iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v4, 0x1020034

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1674
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v4, "low_battery"

    const/16 v5, 0x64

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1675
    return-void
.end method

.method private showIncompatibleChargerNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1163
    const-string v4, "PowerUI.Notification"

    const-string v5, "showIncompatibleChargerNotification()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1166
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0206b6

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1182
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1183
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1185
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1186
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 1187
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020034

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1189
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "incompatible_charger"

    const/16 v6, 0x67

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1190
    return-void
.end method

.method private showInvalidChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 379
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020117

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0d01e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0d01e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "sys"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 391
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 392
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v3, 0x1020034

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    const/16 v4, 0x64

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 396
    return-void
.end method

.method private showSaverNotification()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 556
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0313

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0314

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "sys"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 566
    .local v0, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasSaverSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "low_battery"

    const/16 v3, 0x64

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 571
    return-void
.end method

.method private showSlowChargerNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1235
    const-string v4, "PowerUI.Notification"

    const-string v5, "showSlowChargerNotification()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1244
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03ec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1245
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020348

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1259
    .local v1, "nb":Landroid/app/Notification$Builder;
    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1260
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1262
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1263
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 1264
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020034

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1266
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "slow_charger"

    const/16 v6, 0x68

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1267
    return-void
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    .line 902
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    .line 917
    :goto_0
    return-void

    .line 903
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 904
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f0d01e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 905
    const v1, 0x1040696

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 906
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 907
    const v1, 0x7f0d01ea

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 908
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 909
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 915
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 916
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    goto :goto_0
.end method

.method private showWarningNotification()V
    .locals 14

    .prologue
    .line 399
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v9, :cond_3

    const v6, 0x7f0d01e4

    .line 404
    .local v6, "textRes":I
    :goto_0
    iget v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_6

    .line 405
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03cc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "title":Ljava/lang/CharSequence;
    iget v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 407
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03cf

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0388

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v9, :cond_0

    .line 465
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 467
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 477
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    .line 478
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 544
    :goto_2
    sget-boolean v9, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-eqz v9, :cond_2

    .line 545
    sget-boolean v9, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 546
    :cond_1
    const-string v9, "PowerUI.Notification"

    const-string v10, "show Low battery gadget"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCocktailLowBatteryWarning(Z)V

    .line 553
    :cond_2
    return-void

    .line 399
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "textRes":I
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_3
    const v6, 0x7f0d01e3

    goto :goto_0

    .line 409
    .restart local v6    # "textRes":I
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 410
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03ce

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0388

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 413
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03cd

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 416
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d01e2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 417
    .restart local v7    # "title":Ljava/lang/CharSequence;
    iget v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 418
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03d3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0388

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 420
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_7
    iget v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 421
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03d2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0388

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 424
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0d03d1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 486
    :cond_9
    const v4, 0x7f020008

    .line 488
    .local v4, "imageId":I
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f040002

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 489
    .local v8, "v":Landroid/view/View;
    const v9, 0x7f0e007d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 490
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const v9, 0x7f0e007e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 495
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 496
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 497
    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-nez v9, :cond_a

    .line 502
    :cond_a
    const v1, 0x7f0d03d7

    .line 503
    .local v1, "buttonTextId":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 504
    .local v3, "dialogIntent":Landroid/content/Intent;
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v9, :cond_c

    .line 505
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$GenericPowerSavingModeActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    :goto_3
    const/high16 v9, 0x58800000    # 1.12589991E15f

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 516
    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isAvailablePowerSaving()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 517
    new-instance v9, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    :cond_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 528
    .local v2, "d":Landroid/app/AlertDialog;
    new-instance v9, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 537
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 538
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 540
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 541
    iput-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 507
    .end local v2    # "d":Landroid/app/AlertDialog;
    :cond_c
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$PowerSavingModeSettings2014Activity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method private showWirelessChargerNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1085
    const-string v4, "PowerUI.Notification"

    const-string v5, "showWirelessChargerNotification()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, "title":Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v4, :cond_1

    .line 1090
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020118

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1110
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v1, v8}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachSECSounds(Landroid/app/Notification$Builder;I)V

    .line 1111
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 1113
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1114
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 1115
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020034

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1117
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v5, "wireless_charger"

    const/16 v6, 0x66

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1118
    return-void

    .line 1091
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    sget-boolean v4, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v4, :cond_2

    .line 1092
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03e1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1094
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d03e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private updateCoverLowBatteryWarning()V
    .locals 5

    .prologue
    .line 636
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverLowBatteryWarning :: mWarning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040003

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 638
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v3, "visibility"

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 643
    return-void

    .line 639
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 3

    .prologue
    .line 318
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSaver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInvalidCharger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 322
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 333
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_2

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWarningNotification()V

    .line 325
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 326
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V

    .line 328
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0
.end method

.method private updateNotificationSEC()V
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingInterruptionNotification()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    if-eqz v0, :cond_2

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFullBatteryNotification()V

    goto :goto_0

    .line 344
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    if-eqz v0, :cond_3

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerNotification()V

    goto :goto_0

    .line 347
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    if-eqz v0, :cond_4

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerNotification()V

    goto :goto_0

    .line 350
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    if-eqz v0, :cond_5

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowChargerNotification()V

    goto :goto_0

    .line 353
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    if-eqz v0, :cond_6

    .line 355
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    if-lez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showHighVoltageChargerNotification()V

    goto :goto_0

    .line 358
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFail:Z

    if-eqz v0, :cond_7

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerNotification()V

    goto :goto_0

    .line 373
    :cond_7
    const-string v0, "PowerUI.Notification"

    const-string v1, "updateNotificationSEC : No notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelHighVoltageChargerNotification()V
    .locals 4

    .prologue
    .line 1870
    const-string v1, "PowerUI.Notification"

    const-string v2, "cancelHighVoltageChargerNotification()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1874
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0d0405

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1875
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    .line 1877
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "low_battery"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1878
    return-void
.end method

.method public cancelOverheatShutdownWarningTask()V
    .locals 2

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1454
    return-void
.end method

.method public dismissBatterySwellingRecoveryNotice()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1340
    :cond_0
    return-void
.end method

.method public dismissBatterySwellingWarning()V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1283
    return-void
.end method

.method public dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 984
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    .line 985
    return-void
.end method

.method public dismissFullBatteryNotice()V
    .locals 3

    .prologue
    .line 1681
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing full battery notice: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissFullBatteryNotification()V

    .line 1683
    return-void
.end method

.method public dismissHighVoltageChargerNotice()V
    .locals 0

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighVoltageChargerNotification()V

    .line 1615
    return-void
.end method

.method public dismissIncompatibleChargerWarning()V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotification()V

    .line 1125
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 887
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 615
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 617
    return-void
.end method

.method public dismissOverheatShutdownNotice()V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1547
    :cond_0
    return-void
.end method

.method public dismissOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1463
    :cond_0
    return-void
.end method

.method public dismissPowersavingmodeNotice()V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1386
    :cond_0
    return-void
.end method

.method public dismissSlowChargerWarning()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowChargerNotification()V

    .line 1197
    return-void
.end method

.method public dismissWirelessChargingNotice()V
    .locals 0

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWirelessChargerNotification()V

    .line 1055
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2053
    const-string v0, "mSaver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2054
    const-string v0, "mWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2055
    const-string v0, "mPlaySound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2056
    const-string v0, "mInvalidCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2057
    const-string v0, "mShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    const-string v0, "mSaverConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    const-string v0, "not null"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    return-void

    .line 2058
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCocktailLowBatteryShowing()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    return v0
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isKeyguardInputRestricted()Z
    .locals 5

    .prologue
    .line 2062
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2063
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 2065
    :try_start_0
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguardInputRestricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isInputRestricted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isInputRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2073
    :goto_0
    return v2

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PowerUI.Notification"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2073
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2071
    :cond_0
    const-string v2, "PowerUI.Notification"

    const-string v3, "isKeyguardInputRestricted(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 5

    .prologue
    .line 2077
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 2078
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 2080
    :try_start_0
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguardShowingAndNotOccluded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isShowingAndNotOccluded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isShowingAndNotOccluded()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2088
    :goto_0
    return v2

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PowerUI.Notification"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2088
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2086
    :cond_0
    const-string v2, "PowerUI.Notification"

    const-string v3, "isKeyguardShowingAndNotOccluded(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isLowBatteryDialogShowing()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0d0406

    const/4 v8, 0x0

    .line 1789
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 1790
    const-string v5, "PowerUI.Notification"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1796
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 1797
    const-string v5, "PowerUI.Notification"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0d03c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1802
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 1805
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1806
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f0205e7

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1807
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1808
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1811
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1812
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1814
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1816
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v9, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1817
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public notifyHighVoltageChargerNotification()V
    .locals 8

    .prologue
    const v6, 0x7f0d0405

    .line 1843
    const-string v3, "PowerUI.Notification"

    const-string v4, "notifyHighVoltageChargerNotification()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1846
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 1847
    const-string v3, "PowerUI.Notification"

    const-string v4, "notifyHighVoltageChargerNotification : fail to get NotificationManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :goto_0
    return-void

    .line 1850
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1852
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    if-nez v3, :cond_1

    .line 1853
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    .line 1854
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const v4, 0x7f02033f

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 1855
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 1856
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1857
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1859
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04000e

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1860
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1861
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 1864
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1865
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageChargerTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 14
    .param p1, "soundType"    # I

    .prologue
    .line 1892
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1896
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1897
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1898
    .local v1, "audioMode":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    if-eq v10, v1, :cond_1

    const/4 v10, 0x3

    if-eq v10, v1, :cond_1

    .line 1899
    const-string v10, "PowerUI.Notification"

    const-string v11, "recording so doesn\'t play sound"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :goto_0
    return-void

    .line 1903
    .end local v1    # "audioMode":I
    :cond_0
    const/4 v1, 0x0

    .line 1906
    .restart local v1    # "audioMode":I
    :cond_1
    const-string v10, "PowerUI.Notification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSound : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v10, :cond_2

    .line 1909
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : NotificationPlayer is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    new-instance v10, Lcom/android/systemui/media/NotificationPlayer;

    const-string v11, "PowerUI.Notification"

    invoke-direct {v10, v11}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1912
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v10, :cond_2

    .line 1913
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : fail to new NotificationPlayer"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1919
    :cond_2
    if-eqz v0, :cond_6

    .line 1920
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 1925
    .local v6, "ringerMode":I
    :goto_1
    const/4 v10, 0x2

    if-ne v10, v6, :cond_3

    const/4 v10, 0x1

    if-ne v10, p1, :cond_3

    sget-boolean v10, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    if-eqz v10, :cond_3

    .line 1926
    const/4 v6, 0x1

    .line 1927
    const-string v10, "PowerUI.Notification"

    const-string v11, "ring mode but vibrates in Note3"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "alertoncall_mode"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v5, 0x1

    .line 1931
    .local v5, "notifyDuringCalls":Z
    :goto_2
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    .line 1932
    .local v9, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v9, :cond_5

    .line 1934
    const/4 v4, 0x1

    .line 1935
    .local v4, "isIdle":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_9

    .line 1936
    const/4 v10, 0x0

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v10

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(J)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v10

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(J)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v4, 0x1

    .line 1941
    :goto_3
    if-eqz v4, :cond_4

    const/4 v10, 0x4

    if-eq v10, v1, :cond_4

    const/4 v10, 0x3

    if-ne v10, v1, :cond_5

    .line 1944
    :cond_4
    if-eqz v5, :cond_a

    .line 1945
    const-string v10, "PowerUI.Notification"

    const-string v11, "calling so vibrate"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1946
    const/4 v6, 0x1

    .line 1958
    .end local v4    # "isIdle":Z
    :cond_5
    :goto_4
    const/4 v10, 0x2

    if-ne v10, v6, :cond_b

    .line 1960
    packed-switch p1, :pswitch_data_0

    .line 1976
    :try_start_1
    const-string v10, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1980
    .local v7, "soundUri":Landroid/net/Uri;
    :goto_5
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v10, v11, v7, v12, v13}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1981
    const-string v10, "PowerUI.Notification"

    const-string v11, "RINGER_MODE_NORMAL"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2010
    .end local v7    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 2011
    .local v2, "exception":Ljava/lang/Exception;
    const-string v10, "PowerUI.Notification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSound : Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1922
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v5    # "notifyDuringCalls":Z
    .end local v6    # "ringerMode":I
    .end local v9    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_6
    const/4 v6, 0x2

    .restart local v6    # "ringerMode":I
    goto/16 :goto_1

    .line 1930
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1936
    .restart local v4    # "isIdle":Z
    .restart local v5    # "notifyDuringCalls":Z
    .restart local v9    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 1939
    :cond_9
    :try_start_2
    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v4

    goto :goto_3

    .line 1948
    :cond_a
    const-string v10, "PowerUI.Notification"

    const-string v11, "calling and doesn\'t notify during calls"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1952
    :catch_1
    move-exception v2

    .line 1953
    .local v2, "exception":Landroid/os/RemoteException;
    const-string v10, "PowerUI.Notification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSound : Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1962
    .end local v2    # "exception":Landroid/os/RemoteException;
    .end local v4    # "isIdle":Z
    :pswitch_0
    :try_start_3
    const-string v10, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1963
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 1965
    .end local v7    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "low_battery_sound"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1966
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 1968
    .end local v7    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string v10, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1969
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto :goto_5

    .line 1972
    .end local v7    # "soundUri":Landroid/net/Uri;
    :pswitch_3
    const-string v10, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1973
    .restart local v7    # "soundUri":Landroid/net/Uri;
    goto/16 :goto_5

    .line 1982
    .end local v7    # "soundUri":Landroid/net/Uri;
    :cond_b
    const/4 v10, 0x1

    if-ne v10, v6, :cond_d

    .line 1984
    packed-switch p1, :pswitch_data_1

    .line 1994
    const/16 v3, 0xb

    .line 1998
    .local v3, "hapticFeedback":I
    :goto_6
    new-instance v8, Landroid/os/SystemVibrator;

    invoke-direct {v8}, Landroid/os/SystemVibrator;-><init>()V

    .line 1999
    .local v8, "systemVibrator":Landroid/os/SystemVibrator;
    if-eqz v8, :cond_c

    .line 2000
    invoke-virtual {v8, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 2004
    :goto_7
    const-string v10, "PowerUI.Notification"

    const-string v11, "RINGER_MODE_VIBRATE"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1986
    .end local v3    # "hapticFeedback":I
    .end local v8    # "systemVibrator":Landroid/os/SystemVibrator;
    :pswitch_4
    const/16 v3, 0xa

    .line 1987
    .restart local v3    # "hapticFeedback":I
    goto :goto_6

    .line 1991
    .end local v3    # "hapticFeedback":I
    :pswitch_5
    const/16 v3, 0xb

    .line 1992
    .restart local v3    # "hapticFeedback":I
    goto :goto_6

    .line 2002
    .restart local v8    # "systemVibrator":Landroid/os/SystemVibrator;
    :cond_c
    const-string v10, "PowerUI.Notification"

    const-string v11, "playSound : fail to new SystemVibrator"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2005
    .end local v3    # "hapticFeedback":I
    .end local v8    # "systemVibrator":Landroid/os/SystemVibrator;
    :cond_d
    if-nez v6, :cond_e

    .line 2006
    const-string v10, "PowerUI.Notification"

    const-string v11, "RINGER_MODE_SILENT"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2008
    :cond_e
    const-string v10, "PowerUI.Notification"

    const-string v11, "unknown RINGER_MODE"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1984
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public runBatterySwellingTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1274
    return-void
.end method

.method public runOverheatShutdownTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1444
    return-void
.end method

.method public runOverheatShutdownWarningTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1449
    return-void
.end method

.method public showBatterySwellingRecoveryNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1344
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1346
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1347
    const-string v3, "PowerUI.Notification"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_1
    move v2, v3

    .line 1344
    goto :goto_0

    .line 1351
    .restart local v2    # "isShutdownOn":Z
    :cond_2
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 1352
    const-string v3, "PowerUI.Notification"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1356
    :cond_3
    const-string v4, "PowerUI.Notification"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 1360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1362
    const v3, 0x7f0d03dc

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1363
    const v3, 0x7f0d03dd

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1364
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1367
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1373
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1374
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1375
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    .line 1376
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1
.end method

.method public showBatterySwellingWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1287
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1289
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1290
    const-string v3, "PowerUI.Notification"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v3

    .line 1287
    goto :goto_0

    .line 1294
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    sget-boolean v4, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    .line 1295
    const-string v3, "PowerUI.Notification"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1299
    :cond_2
    const-string v4, "PowerUI.Notification"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 1303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1304
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1305
    const v3, 0x7f0d03da

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1306
    const v3, 0x7f0d03db

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1307
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1310
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1316
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1317
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1318
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    .line 1320
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playSound(I)V

    .line 1322
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 1324
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySwellingTask:Ljava/lang/Runnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public showChargingInterruptionWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 989
    const-string v2, "PowerUI.Notification"

    const-string v3, "showChargingInterruptionWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 991
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 992
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingInterruption:Z

    .line 997
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showFullBatteryNotice()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1702
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1703
    .local v1, "uri_Service1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1706
    .local v9, "cr_SealedState":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1708
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1709
    const-string v0, "getSealedState"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1710
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1711
    .local v3, "uri_Service2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedHideNotificationMessages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 1714
    .local v8, "cr_SealedHideNotification":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1716
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1717
    const-string v0, "getSealedHideNotificationMessages"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1719
    const-string v0, "PowerUI.Notification"

    const-string v2, "now KNOX state : Don\'t show notifications in Sealed Mode if Battery Full Warning Notifications set to Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1723
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1728
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1750
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 1723
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1728
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1735
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1736
    const-string v0, "PowerUI.Notification"

    const-string v2, "GATE tool is running so don\'t show Full Charge notice"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1723
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1728
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1740
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFullBattery:Z

    .line 1741
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 1744
    .local v11, "powerManager":Landroid/os/PowerManager;
    if-nez v11, :cond_4

    .line 1745
    const-string v0, "PowerUI.Notification"

    const-string v2, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1748
    :cond_4
    const v0, 0x10000006

    const-string v2, "PowerUI.Notification"

    invoke-virtual {v11, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 1749
    .local v10, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x4e20

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method public showHighVoltageChargerNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1627
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1628
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1629
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show High Voltage Charger notice while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :goto_0
    return-void

    .line 1633
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1634
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show High Voltage Charger notice"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1648
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighVoltageCharger:Z

    .line 1649
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showIncompatibleChargerWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1139
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1140
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1141
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_0
    return-void

    .line 1145
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1146
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1150
    :cond_2
    sget-boolean v2, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v2, :cond_3

    .line 1151
    const-string v1, "PowerUI.Notification"

    const-string v2, "showIncompatibleChargerWarning should be called in VZW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1154
    :cond_3
    const-string v2, "PowerUI.Notification"

    const-string v3, "showIncompatibleChargerWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1158
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleCharger:Z

    .line 1159
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 899
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 14
    .param p1, "playSound"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 655
    const-string v0, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show low battery warning: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] playSound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "SHOULD_SHUT_DOWN"

    invoke-static {v0, v4, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v13, v0, :cond_0

    move v11, v13

    .line 661
    .local v11, "isShutdownOn":Z
    :cond_0
    if-eqz v11, :cond_1

    .line 662
    const-string v0, "PowerUI.Notification"

    const-string v2, "Shutdown is ON"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_0
    return-void

    .line 666
    :cond_1
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-eq v0, v4, :cond_2

    .line 667
    const-string v0, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    :cond_2
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    if-eqz v0, :cond_3

    .line 672
    const-string v0, "PowerUI.Notification"

    const-string v2, "cover camera is running so don\'t show Low battery warning"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :cond_3
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 687
    .local v1, "uri_Service1":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 690
    .local v9, "cr_SealedState":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 692
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 693
    const-string v0, "getSealedState"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 694
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 695
    .local v3, "uri_Service2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getSealedHideNotificationMessages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 698
    .local v8, "cr_SealedHideNotification":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 700
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    const-string v0, "getSealedHideNotificationMessages"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 703
    const-string v0, "PowerUI.Notification"

    const-string v2, "now KNOX state : Don\'t show notifications in Sealed Mode if Battery Low Warning Notifications set to Disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 712
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 707
    :cond_4
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 712
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 719
    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 720
    iput-boolean v13, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 722
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 725
    .local v12, "powerManager":Landroid/os/PowerManager;
    if-nez v12, :cond_7

    .line 726
    const-string v0, "PowerUI.Notification"

    const-string v2, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 707
    .end local v12    # "powerManager":Landroid/os/PowerManager;
    .restart local v3    # "uri_Service2":Landroid/net/Uri;
    .restart local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 712
    .end local v3    # "uri_Service2":Landroid/net/Uri;
    .end local v8    # "cr_SealedHideNotification":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 729
    .restart local v12    # "powerManager":Landroid/os/PowerManager;
    :cond_7
    const v0, 0x10000006

    const-string v2, "PowerUI.Notification"

    invoke-virtual {v12, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 730
    .local v10, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x3a98

    invoke-virtual {v10, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0
.end method

.method public showOverheatShutdownNotice()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1551
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 1553
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1554
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 1551
    goto :goto_0

    .line 1558
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_2

    .line 1559
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1563
    :cond_2
    const-string v6, "PowerUI.Notification"

    const-string v7, "showOverheatShutdownNotice()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_5

    .line 1569
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v6, v7, :cond_4

    .line 1570
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1571
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1581
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    .line 1583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1584
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1585
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1586
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1588
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/power/PowerNotificationWarnings$16;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1596
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1597
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$17;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1603
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1604
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1605
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    .line 1607
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    .line 1573
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1574
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1577
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03fa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1578
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03fb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public showOverheatShutdownWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1467
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 1469
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1470
    const-string v5, "PowerUI.Notification"

    const-string v6, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 1467
    goto :goto_0

    .line 1474
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    const-string v6, "PowerUI.Notification"

    const-string v7, "showOverheatShutdownWarning()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownNotice()V

    .line 1482
    sget-boolean v6, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v6, :cond_4

    .line 1483
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03ef

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1484
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "button_text":Ljava/lang/CharSequence;
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    if-ne v6, v7, :cond_3

    .line 1486
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1496
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v6, :cond_2

    .line 1497
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1498
    .local v1, "d":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1499
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1500
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1501
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1508
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1513
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1514
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1515
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 1517
    .end local v1    # "d":Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    .line 1488
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1491
    .end local v0    # "button_text":Ljava/lang/CharSequence;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1492
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1493
    .restart local v0    # "button_text":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method public showPowersavingmodeNotice()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1390
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1392
    .local v3, "isShutdownOn":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1393
    const-string v4, "PowerUI.Notification"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_1
    return-void

    .end local v3    # "isShutdownOn":Z
    :cond_0
    move v3, v4

    .line 1390
    goto :goto_0

    .line 1397
    .restart local v3    # "isShutdownOn":Z
    :cond_1
    sget-boolean v5, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    .line 1398
    const-string v4, "PowerUI.Notification"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1402
    :cond_2
    const-string v5, "PowerUI.Notification"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    .line 1406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1407
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1408
    const v4, 0x7f0d0383

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1409
    const v4, 0x7f0d0382

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1411
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1412
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1415
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1416
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$10;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1426
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1427
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$11;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1433
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1434
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1435
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    .line 1437
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1
.end method

.method public showSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->dismiss()V

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 315
    return-void
.end method

.method public showSlowChargerWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1211
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1212
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1213
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show Slow charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :goto_0
    return-void

    .line 1217
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1218
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON so don\'t show Slow charging warning"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    :cond_2
    sget-boolean v2, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-nez v2, :cond_3

    .line 1223
    const-string v1, "PowerUI.Notification"

    const-string v2, "showSlowChargerWarning should be called in VZW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1226
    :cond_3
    const-string v2, "PowerUI.Notification"

    const-string v3, "showSlowChargerWarning()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1230
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowCharger:Z

    .line 1231
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    goto :goto_0
.end method

.method public showWirelessChargingNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1068
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 1069
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 1070
    const-string v1, "PowerUI.Notification"

    const-string v2, "don\'t show wireless charging popup while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :goto_0
    return-void

    .line 1074
    :cond_1
    sget-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_2

    .line 1075
    const-string v1, "PowerUI.Notification"

    const-string v2, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessCharger:Z

    .line 1080
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotificationSEC()V

    .line 1081
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    goto :goto_0
.end method

.method public turnOnScreen()V
    .locals 5

    .prologue
    .line 2017
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 2018
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 2019
    const-string v2, "PowerUI.Notification"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :goto_0
    return-void

    .line 2024
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2025
    :catch_0
    move-exception v0

    .line 2026
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(IIJIIII)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J
    .param p5, "batteryHealth"    # I
    .param p6, "batteryOnline"    # I
    .param p7, "deviceType"    # I
    .param p8, "plugType"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 293
    if-ltz p2, :cond_1

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 298
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 299
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 301
    iput p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 302
    iput p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryOnline:I

    .line 303
    iput p7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mDeviceType:I

    .line 304
    iput p8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlugType:I

    .line 306
    return-void

    .line 295
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateCocktailLowBatteryWarning(Z)V
    .locals 11
    .param p1, "visibility"    # Z

    .prologue
    .line 788
    sget-boolean v6, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-nez v6, :cond_1

    .line 831
    :cond_0
    return-void

    .line 791
    :cond_1
    const-string v6, "PowerUI.Notification"

    const-string v7, "update Low battery gadget"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCocktailLowBatteryWarning:Z

    .line 796
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    .line 797
    .local v1, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui.power.PowerNotificationWarnings$CocktailProvider"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 799
    .local v0, "cocktailIds":[I
    if-eqz p1, :cond_a

    .line 800
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f0d01e3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 801
    .local v5, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x12

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_2

    const/4 v6, 0x3

    :goto_0
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 802
    new-instance v7, Landroid/text/style/TypefaceSpan;

    const-string v6, "Roboto_Medium"

    invoke-direct {v7, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v9, 0xa

    if-lt v6, v9, :cond_3

    const/4 v6, 0x3

    :goto_1
    const/16 v9, 0x21

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 804
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f040004

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 805
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    const v6, 0x7f0e0081

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 806
    const v7, 0x7f0e0082

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0d03cc

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 807
    const v7, 0x7f0e007f

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v9, -0x2

    if-ne v6, v9, :cond_5

    const-string v6, "#9e2416"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_3
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 808
    const v7, 0x7f0e0083

    const-string v8, "setBackgroundColor"

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v9, -0x2

    if-ne v6, v9, :cond_6

    const-string v6, "#c9331b"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    :goto_4
    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 809
    const v6, 0x7f0e0083

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 810
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseRedBatteryIcon:Z

    if-eqz v6, :cond_8

    .line 811
    const v7, 0x7f0e0080

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    const/16 v8, 0xa

    if-gt v6, v8, :cond_7

    const v6, 0x7f0205a7

    :goto_5
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 816
    :goto_6
    new-instance v6, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v6, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/widget/RemoteViews;)V

    const v7, 0x10004

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v3

    .line 822
    .local v3, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 823
    aget v6, v0, v2

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 824
    aget v6, v0, v2

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 801
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_2
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 802
    :cond_3
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 806
    .restart local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0d03d0

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 807
    :cond_5
    const-string v6, "#04222d"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 808
    :cond_6
    const-string v6, "#1d424f"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    .line 811
    :cond_7
    const v6, 0x7f0205a5

    goto :goto_5

    .line 813
    :cond_8
    const v7, 0x7f0e0080

    iget v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_9

    const v6, 0x7f0205a6

    :goto_8
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_6

    :cond_9
    const v6, 0x7f0205a4

    goto :goto_8

    .line 827
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v5    # "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 828
    aget v6, v0, v2

    const v7, 0x10004

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 611
    return-void
.end method
