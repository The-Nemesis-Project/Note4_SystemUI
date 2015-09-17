.class public Lcom/android/keyguard/sec/AdaptiveEventManager;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;,
        Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;,
        Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final CMA_PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.cmaweather.provider"

.field public static final CMA_SETTING_URI:Landroid/net/Uri;

.field public static final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String; = "CHECK_CURRENT_CITY_LOCATION"

.field protected static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field protected static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field protected static final DAEMON_JPWEATHER:Ljava/lang/String; = "weathernewsjp"

.field protected static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field public static final EMERGENCY:I = 0x2

.field private static final NUM_OF_EVENT:I = 0x3

.field public static final PEDOMETER:I = 0x1

.field protected static final PEDOMETER_CLASS:Ljava/lang/String; = "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field protected static final SPLANNER_CLASS:Ljava/lang/String; = "sched"

.field private static final TAG:Ljava/lang/String; = "AdaptiveEventManager"

.field private static final UPDATE_EMERGENCY_MESSAGE:I = 0x132e

.field private static final UPDATE_PEDO_MESSAGE:I = 0x132f

.field public static final WEATHER:I = 0x0

.field protected static final WEATHER_CLASS:Ljava/lang/String; = "com.android.keyguard.sec.AdaptiveEventManager.Weather"

.field private static mSmallView:Landroid/widget/RemoteViews;

.field private static sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;


# instance fields
.field private ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final CITYID_CURRENT_LOCATION:Ljava/lang/String;

.field private final KEY_COUNTRY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_CITY_CODE:Ljava/lang/String;

.field private final KEY_CURRENT_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_CITY_NAME_ENG:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ERROR_BUNDLE:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_SHOW_LOCK_AND_COVER:Ljava/lang/String;

.field private final KEY_SYSTEM_LOCATION:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final KEY_WEATHER_TEXT:Ljava/lang/String;

.field private URI_WEATHER_INFO:Landroid/net/Uri;

.field private mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

.field private mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->CMA_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "Location=\"%s\""

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "cityId:current"

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->CITYID_CURRENT_LOCATION:Ljava/lang/String;

    const-string v5, "STATE"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_COUNTRY_NAME:Ljava/lang/String;

    const-string v5, "Accuweather"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_current_temp"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_TEMP:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_loc_code"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_CITY_CODE:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_city_name"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_CITY_NAME:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_city_name_eng"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_CURRENT_CITY_NAME_ENG:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_high_temp"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_HIGH_TEMP:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_low_temp"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_LOW_TEMP:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_SHOW_LOCK_AND_COVER:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_temp_scale"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_TEMP_SCALE:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_weather_icon_num"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_ICON_NUM:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_weather_text"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_WEATHER_TEXT:Ljava/lang/String;

    const-string v5, "aw_daemon_service_key_system_location"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_SYSTEM_LOCATION:Ljava/lang/String;

    const-string v5, "Error_Code"

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->KEY_ERROR_BUNDLE:Ljava/lang/String;

    new-instance v5, Lcom/android/keyguard/sec/AdaptiveEventManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/sec/AdaptiveEventManager$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/keyguard/sec/AdaptiveEventManager$2;

    iget-object v6, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/sec/AdaptiveEventManager$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v5, Lcom/android/keyguard/sec/AdaptiveEventManager$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/keyguard/sec/AdaptiveEventManager$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$4;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v5, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    iput-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->init()V

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_show_info"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v2

    const-string v5, "AdaptiveEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isWeatherEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "START"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v5, "com.android.systemui"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handleEmergencyUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    return-object v0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "Cmaweather"

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Accuweather"

    :cond_3
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    const-string v0, "AdaptiveEventManager"

    const-string v1, "*** AdaptiveEventManager create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->sInstance:Lcom/android/keyguard/sec/AdaptiveEventManager;

    return-object v0
.end method

.method private handleEmergencyUpdate()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "handleEmergencyUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mSmallView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mViewList[EMERGENCY] == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private handlePedoUpdate()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "handlePedoUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mSmallView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "mViewList[PEDOMETER] == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setIconNumber(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setCurrentTemperature(F)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_temp_scale"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setTempScale(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_city_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setCurrentCityName(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "ko"

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_city_name_eng"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setCurrentCityName(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setHighTemperature(F)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setLowTemperature(F)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v5, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setShowLockAndCover(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v5

    if-eq v0, v5, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setIsChangedShowOption(Z)V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v4, "aw_daemon_service_key_system_location"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setSystemLocation(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    const-string v4, "Error_Code"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->setTrusted(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->dump()V

    const-string v2, "AdaptiveEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous visibility is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AdaptiveEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now visibility is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIsChangedShowOption()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    invoke-interface {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateWeatherContainerVisible()V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTrusted()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "AdaptiveEventManager"

    const-string v3, "mWeatherInfo container is reliable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-interface {v2, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    goto/16 :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    const-string v2, "AdaptiveEventManager"

    const-string v3, "mWeatherInfo is not reliable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const-string v2, "AdaptiveEventManager"

    const-string v3, "mAdaptiveEventCallback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private init()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->URI_WEATHER_INFO:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->URI_WEATHER_INFO:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->URI_WEATHER_INFO:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->URI_WEATHER_INFO:Landroid/net/Uri;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateContainers(I)V
    .locals 2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "M updateContainers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateContainer(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdaptiveEventManager"

    const-string v1, "M mAdaptiveEventCallback == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCheckCurrentCityLocation(Landroid/content/Context;)I
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string v1, "AdaptiveEventManager"

    const-string v2, "getCheckCurrent: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    const-string v1, "Cmaweather"

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/keyguard/sec/AdaptiveEventManager;->CMA_SETTING_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_1
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v1, "AdaptiveEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCheckCurrent: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getSmallViewList()[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    return-object v0
.end method

.method protected getTopAdaptiveEvent(Ljava/util/ArrayList;)Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;",
            ">;)",
            "Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;"
        }
    .end annotation

    const-string v0, "AdaptiveEventManager"

    const-string v1, "getTopAdaptiveEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopAdaptiveEventView(I)Landroid/view/View;
    .locals 4

    const-string v2, "AdaptiveEventManager"

    const-string v3, "getTopAdaptiveEventView()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    if-eqz v0, :cond_1

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getWeatherEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    return-object v0
.end method

.method protected isPedometerExist()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAdaptiveEvent() requestClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v5

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v3, v0, v5

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v3, v0, v4

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v6

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v3, v0, v6

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_0
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    const-string v0, "AdaptiveEventManager"

    const-string v1, "setAdaptiveEvent(r,s) Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveEvent() requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_3

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v4, v0, v3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/view/View;)V

    aput-object v1, v0, v3

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[WEATHER].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    goto :goto_0

    :cond_3
    const-string v0, "not null"

    goto :goto_1

    :cond_4
    const-string v0, "AdaptiveEventManager"

    const-string v1, "M mAdaptiveEventCallback == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const-string v0, "AdaptiveEventManager"

    const-string v1, "setAdaptiveEvent(r,s,b) Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdaptiveEvent() requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bigView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_3

    const-string v0, "null"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v3

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v3

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v3

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[PEDOMETER].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v3

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto :goto_0

    :cond_2
    const-string v0, "not null"

    goto :goto_1

    :cond_3
    const-string v0, "not null"

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v4

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v0, v5}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aput-object v5, v0, v4

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v4

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewList[EMERGENCY].view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v2, v2, v4

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->view:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->updateContainers(I)V

    goto/16 :goto_0
.end method

.method protected setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V
    .locals 2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "setAdaptiveEventContainerSmall()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x132f

    const/16 v3, 0x132e

    sput-object p2, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    const-string v1, "AdaptiveEventManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdaptiveEvent(r,s,b) requestClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " smallView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bigView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "updateAdaptiveEvent() : Requested RemoteViews is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    const-string v0, "not null"

    goto :goto_0

    :cond_1
    const-string v0, "not null"

    goto :goto_1

    :cond_2
    const-string v0, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    sget-object v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    aget-object v0, v0, v6

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager;->mViewList:[Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    sget-object v2, Lcom/android/keyguard/sec/AdaptiveEventManager;->mSmallView:Landroid/widget/RemoteViews;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v1, v0, v6

    goto :goto_2
.end method
