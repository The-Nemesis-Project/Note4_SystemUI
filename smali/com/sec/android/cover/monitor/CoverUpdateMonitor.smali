.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.super Ljava/lang/Object;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    }
.end annotation


# static fields
.field private static final MSG_BATTERY_LOW:I = 0x132

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_CHANGE_COVER_BACKGROUND:I = 0x13a

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x135

.field private static final MSG_CONTENT_CHANGED:I = 0x141

.field private static final MSG_COVER_STATE_CHANGED:I = 0x13f

.field private static final MSG_DATE_FORMAT_CHANGED:I = 0x142

.field private static final MSG_DISASTER_VIEW_UPDATE:I = 0x137

.field private static final MSG_EMERGENCY_STATE_CHANGED:I = 0x140

.field private static final MSG_FLOATING_MSG_HIDED:I = 0x13c

.field private static final MSG_FLOATING_MSG_SHOWED:I = 0x13b

.field private static final MSG_FONT_THEME_CHANGED:I = 0x148

.field private static final MSG_HOME_CITY_CHANGED:I = 0x12f

.field private static final MSG_INSERT_SPEN:I = 0x139

.field private static final MSG_LOCALE_CHANGED:I = 0x134

.field private static final MSG_PACKAGE_ADDED:I = 0x146

.field private static final MSG_PACKAGE_CHANGED:I = 0x147

.field private static final MSG_PACKAGE_REMOVED:I = 0x145

.field private static final MSG_PICKUP_COMMON_DAY:I = 0x144

.field private static final MSG_PICKUP_FESTIVAL_DAY:I = 0x143

.field private static final MSG_POWERSAVING_MODE_CHANGED:I = 0x138

.field private static final MSG_POWER_CONNECTION_UPDATE:I = 0x133

.field private static final MSG_REMOTE_VIEW_UPDATED:I = 0x136

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x131

.field private static final MSG_SCREEN_TURNED_ON:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_SWITCHED:I = 0x13e

.field private static final MSG_VOLUME_CHANGED:I = 0x13d

.field private static final TAG:Ljava/lang/String; = "CoverUpdateMonitor"

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# instance fields
.field private mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCoverStateClone:Lcom/samsung/android/cover/CoverState;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitiallyRegistContentUriList:[Landroid/net/Uri;

.field private final mRegisteredContentUriSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrIntentActionList:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 48
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    .line 49
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 64
    const/16 v7, 0x1d

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "android.intent.action.TIME_TICK"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "android.intent.action.TIME_SET"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "android.intent.action.DATE_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "android.intent.action.SCREEN_ON"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "android.intent.action.SCREEN_OFF"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "android.intent.action.BATTERY_LOW"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "android.settings.POWERSAVINGMODE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "com.samsung.pen.INSERT"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "com.bst.floatingmsg.quicktalkshow"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "com.bst.floatingmsg.quicktalkhide"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "android.intent.action.USER_SWITCHED"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "android.intent.action.EMERGENCY_STATE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "clock.date_format_changed"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "com.bst.action.PICKUP_FESTIVAL"

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "com.bst.action.PICKUP_COMMON"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    const-string v9, "dualclock.homecity_timezone"

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "FONT_THEME_CHANGED"

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    .line 82
    const/4 v7, 0x7

    new-array v7, v7, [Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "time_12_24"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "content://settings/system/date_format"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "dualclock_menu_settings"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "torch_light"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "festival_effect_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "homecity_timezone"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    .line 124
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;

    invoke-direct {v7, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 246
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;

    invoke-direct {v7, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    sget-object v7, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v8, "create CoverUpdateMonitor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    .line 464
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 465
    new-instance v7, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v7}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    .line 467
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 468
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 469
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 474
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .local v5, "packageChangeFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 480
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    .local v1, "arr$":[Landroid/net/Uri;
    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 483
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDisasterViewUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerSavingModeChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleInsertSPen(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleChangeCoverBackground()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgShowed()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgHided()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleVolumeChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleUserSwitched(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleEmergencyStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDateFormatChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupFestivalDay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupCommonDay()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleHomeCityChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleThemeFontUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryLow()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerConnectionUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleConfigurationChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .line 456
    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    return-object v0
.end method

.method private handleBatteryLow()V
    .locals 5

    .prologue
    .line 666
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 667
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 668
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 669
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 670
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onBatteryLow()V

    .line 668
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 675
    return-void

    .line 674
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 572
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-static {v4, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 573
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 574
    if-eqz v0, :cond_2

    .line 575
    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 576
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 577
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 578
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 579
    .local v1, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v1, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    .line 577
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v5

    .line 585
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 583
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleChangeCoverBackground()V
    .locals 5

    .prologue
    .line 786
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 787
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 788
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 789
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 790
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onChangeCoverBackground()V

    .line 788
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 795
    return-void

    .line 794
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleConfigurationChanged()V
    .locals 5

    .prologue
    .line 711
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 712
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 713
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 714
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 715
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onConfigurationChanged()V

    .line 713
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 720
    return-void

    .line 719
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 891
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 892
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 893
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 894
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 895
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onContentChanged(Landroid/net/Uri;)V

    .line 893
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 899
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 900
    return-void

    .line 899
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 861
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 862
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 863
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 864
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 865
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 863
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 870
    return-void

    .line 869
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDateFormatChanged()V
    .locals 5

    .prologue
    .line 906
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 907
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 908
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 909
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 910
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDateFormatChanged()V

    .line 908
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 915
    return-void

    .line 914
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDisasterViewUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 742
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 743
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 744
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 745
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDisasterViewUpdated(Ljava/lang/String;)V

    .line 743
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 750
    return-void

    .line 749
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleEmergencyStateChanged()V
    .locals 5

    .prologue
    .line 876
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 877
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 878
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 879
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 880
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onEmergencyStateChanged()V

    .line 878
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 885
    return-void

    .line 884
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleFloatingMsgHided()V
    .locals 5

    .prologue
    .line 816
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 817
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 818
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 819
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 820
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgHided()V

    .line 818
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 825
    return-void

    .line 824
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleFloatingMsgShowed()V
    .locals 5

    .prologue
    .line 801
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 802
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 803
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 804
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 805
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgShowed()V

    .line 803
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 810
    return-void

    .line 809
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleHomeCityChanged()V
    .locals 5

    .prologue
    .line 953
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 954
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 955
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 956
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 957
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onHomeCityChanged()V

    .line 955
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 962
    return-void

    .line 961
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleInsertSPen(Z)V
    .locals 5
    .param p1, "penInserted"    # Z

    .prologue
    .line 771
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 772
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 773
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 774
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 775
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onInsertSPen(Z)V

    .line 773
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 780
    return-void

    .line 779
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleLocaleChanged()V
    .locals 5

    .prologue
    .line 696
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 697
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 698
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 699
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 700
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onLocaleChanged()V

    .line 698
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 705
    return-void

    .line 704
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 607
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 608
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 609
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 610
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    .line 608
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 615
    return-void

    .line 614
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 621
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 622
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 623
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 624
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 625
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    .line 623
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 630
    return-void

    .line 629
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 592
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 593
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 594
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 595
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;)V

    .line 593
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 600
    return-void

    .line 599
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePickupCommonDay()V
    .locals 5

    .prologue
    .line 938
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 939
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 940
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 941
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 942
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupCommonDay()V

    .line 940
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 947
    return-void

    .line 946
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePickupFestivalDay(Ljava/lang/String;)V
    .locals 5
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 923
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 925
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 926
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 927
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupFestivalDay(Ljava/lang/String;)V

    .line 925
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 932
    return-void

    .line 931
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePowerConnectionUpdate(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    .line 681
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 682
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 683
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 684
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 685
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerConnectionUpdate(Z)V

    .line 683
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 690
    return-void

    .line 689
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePowerSavingModeChanged()V
    .locals 5

    .prologue
    .line 756
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 757
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 758
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 759
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 760
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerSavingModeChanged()V

    .line 758
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 765
    return-void

    .line 764
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 5
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 726
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 727
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 728
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 729
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 730
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 728
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 735
    return-void

    .line 734
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleScreenTurnedOff()V
    .locals 5

    .prologue
    .line 651
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 652
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 653
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 654
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 655
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 653
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 660
    return-void

    .line 659
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleScreenTurnedOn()V
    .locals 5

    .prologue
    .line 636
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 637
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 638
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 639
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 640
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 638
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 645
    return-void

    .line 644
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleThemeFontUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 545
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 546
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 547
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onThemeFontChanged(Ljava/lang/String;)V

    .line 545
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 5

    .prologue
    .line 557
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 558
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 559
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 560
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 561
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    .line 559
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 566
    return-void

    .line 565
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleUserSwitched(II)V
    .locals 5
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 846
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 847
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 848
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 849
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 850
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onUserSwitched(II)V

    .line 848
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 855
    return-void

    .line 854
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleVolumeChanged()V
    .locals 5

    .prologue
    .line 831
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 832
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 833
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 834
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 835
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onVolumeChanged()V

    .line 833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 840
    return-void

    .line 839
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .param p0, "old"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 990
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 991
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 992
    .local v2, "wasPluggedIn":Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 996
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1015
    :cond_0
    :goto_1
    return v3

    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1
    move v1, v4

    .line 992
    goto :goto_0

    .line 1001
    .restart local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1006
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1011
    :cond_4
    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v5, :cond_5

    iget v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 1015
    goto :goto_1
.end method

.method private sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .prologue
    .line 534
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    .line 535
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 537
    return-void
.end method


# virtual methods
.method public notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 9
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 981
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, p1, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZI)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    .line 985
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 986
    .local v8, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 987
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 491
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .prologue
    .line 517
    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 522
    const-string v1, "CoverUpdateMonitor"

    const-string v3, "Object tried to add another callback"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Called by"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    monitor-exit v2

    .line 530
    :goto_1
    return-void

    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 529
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerContentObserver(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z

    .prologue
    .line 971
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 978
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 975
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .prologue
    .line 500
    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 503
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 502
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 507
    :cond_1
    monitor-exit v2

    .line 508
    return-void

    .line 507
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
