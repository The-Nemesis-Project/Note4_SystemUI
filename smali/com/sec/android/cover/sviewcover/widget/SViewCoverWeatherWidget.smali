.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field public static final CMA_PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.cmaweather.provider"

.field public static final CMA_SETTING_URI:Landroid/net/Uri;

.field public static final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String; = "CHECK_CURRENT_CITY_LOCATION"

.field protected static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field protected static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field protected static final DAEMON_JPWEATHER:Ljava/lang/String; = "weathernewsjp"

.field protected static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field private static final LAYOUT_DIRECTION_TO_LTR:I = 0x0

.field protected static final PEDOMETER_CLASS:Ljava/lang/String; = "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field protected static final SPLANNER_CLASS:Ljava/lang/String; = "sched"

.field private static TAG:Ljava/lang/String; = null

.field protected static final WEATHER_CLASS:Ljava/lang/String; = "com.android.keyguard.sec.AdaptiveEventManager.Weather"


# instance fields
.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final KEY_CURRENT_CITY:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ERROR_BUNDLE:Ljava/lang/String;

.field private final KEY_HIGH_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_LOW_TEMP:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

.field private mWeatherWidgetEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->CMA_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 46
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    .line 48
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 49
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_CURRENT_CITY:Ljava/lang/String;

    .line 50
    const-string v0, "aw_daemon_service_key_high_temp"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_HIGH_TEMP:Ljava/lang/String;

    .line 51
    const-string v0, "aw_daemon_service_key_low_temp"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_LOW_TEMP:Ljava/lang/String;

    .line 53
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 54
    const-string v0, "aw_daemon_service_key_weather_icon_num"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_ICON_NUM:Ljava/lang/String;

    .line 55
    const-string v0, "Error_Code"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->KEY_ERROR_BUNDLE:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    .line 71
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 97
    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    .line 99
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->init()V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V

    .line 102
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V

    return-void
.end method

.method private getCPName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, "cpName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string v0, "Cmaweather"

    .line 343
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    :cond_1
    const-string v0, "Accuweather"

    .line 347
    :cond_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCPName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v0
.end method

.method private getTemperatureUnit(I)I
    .locals 4
    .param p1, "scale"    # I

    .prologue
    .line 472
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherTempUnit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    .line 474
    .local v0, "resource":I
    packed-switch p1, :pswitch_data_0

    .line 480
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    .line 483
    :goto_0
    return v0

    .line 476
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    .line 477
    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getTemperatureUnitText(I)Ljava/lang/String;
    .locals 4
    .param p1, "scale"    # I

    .prologue
    .line 487
    const-string v0, ""

    .line 488
    .local v0, "text":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTemperatureUnitText() scale =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-object v0

    .line 490
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 522
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    :cond_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidTemp() invalid, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "-"

    .line 530
    .end local v0    # "results":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 529
    .restart local v0    # "results":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidTemp() valid, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWeatherIconImage(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 535
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherIconImage iconNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    packed-switch p1, :pswitch_data_0

    .line 582
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_sunny:I

    :goto_0
    return v0

    .line 538
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_sunny:I

    goto :goto_0

    .line 540
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunny:I

    goto :goto_0

    .line 542
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_mostlycloudy:I

    goto :goto_0

    .line 544
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_rain:I

    goto :goto_0

    .line 546
    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_fog:I

    goto :goto_0

    .line 548
    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_shower:I

    goto :goto_0

    .line 550
    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywithshowers:I

    goto :goto_0

    .line 552
    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_thunderstorms:I

    goto :goto_0

    .line 554
    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywiththundershowers:I

    goto :goto_0

    .line 556
    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_flurries:I

    goto :goto_0

    .line 558
    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywithflurries:I

    goto :goto_0

    .line 560
    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_snow:I

    goto :goto_0

    .line 562
    :pswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_rainandsnowmixed:I

    goto :goto_0

    .line 564
    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_ice:I

    goto :goto_0

    .line 566
    :pswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_hot:I

    goto :goto_0

    .line 568
    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_cold:I

    goto :goto_0

    .line 570
    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_windy:I

    goto :goto_0

    .line 572
    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_clear:I

    goto :goto_0

    .line 574
    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_mostlyclear:I

    goto :goto_0

    .line 576
    :pswitch_13
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_20:I

    goto :goto_0

    .line 578
    :pswitch_14
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_21:I

    goto :goto_0

    .line 580
    :pswitch_15
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_22:I

    goto :goto_0

    .line 536
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setIconNumber(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentTemperature(F)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTempScale(I)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setHighTemperature(F)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setLowTemperature(F)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTrusted(I)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->dump()V

    .line 265
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    const-string v1, "WeatherInfo won\'t update because trusted is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    .line 275
    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 277
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 278
    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 279
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 296
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 282
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 283
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 284
    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_1
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 287
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 288
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 289
    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    .line 291
    :cond_2
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 292
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 293
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 294
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V
    .locals 25
    .param p1, "weatherInfo"    # Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    .prologue
    .line 352
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_container:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 353
    .local v21, "weatherContainerLayout":Landroid/widget/LinearLayout;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 354
    .local v7, "iconImageView":Landroid/widget/ImageView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 355
    .local v17, "tempTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 357
    .local v19, "unitImageView":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getIconNumber()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getWeatherIconImage(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 360
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v3

    .line 362
    .local v3, "highTemp":F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v9

    .line 363
    .local v9, "lowTemp":F
    sget-object v22, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleWeatherUpdate() outside [high, low] = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 366
    .local v5, "highTempTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 367
    .local v11, "lowTempTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 369
    .local v13, "separatorTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 370
    .local v18, "unitHighImageView":Landroid/widget/ImageView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 372
    .local v20, "unitLowImageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getValidTemp(F)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "highTempStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getValidTemp(F)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "lowTempStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    add-int v14, v22, v23

    .line 377
    .local v14, "strLength":I
    const/16 v22, 0x5

    move/from16 v0, v22

    if-le v14, v0, :cond_0

    .line 379
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 380
    .local v8, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 381
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    const/16 v22, 0x1

    const/high16 v23, 0x41d80000    # 27.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 383
    const/16 v22, 0x1

    const/high16 v23, 0x41d80000    # 27.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .restart local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 386
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    const/16 v22, 0x1

    const/high16 v23, 0x41d80000    # 27.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
    .end local v8    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 396
    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 401
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 469
    .end local v3    # "highTemp":F
    .end local v4    # "highTempStr":Ljava/lang/String;
    .end local v5    # "highTempTextView":Landroid/widget/TextView;
    .end local v9    # "lowTemp":F
    .end local v10    # "lowTempStr":Ljava/lang/String;
    .end local v11    # "lowTempTextView":Landroid/widget/TextView;
    .end local v13    # "separatorTextView":Landroid/widget/TextView;
    .end local v14    # "strLength":I
    .end local v18    # "unitHighImageView":Landroid/widget/ImageView;
    .end local v20    # "unitLowImageView":Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 389
    .restart local v3    # "highTemp":F
    .restart local v4    # "highTempStr":Ljava/lang/String;
    .restart local v5    # "highTempTextView":Landroid/widget/TextView;
    .restart local v9    # "lowTemp":F
    .restart local v10    # "lowTempStr":Ljava/lang/String;
    .restart local v11    # "lowTempTextView":Landroid/widget/TextView;
    .restart local v13    # "separatorTextView":Landroid/widget/TextView;
    .restart local v14    # "strLength":I
    .restart local v18    # "unitHighImageView":Landroid/widget/ImageView;
    .restart local v20    # "unitLowImageView":Landroid/widget/ImageView;
    :cond_0
    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 390
    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 419
    .end local v3    # "highTemp":F
    .end local v4    # "highTempStr":Ljava/lang/String;
    .end local v5    # "highTempTextView":Landroid/widget/TextView;
    .end local v9    # "lowTemp":F
    .end local v10    # "lowTempStr":Ljava/lang/String;
    .end local v11    # "lowTempTextView":Landroid/widget/TextView;
    .end local v13    # "separatorTextView":Landroid/widget/TextView;
    .end local v14    # "strLength":I
    .end local v18    # "unitHighImageView":Landroid/widget/ImageView;
    .end local v20    # "unitLowImageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 421
    .local v15, "tempInt":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "curLanguage":Ljava/lang/String;
    const-string v22, "ar"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "fa"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 424
    :cond_2
    sget-object v22, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    const-string v23, "Current language is Arabic"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->toDigitString(I)Ljava/lang/String;

    move-result-object v16

    .line 426
    .local v16, "tempText":Ljava/lang/String;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 435
    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v6

    .line 440
    .local v6, "highTempValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v12

    .line 441
    .local v12, "lowTempValue":F
    sget-object v22, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleWeatherUpdate() inside [high, low] = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 445
    .restart local v5    # "highTempTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 446
    .restart local v11    # "lowTempTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 448
    .restart local v13    # "separatorTextView":Landroid/widget/TextView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 449
    .restart local v18    # "unitHighImageView":Landroid/widget/ImageView;
    sget v22, Lcom/sec/android/sviewcover/R$id;->weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 452
    .restart local v20    # "unitLowImageView":Landroid/widget/ImageView;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    const/16 v22, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    .end local v5    # "highTempTextView":Landroid/widget/TextView;
    .end local v6    # "highTempValue":F
    .end local v11    # "lowTempTextView":Landroid/widget/TextView;
    .end local v12    # "lowTempValue":F
    .end local v13    # "separatorTextView":Landroid/widget/TextView;
    .end local v18    # "unitHighImageView":Landroid/widget/ImageView;
    .end local v20    # "unitLowImageView":Landroid/widget/ImageView;
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 428
    .end local v16    # "tempText":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getValidTemp(F)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "tempText":Ljava/lang/String;
    goto/16 :goto_2

    .line 431
    .end local v16    # "tempText":Ljava/lang/String;
    :cond_5
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "tempText":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private updateWeatherWidgetVisibility()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->isWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    .line 112
    :goto_1
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWeatherWidgetVisibility() mWeatherWidgetEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->setVisibility(I)V

    .line 116
    return-void

    :cond_0
    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    .line 115
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getCheckCurrentCityLocation(Landroid/content/Context;)I
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 299
    const/4 v8, 0x0

    .line 301
    .local v8, "result":I
    if-nez p1, :cond_0

    .line 302
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    const-string v2, "getCheckCurrent: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 333
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 306
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 308
    const/4 v6, 0x0

    .line 309
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v1, "Cmaweather"

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 310
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->CMA_SETTING_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    :goto_1
    if-eqz v6, :cond_2

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 328
    :cond_1
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 331
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCheckCurrent() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 333
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 314
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :cond_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 324
    :catch_0
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public isWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, "result":I
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return v10

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 124
    const/4 v6, 0x0

    .line 126
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    if-eqz v6, :cond_1

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 146
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    if-eqz v8, :cond_4

    move v1, v9

    :goto_3
    move v10, v1

    goto :goto_0

    .line 133
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 139
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    if-eqz v6, :cond_2

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 142
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 143
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    if-eqz v6, :cond_2

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 146
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v1, v10

    .line 151
    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 588
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 597
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 599
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V

    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, "weatherTrigger":Landroid/content/Intent;
    const-string v2, "START"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    const-string v2, "PACKAGE"

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v2, "CP"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 610
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 612
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 614
    return-void
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # I

    .prologue
    .line 504
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 505
    .local v3, "lengthSize":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 506
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_0

    .line 510
    const-string v2, ""

    .line 511
    .local v2, "formatter":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toDigitString() number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 514
    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
