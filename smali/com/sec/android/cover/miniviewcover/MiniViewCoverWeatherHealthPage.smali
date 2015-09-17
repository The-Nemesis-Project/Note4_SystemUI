.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;
.super Landroid/widget/FrameLayout;
.source "MiniViewCoverWeatherHealthPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniViewWeatherHealthPage"


# instance fields
.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mPageAdded:Z

.field private mPedoWidgetEnabled:Z

.field private mRegisteredBroadcast:Z

.field private mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

.field private mWeatherLayout:Landroid/widget/LinearLayout;

.field private mWeatherWidgetEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    return-void
.end method

.method private getCPName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Cmaweather"

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "Accuweather"

    :cond_2
    const-string v1, "MiniViewWeatherHealthPage"

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

    return-object v0
.end method

.method private handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setIconNumber(I)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTempScale(I)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setHighTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setLowTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTrusted(I)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setShowLockAndCover(I)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->dump()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "WeatherInfo won\'t update because trusted is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDaemon()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->registBroadcast()V

    return-void

    :cond_0
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0
.end method

.method private initWeather()V
    .locals 1

    sget v0, Lcom/sec/android/sviewcover/R$id;->mini_weather_layout:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    return-void
.end method

.method private isSHealthInstalled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestWeatherDataSync()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setupChildViews()V
    .locals 5

    const/4 v4, -0x1

    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "setupChildViews"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_weatherhealth_page:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->addView(Landroid/view/View;II)V

    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_clear_shealth_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "shealth"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initWeather()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initDaemon()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->requestWeatherDataSync()V

    return-void
.end method

.method private updatePedoWidgetVisibility()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v4, "lock_additional_steps"

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "shealth"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePedoWidgetVisibility() mPedoWidgetEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "mSHealthContainer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateWeatherHealthState()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthVisibility()V

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPedoWidgetEnabled:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V
    .locals 26

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_container:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getIconNumber()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getWeatherIconImage(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v9

    const-string v22, "MiniViewWeatherHealthPage"

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

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getValidTemp(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getValidTemp(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    add-int v14, v22, v23

    const/16 v22, 0x5

    move/from16 v0, v22

    if-le v14, v0, :cond_0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x1

    const/high16 v23, 0x41d80000    # 27.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v22, 0x1

    const/high16 v23, 0x41d80000    # 27.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x1

    const/high16 v23, 0x41d80000    # 27.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

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

    :goto_1
    return-void

    :cond_0
    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v22, 0x1

    const/high16 v23, 0x41f00000    # 30.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

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

    :cond_2
    const-string v22, "MiniViewWeatherHealthPage"

    const-string v23, "Current language is Arabic"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->toDigitString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v12

    const-string v22, "MiniViewWeatherHealthPage"

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

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    sget v22, Lcom/sec/android/sviewcover/R$id;->mini_weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getValidTemp(F)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_5
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2
.end method

.method private updateWeatherWidgetVisibility()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isShowLockAndCover()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    :goto_1
    const-string v0, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWeatherWidgetVisibility() mWeatherWidgetEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_4
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherWidgetEnabled:Z

    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "mWeatherLayout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected adjustWidgetVisibility()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isSHealthInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_0
.end method

.method public getPageState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    return v0
.end method

.method public isWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

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

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    if-eqz v8, :cond_4

    move v1, v9

    :goto_3
    move v10, v1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_3
    const-string v1, "MiniViewWeatherHealthPage"

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

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_4
    const-string v1, "MiniViewWeatherHealthPage"

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

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    move v1, v10

    goto :goto_3
.end method

.method public needAddOrDeletePage()Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthState()Z

    move-result v0

    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needAddOrDeletePage current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "| page state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mPageAdded:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registBroadcast()V
    .locals 3

    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "registBroadcast()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    return-void
.end method

.method public unregistBroadcast()V
    .locals 2

    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "unregistBroadcast()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mRegisteredBroadcast:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public updateWeatherHealthVisibility()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updatePedoWidgetVisibility()V

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V

    return-void
.end method
