.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$Sales;
    }
.end annotation


# static fields
.field static final ABNORMAL_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charging"

.field static final ACTION_CABLE_CONNECTED:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_CABLE_CONNECTED"

.field static final ACTION_CABLE_DISCONNECTED:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_CABLE_DISCONNECTED"

.field static final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_COOLDOWN_LEVEL"

.field static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field static final ACTION_COVER_REQUEST_REMOTEVIEWS:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_DUMP:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_DUMP"

.field static final ACTION_POWERSAVINGMODE_AUTO_ENABLE:Ljava/lang/String; = "android.settings.POWERSAVING_AUTO_ENABLE"

.field static final ACTION_SPEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final ACTION_START_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

.field static final ACTION_STOP_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field static final BATTERY_HEALTH_UNDER_VOLTAGE:I = 0x9

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_OVERHEAT_SHUTDOWN_WARNING:I = 0x2

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SWELLING_PERIOD:I = 0xea60

.field static final CHARGING_INTERRUPTION_PERIOD:I = 0xea60

.field static final DEBUG:Z

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field static final EXTRA_BATTERY_OVERHEAT_LEVEL:Ljava/lang/String; = "battery_overheat_level"

.field static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field static final EXTRA_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "check_cooldown_level"

.field static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field static final EXTRA_HIGHVOLTAGE_CHARGER:Ljava/lang/String; = "hv_charger"

.field static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final EXTRA_PENINSERT:Ljava/lang/String; = "penInsert"

.field static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final HIGHVOLTAGE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "HighVoltageChargerNotice"

.field static final HIGHVOLTAGE_CHARGER_DURATION:I = 0xbb8

.field static final HIGHVOLTAGE_CHARGER_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_highvoltage_charger"

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final MAXIMUM_LOW_BATTERY_DUMP:I = 0x3

.field static final OVERHEAT_SHUTDOWN:Ljava/lang/String; = "OverheatShutdown"

.field static final OVERHEAT_SHUTDOWN_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_overheat_shutdown"

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final POWERSAVINGMODE_AUTO_THRESHOLD:I = 0x14

.field static final PRODUCT_DEV:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY:I = 0x9

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY_ESTIMATED_TIME:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING:I = 0x8

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_DELAY_TIME:I = 0xea60

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_ESTIMATED_TIME:I = 0x7530

.field static final SLOW_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargingWarning"

.field static final SOC_SUDDEN_CHANGE_THRESHOLD:I = 0xa

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final WIRELESS_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "WirelessChargingNotice"

.field static final WIRELESS_CHARGING_DURATION:I = 0xbb8

.field static final WIRELESS_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_wireless_charging"

.field static mBatteryStatus:I

.field static mBatterySwelling:Z

.field static mChargerVibration:Z

.field static mCocktailBar:Z

.field static mCoverCamera:Z

.field static mFTAMode:Z

.field static mSPen:Z

.field static mScoverOpen:Z


# instance fields
.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryHighVoltageCharger:Z

.field private mBatteryLevel:I

.field mBatteryOnline:I

.field mBatteryOverheatLevel:I

.field mBatterySwellingLevel:I

.field mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingRecoveryCount:I

.field mBatterySwellingRecoveryLevel:I

.field mBatterySwellingRecoveryTemperature:I

.field mBatterySwellingRecoveryThreshold:I

.field mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingTemperature:I

.field mBatteryTemperature:I

.field private mBootCompleted:Z

.field mCable:Z

.field mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mCocktailWakeUpState:Z

.field mDeviceType:I

.field mDimKeeping:Z

.field mForceTest:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field private mNeedToDismissChargingInterruptionWarning:Z

.field private mPendingCableBroadcast:Z

.field private mPendingPowerSavingModeAutoDisableBroadcast:Z

.field private mPendingPowerSavingModeAutoEnableBroadcast:Z

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field mSIOPLevel:I

.field mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mScoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mScreenOffTime:J

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    sput-boolean v2, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mScoverOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    const/16 v0, 0x2b2

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    const/16 v0, 0x45

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCable:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCocktailWakeUpState:Z

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setSaverMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSaverMode(Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "SALES_ATT "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "SALES_VZW "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public start()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v4, v5, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_4

    const-string v3, "PowerUI"

    const-string v4, "start : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-eq v3, v4, :cond_5

    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    :goto_2
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : Dim keeping = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hlte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ha3g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "h3g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sput-boolean v6, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.cocktailbar"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : CocktailBar = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mCocktailBar:Z

    if-eqz v3, :cond_2

    new-instance v3, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mScoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto/16 :goto_0

    :cond_4
    const-string v3, "PowerUI"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    const v3, 0x3000000a

    const-string v4, "PowerUI"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    const-string v3, "PowerUI"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    :cond_5
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    goto/16 :goto_2
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "low_power_trigger_level"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :cond_0
    if-ge v3, v0, :cond_1

    move v3, v0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method
