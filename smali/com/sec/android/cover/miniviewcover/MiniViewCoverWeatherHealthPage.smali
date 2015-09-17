.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;
.super Landroid/widget/FrameLayout;
.source "MiniViewCoverWeatherHealthPage.java"


# static fields
.field public static final ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = null

.field public static final CMA_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String; = "CHECK_CURRENT_CITY_LOCATION"

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "accuweather"

.field private static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field private static final DAEMON_JPWEATHER:Ljava/lang/String; = "weathernewsjp"

.field private static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field public static final K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field private static final TAG:Ljava/lang/String; = "MiniViewWeatherHealthPage"

.field public static final WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

.field private static mCPName:Ljava/lang/String;


# instance fields
.field private final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private final KEY_CITY_ID_SEC:Ljava/lang/String;

.field private final KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

.field private final KEY_HIGH_TEMP_SEC:Ljava/lang/String;

.field private final KEY_ICON_NUM_SEC:Ljava/lang/String;

.field private final KEY_LOW_TEMP_SEC:Ljava/lang/String;

.field private final KEY_TEMP_SCALE_SEC:Ljava/lang/String;

.field private final KEY_TIMEZONE:Ljava/lang/String;

.field private final KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

.field private final KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

.field private final KEY_WEATHER_ICON_NUM_SEC:Ljava/lang/String;

.field public WEATHERINFO_URI:Landroid/net/Uri;

.field private bMiniHealth:Z

.field private bMiniWeather:Z

.field private bPageState:Z

.field private mDivider:Landroid/widget/ImageView;

.field private mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherContainerHighLow:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLayout:Landroid/widget/LinearLayout;

.field private mWeatherTemp:Landroid/widget/TextView;

.field private mWeatherTempHigh:Landroid/widget/TextView;

.field private mWeatherTempLow:Landroid/widget/TextView;

.field private mWeatherUnit:Landroid/widget/ImageView;

.field private mWeatherUnitLow:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CMA_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://com.sec.android.daemonapp.ap.weathernewsjp.provider/current_weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "accuweather"

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    .line 69
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 1019
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "Location=\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 42
    const-string v0, "TODAY_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "REAL_LOCATION"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_CITY_ID_SEC:Ljava/lang/String;

    .line 55
    const-string v0, "TODAY_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_ICON_NUM_SEC:Ljava/lang/String;

    .line 56
    const-string v0, "WEATHER_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_WEATHER_ICON_NUM_SEC:Ljava/lang/String;

    .line 57
    const-string v0, "STATE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

    .line 58
    const-string v0, "TIMEZONE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TIMEZONE:Ljava/lang/String;

    .line 59
    const-string v0, "TODAY_SUNRISE_TIME"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

    .line 60
    const-string v0, "TODAY_SUNSET_TIME"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

    .line 61
    const-string v0, "TEMP_SCALE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TEMP_SCALE_SEC:Ljava/lang/String;

    .line 62
    const-string v0, "TODAY_HIGH_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_HIGH_TEMP_SEC:Ljava/lang/String;

    .line 63
    const-string v0, "TODAY_LOW_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_LOW_TEMP_SEC:Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    .line 72
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    .line 76
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "Location=\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 42
    const-string v0, "TODAY_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "REAL_LOCATION"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_CITY_ID_SEC:Ljava/lang/String;

    .line 55
    const-string v0, "TODAY_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_ICON_NUM_SEC:Ljava/lang/String;

    .line 56
    const-string v0, "WEATHER_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_WEATHER_ICON_NUM_SEC:Ljava/lang/String;

    .line 57
    const-string v0, "STATE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

    .line 58
    const-string v0, "TIMEZONE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TIMEZONE:Ljava/lang/String;

    .line 59
    const-string v0, "TODAY_SUNRISE_TIME"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

    .line 60
    const-string v0, "TODAY_SUNSET_TIME"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

    .line 61
    const-string v0, "TEMP_SCALE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TEMP_SCALE_SEC:Ljava/lang/String;

    .line 62
    const-string v0, "TODAY_HIGH_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_HIGH_TEMP_SEC:Ljava/lang/String;

    .line 63
    const-string v0, "TODAY_LOW_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_LOW_TEMP_SEC:Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    .line 72
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    .line 81
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-string v0, "Location=\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 42
    const-string v0, "TODAY_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_CURRENT_TEMP_SEC:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "REAL_LOCATION"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_CITY_ID_SEC:Ljava/lang/String;

    .line 55
    const-string v0, "TODAY_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_ICON_NUM_SEC:Ljava/lang/String;

    .line 56
    const-string v0, "WEATHER_ICON_NUM"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_WEATHER_ICON_NUM_SEC:Ljava/lang/String;

    .line 57
    const-string v0, "STATE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_COUNTRY_NAME_SEC:Ljava/lang/String;

    .line 58
    const-string v0, "TIMEZONE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TIMEZONE:Ljava/lang/String;

    .line 59
    const-string v0, "TODAY_SUNRISE_TIME"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TODAY_SUNRISE_TIME:Ljava/lang/String;

    .line 60
    const-string v0, "TODAY_SUNSET_TIME"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TODAY_SUNSET_TIME:Ljava/lang/String;

    .line 61
    const-string v0, "TEMP_SCALE"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_TEMP_SCALE_SEC:Ljava/lang/String;

    .line 62
    const-string v0, "TODAY_HIGH_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_HIGH_TEMP_SEC:Ljava/lang/String;

    .line 63
    const-string v0, "TODAY_LOW_TEMP"

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->KEY_LOW_TEMP_SEC:Ljava/lang/String;

    .line 71
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    .line 72
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    .line 86
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V

    .line 87
    return-void
.end method

.method private checkDayOrNight()Z
    .locals 11

    .prologue
    const/16 v10, 0x12

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 908
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 909
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v0, :cond_8

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 912
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 913
    .local v3, "month":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 914
    .local v1, "hour":I
    const-string v6, "MiniViewWeatherHealthPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, month = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "locale":Ljava/lang/String;
    const-string v6, "MiniViewWeatherHealthPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkDayOrNight, locale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-eqz v2, :cond_6

    .line 920
    const-string v6, "ko_KR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 921
    const/4 v6, 0x3

    if-lt v3, v6, :cond_2

    const/16 v6, 0xa

    if-ge v3, v6, :cond_2

    .line 922
    if-lt v1, v9, :cond_0

    const/16 v6, 0x13

    if-lt v1, v6, :cond_1

    :cond_0
    move v4, v5

    .line 946
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_1
    :goto_0
    return v4

    .line 927
    .restart local v1    # "hour":I
    .restart local v2    # "locale":Ljava/lang/String;
    .restart local v3    # "month":I
    :cond_2
    const/4 v6, 0x7

    if-lt v1, v6, :cond_3

    if-lt v1, v10, :cond_1

    :cond_3
    move v4, v5

    .line 928
    goto :goto_0

    .line 933
    :cond_4
    if-lt v1, v9, :cond_5

    if-lt v1, v10, :cond_1

    :cond_5
    move v4, v5

    .line 934
    goto :goto_0

    .line 939
    :cond_6
    if-lt v1, v9, :cond_7

    if-lt v1, v10, :cond_1

    :cond_7
    move v4, v5

    .line 940
    goto :goto_0

    .line 945
    .end local v1    # "hour":I
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "month":I
    :cond_8
    const-string v5, "MiniViewWeatherHealthPage"

    const-string v6, "checkDayOrNight, mCalendar is null, return true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 1341
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1345
    :cond_0
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const-string v0, "-"

    .line 1348
    .end local v0    # "results":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getWeatherIconImage(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 862
    const-string v0, "MiniViewWeatherHealthPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mini getWeatherIconImage iconNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    packed-switch p1, :pswitch_data_0

    .line 903
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_sunny:I

    :goto_0
    return v0

    .line 865
    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_sunny:I

    goto :goto_0

    .line 867
    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunny:I

    goto :goto_0

    .line 869
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_mostlycloudy:I

    goto :goto_0

    .line 871
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_rain:I

    goto :goto_0

    .line 873
    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_fog:I

    goto :goto_0

    .line 875
    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_shower:I

    goto :goto_0

    .line 877
    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywithshowers:I

    goto :goto_0

    .line 879
    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_thunderstorms:I

    goto :goto_0

    .line 881
    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywiththundershowers:I

    goto :goto_0

    .line 883
    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_flurries:I

    goto :goto_0

    .line 885
    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywithflurries:I

    goto :goto_0

    .line 887
    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_snow:I

    goto :goto_0

    .line 889
    :pswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_rainandsnowmixed:I

    goto :goto_0

    .line 891
    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_ice:I

    goto :goto_0

    .line 893
    :pswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_hot:I

    goto :goto_0

    .line 895
    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_cold:I

    goto :goto_0

    .line 897
    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_windy:I

    goto :goto_0

    .line 899
    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_clear:I

    goto :goto_0

    .line 901
    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_mostlyclear:I

    goto :goto_0

    .line 863
    nop

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
    .end packed-switch
.end method

.method private initDaemon()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getCPName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    .line 116
    const-string v0, "MiniViewWeatherHealthPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWeatherDaemonInfo, getCPName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const-string v0, "accuweather"

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    .line 121
    :cond_1
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->K_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_2
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CMA_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0

    .line 125
    :cond_3
    const-string v0, "weathernewsjp"

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHER_NEWS_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0

    .line 128
    :cond_4
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_CURRENT_WEATHERINFO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private initWeather()V
    .locals 2

    .prologue
    .line 133
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_weather_layout:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    .line 134
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_temperature:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 135
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_weather_icon:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherIcon:Landroid/widget/ImageView;

    .line 136
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_weather_temp:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTemp:Landroid/widget/TextView;

    .line 137
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnit:Landroid/widget/ImageView;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "weatherTypeface":Landroid/graphics/Typeface;
    const-string v1, "system/fonts/SamsungNeoNum-3L.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTemp:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_temperature_high_low:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    .line 145
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_weather_temp_high:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempHigh:Landroid/widget/TextView;

    .line 146
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_weather_divider:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mDivider:Landroid/widget/ImageView;

    .line 147
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_weather_temp_low:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempLow:Landroid/widget/TextView;

    .line 148
    sget v1, Lcom/sec/android/sviewcover/R$id;->clear_weather_unit_high_low:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnitLow:Landroid/widget/ImageView;

    .line 151
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempHigh:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempLow:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    return-void
.end method

.method private isSHealthInstalled()Z
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 158
    .local v0, "isInstalled":Z
    if-nez v0, :cond_0

    .line 159
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_0
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupChildViews()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 90
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "setupChildViews"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_weatherhealth_page:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v0, v4, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->addView(Landroid/view/View;II)V

    .line 94
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_clear_shealth_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 95
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "shealth"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initDaemon()V

    .line 104
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initWeather()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherInfoSec()V

    .line 106
    return-void
.end method

.method private updateWeatherHealthState()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, "state":Z
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v3

    if-ne v3, v4, :cond_4

    .line 185
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v6, "lock_additional_steps"

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    .line 194
    const-string v3, "MiniViewWeatherHealthPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needWeatherHealthPage weather state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "| health state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    if-ne v3, v4, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getCityId()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "cityId":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    .line 201
    const-string v3, "MiniViewWeatherHealthPage"

    const-string v5, "cityId is null. should be OFF about Weather Display"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "cityId":Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    if-ne v3, v4, :cond_7

    .line 206
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v1

    .line 207
    .local v1, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v3, "shealth"

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    .line 208
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 210
    :cond_2
    const-string v3, "MiniViewWeatherHealthPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health visibility by remoteViewInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    if-nez v3, :cond_8

    .line 219
    const-string v3, "MiniViewWeatherHealthPage"

    const-string v4, "Don\'t need WeatherHealthPage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v2, 0x0

    .line 224
    :goto_3
    return v2

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v6, "lock_additional_weather"

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_4

    :cond_6
    move v3, v5

    .line 191
    goto/16 :goto_1

    .line 212
    :cond_7
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v3, :cond_3

    .line 213
    const-string v3, "MiniViewWeatherHealthPage"

    const-string v4, "Hide Shealth remoteView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_2

    .line 222
    :cond_8
    const/4 v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected adjustWidgetVisibility()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isSHealthInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_0
.end method

.method public checkDayOrNightForChina()Z
    .locals 8

    .prologue
    .line 1186
    const/4 v3, 0x0

    .line 1187
    .local v3, "t":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .line 1189
    .local v0, "mIsDay":Z
    const-string v5, "TIMEZONE"

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1190
    .local v4, "timezone":Ljava/lang/String;
    const-string v5, "TODAY_SUNRISE_TIME"

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    .local v1, "sunrise":Ljava/lang/String;
    const-string v5, "TODAY_SUNSET_TIME"

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    .local v2, "sunset":Ljava/lang/String;
    const-string v5, "MiniViewWeatherHealthPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDayOrNightforChina T = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",SS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    if-eqz v4, :cond_0

    .line 1195
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1198
    :cond_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1199
    const-string v5, "MiniViewWeatherHealthPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDayOrNightforChina, mIsDay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return v0
.end method

.method public getCheckCurrentCityLocation()I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1023
    const/4 v8, 0x0

    .line 1025
    .local v8, "result":I
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1026
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "getCheckCurrent: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 1051
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 1030
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1031
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 1032
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "CHECK_CURRENT_CITY_LOCATION"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1035
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1036
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1038
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1045
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1048
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v1, "MiniViewWeatherHealthPage"

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

    .line 1049
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "MiniCover changed concpet about getCheckCurrentCityLocation : result => 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v8, 0x1

    move v9, v8

    .line 1051
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 1041
    .end local v9    # "result":I
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 1042
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCityId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 984
    const-string v6, ""

    .line 985
    .local v6, "cityname":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    move-object v7, v6

    .line 1014
    .end local v6    # "cityname":Ljava/lang/String;
    .local v7, "cityname":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 989
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getCheckCurrentCityLocation()I

    move-result v1

    if-nez v1, :cond_1

    move-object v7, v6

    .line 990
    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 993
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    .line 995
    .local v8, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 997
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "REAL_LOCATION"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1001
    if-eqz v8, :cond_2

    .line 1002
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1010
    :cond_2
    if-eqz v8, :cond_3

    .line 1011
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .line 1014
    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1007
    .end local v7    # "cityname":Ljava/lang/String;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1010
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_4

    .line 1011
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v7, v6

    .end local v6    # "cityname":Ljava/lang/String;
    .restart local v7    # "cityname":Ljava/lang/String;
    goto :goto_0

    .line 1010
    .end local v7    # "cityname":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "cityname":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 1011
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public getHighTemperature()F
    .locals 9

    .prologue
    .line 1123
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1124
    .local v6, "HighTemperature":Ljava/lang/Float;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1125
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1150
    :cond_0
    :goto_0
    return v1

    .line 1128
    :cond_1
    const/4 v7, 0x0

    .line 1130
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1132
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_HIGH_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1136
    if-eqz v7, :cond_2

    .line 1137
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1138
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1145
    :cond_2
    if-eqz v7, :cond_3

    .line 1146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1150
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 1142
    :catch_0
    move-exception v8

    .line 1143
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1145
    if-eqz v7, :cond_0

    .line 1146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1145
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 1146
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getHourAndMin(Ljava/lang/String;)[I
    .locals 8
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-object v5

    .line 1311
    :cond_1
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1312
    .local v0, "colonIndex":I
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1313
    .local v4, "spaceIndex":I
    const/4 v2, 0x0

    .line 1314
    .local v2, "hour":I
    const/4 v3, 0x0

    .line 1316
    .local v3, "min":I
    const/4 v6, -0x1

    if-le v0, v6, :cond_0

    .line 1318
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1319
    const-string v6, "pm"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "PM"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1320
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 1323
    :cond_3
    if-le v4, v0, :cond_4

    .line 1324
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1332
    :goto_1
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1333
    .local v5, "timeInt":[I
    aput v2, v5, v7

    .line 1334
    const/4 v6, 0x1

    aput v3, v5, v6

    goto :goto_0

    .line 1326
    .end local v5    # "timeInt":[I
    :cond_4
    add-int/lit8 v6, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method getImageIcon(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 441
    const-string v0, "kweather"

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    packed-switch p1, :pswitch_data_0

    .line 503
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    .line 822
    :goto_0
    return v0

    .line 444
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 447
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 452
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->checkDayOrNight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 455
    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 459
    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 461
    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 465
    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto :goto_0

    .line 469
    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto :goto_0

    .line 471
    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto :goto_0

    .line 477
    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 481
    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto :goto_0

    .line 487
    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto :goto_0

    .line 501
    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto :goto_0

    .line 505
    :cond_2
    const-string v0, "Cmaweather"

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 506
    const-string v0, "MiniViewWeatherHealthPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    packed-switch p1, :pswitch_data_1

    .line 569
    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 510
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->checkDayOrNightForChina()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto :goto_0

    .line 513
    :cond_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto :goto_0

    .line 516
    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto :goto_0

    .line 518
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->checkDayOrNightForChina()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto :goto_0

    .line 521
    :cond_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto :goto_0

    .line 526
    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto :goto_0

    .line 529
    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto :goto_0

    .line 535
    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto :goto_0

    .line 537
    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 539
    :pswitch_13
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto/16 :goto_0

    .line 543
    :pswitch_14
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 545
    :pswitch_15
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 549
    :pswitch_16
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 552
    :pswitch_17
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 554
    :pswitch_18
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 556
    :pswitch_19
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_20:I

    goto/16 :goto_0

    .line 560
    :pswitch_1a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_21:I

    goto/16 :goto_0

    .line 565
    :pswitch_1b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_22:I

    goto/16 :goto_0

    .line 567
    :pswitch_1c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 571
    :cond_5
    const-string v0, "weathernewsjp"

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    sparse-switch p1, :sswitch_data_0

    .line 758
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 581
    :sswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 595
    :sswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto/16 :goto_0

    .line 600
    :sswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto/16 :goto_0

    .line 614
    :sswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto/16 :goto_0

    .line 635
    :sswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 655
    :sswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 664
    :sswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 670
    :sswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 682
    :sswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 686
    :sswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 713
    :sswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 719
    :sswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 729
    :sswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 748
    :sswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 751
    :sswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 754
    :sswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto/16 :goto_0

    .line 761
    :cond_6
    packed-switch p1, :pswitch_data_2

    .line 822
    :pswitch_1d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 764
    :pswitch_1e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_01:I

    goto/16 :goto_0

    .line 768
    :pswitch_1f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_02:I

    goto/16 :goto_0

    .line 773
    :pswitch_20
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_03:I

    goto/16 :goto_0

    .line 775
    :pswitch_21
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_04:I

    goto/16 :goto_0

    .line 780
    :pswitch_22
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_05:I

    goto/16 :goto_0

    .line 782
    :pswitch_23
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_06:I

    goto/16 :goto_0

    .line 786
    :pswitch_24
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_07:I

    goto/16 :goto_0

    .line 789
    :pswitch_25
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_08:I

    goto/16 :goto_0

    .line 791
    :pswitch_26
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_09:I

    goto/16 :goto_0

    .line 794
    :pswitch_27
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_10:I

    goto/16 :goto_0

    .line 797
    :pswitch_28
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_11:I

    goto/16 :goto_0

    .line 801
    :pswitch_29
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_12:I

    goto/16 :goto_0

    .line 803
    :pswitch_2a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_13:I

    goto/16 :goto_0

    .line 807
    :pswitch_2b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_14:I

    goto/16 :goto_0

    .line 809
    :pswitch_2c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_15:I

    goto/16 :goto_0

    .line 811
    :pswitch_2d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_16:I

    goto/16 :goto_0

    .line 813
    :pswitch_2e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_17:I

    goto/16 :goto_0

    .line 815
    :pswitch_2f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_18:I

    goto/16 :goto_0

    .line 820
    :pswitch_30
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_19:I

    goto/16 :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 508
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_12
        :pswitch_13
        :pswitch_19
        :pswitch_17
        :pswitch_f
        :pswitch_f
        :pswitch_1a
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_10
        :pswitch_17
        :pswitch_1b
        :pswitch_f
        :pswitch_1a
        :pswitch_1a
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_16
        :pswitch_16
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_10
    .end packed-switch

    .line 572
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_b
        0x69 -> :sswitch_b
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
        0x6c -> :sswitch_4
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_4
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
        0x73 -> :sswitch_c
        0x74 -> :sswitch_c
        0x75 -> :sswitch_c
        0x76 -> :sswitch_4
        0x77 -> :sswitch_4
        0x78 -> :sswitch_4
        0x79 -> :sswitch_4
        0x7a -> :sswitch_4
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_1
        0x8c -> :sswitch_4
        0xa0 -> :sswitch_b
        0xaa -> :sswitch_b
        0xb5 -> :sswitch_c
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
        0xcc -> :sswitch_a
        0xcd -> :sswitch_a
        0xce -> :sswitch_5
        0xcf -> :sswitch_5
        0xd0 -> :sswitch_5
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_1
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_5
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_a
        0xd8 -> :sswitch_a
        0xd9 -> :sswitch_a
        0xda -> :sswitch_5
        0xdb -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0xe2 -> :sswitch_5
        0xe3 -> :sswitch_5
        0xe4 -> :sswitch_a
        0xe5 -> :sswitch_a
        0xe6 -> :sswitch_a
        0xe7 -> :sswitch_2
        0xf0 -> :sswitch_5
        0xfa -> :sswitch_a
        0x104 -> :sswitch_a
        0x10e -> :sswitch_a
        0x119 -> :sswitch_a
        0x12c -> :sswitch_3
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_d
        0x130 -> :sswitch_3
        0x132 -> :sswitch_3
        0x134 -> :sswitch_3
        0x135 -> :sswitch_d
        0x137 -> :sswitch_6
        0x139 -> :sswitch_7
        0x13a -> :sswitch_d
        0x13b -> :sswitch_d
        0x13c -> :sswitch_6
        0x13d -> :sswitch_7
        0x140 -> :sswitch_6
        0x141 -> :sswitch_7
        0x142 -> :sswitch_d
        0x143 -> :sswitch_6
        0x144 -> :sswitch_6
        0x145 -> :sswitch_6
        0x146 -> :sswitch_d
        0x147 -> :sswitch_d
        0x148 -> :sswitch_3
        0x149 -> :sswitch_3
        0x154 -> :sswitch_a
        0x15e -> :sswitch_3
        0x169 -> :sswitch_c
        0x173 -> :sswitch_a
        0x190 -> :sswitch_a
        0x191 -> :sswitch_c
        0x192 -> :sswitch_a
        0x193 -> :sswitch_d
        0x195 -> :sswitch_a
        0x196 -> :sswitch_a
        0x197 -> :sswitch_a
        0x199 -> :sswitch_d
        0x19b -> :sswitch_c
        0x19d -> :sswitch_a
        0x19e -> :sswitch_d
        0x1a4 -> :sswitch_c
        0x1a5 -> :sswitch_a
        0x1a6 -> :sswitch_d
        0x1a7 -> :sswitch_d
        0x1a8 -> :sswitch_d
        0x1a9 -> :sswitch_a
        0x1aa -> :sswitch_a
        0x1ab -> :sswitch_a
        0x1ae -> :sswitch_e
        0x1c2 -> :sswitch_a
        0x1f4 -> :sswitch_0
        0x226 -> :sswitch_f
        0x228 -> :sswitch_1
        0x229 -> :sswitch_8
        0x22e -> :sswitch_8
        0x232 -> :sswitch_1
        0x233 -> :sswitch_8
        0x238 -> :sswitch_8
        0x23c -> :sswitch_1
        0x23d -> :sswitch_8
        0x246 -> :sswitch_1
        0x247 -> :sswitch_8
        0x258 -> :sswitch_0
        0x352 -> :sswitch_3
        0x353 -> :sswitch_8
        0x355 -> :sswitch_3
        0x356 -> :sswitch_d
        0x357 -> :sswitch_8
        0x35d -> :sswitch_8
        0x35f -> :sswitch_3
        0x360 -> :sswitch_d
        0x361 -> :sswitch_8
        0x367 -> :sswitch_9
        0x369 -> :sswitch_3
        0x36a -> :sswitch_d
        0x371 -> :sswitch_9
        0x373 -> :sswitch_3
        0x374 -> :sswitch_d
    .end sparse-switch

    .line 761
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_29
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_1d
        :pswitch_1d
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_20
        :pswitch_22
        :pswitch_22
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_29
    .end packed-switch
.end method

.method public getLowTemperature()F
    .locals 9

    .prologue
    .line 1154
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1155
    .local v8, "mLowTemperature":Ljava/lang/Float;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1156
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1181
    :cond_0
    :goto_0
    return v1

    .line 1159
    :cond_1
    const/4 v6, 0x0

    .line 1161
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1163
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 1164
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_LOW_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1167
    if-eqz v6, :cond_2

    .line 1168
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1176
    :cond_2
    if-eqz v6, :cond_3

    .line 1177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1181
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v7

    .line 1174
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1176
    if-eqz v6, :cond_0

    .line 1177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1176
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getPageState()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    return v0
.end method

.method public getTemperature()F
    .locals 9

    .prologue
    .line 952
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 953
    .local v8, "mTemperature":Ljava/lang/Float;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 954
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 979
    :cond_0
    :goto_0
    return v1

    .line 957
    :cond_1
    const/4 v6, 0x0

    .line 959
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 961
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_TEMP"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 965
    if-eqz v6, :cond_2

    .line 966
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 967
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 974
    :cond_2
    if-eqz v6, :cond_3

    .line 975
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 979
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 971
    :catch_0
    move-exception v7

    .line 972
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 974
    if-eqz v6, :cond_0

    .line 975
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 974
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 975
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getTemperatureScale()I
    .locals 10

    .prologue
    .line 1093
    const/4 v8, 0x0

    .line 1094
    .local v8, "mTemperatureScale":I
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    move v9, v8

    .line 1119
    .end local v8    # "mTemperatureScale":I
    .local v9, "mTemperatureScale":I
    :goto_0
    return v9

    .line 1098
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :cond_0
    const/4 v6, 0x0

    .line 1100
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1102
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 1103
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1106
    if-eqz v6, :cond_1

    .line 1107
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1115
    :cond_1
    if-eqz v6, :cond_2

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 1119
    .end local v8    # "mTemperatureScale":I
    .restart local v9    # "mTemperatureScale":I
    goto :goto_0

    .line 1112
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :catch_0
    move-exception v7

    .line 1115
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .end local v8    # "mTemperatureScale":I
    .restart local v9    # "mTemperatureScale":I
    goto :goto_0

    .line 1115
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mTemperatureScale":I
    .restart local v8    # "mTemperatureScale":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getWeatherIconNum()I
    .locals 10

    .prologue
    .line 828
    const/4 v8, 0x0

    .line 829
    .local v8, "iconNum":I
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    move v9, v8

    .line 858
    .end local v8    # "iconNum":I
    .local v9, "iconNum":I
    :goto_0
    return v9

    .line 833
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :cond_0
    const/4 v6, 0x0

    .line 835
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 838
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WEATHER_ICON_NUM"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 843
    if-eqz v6, :cond_1

    .line 844
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 852
    :cond_1
    if-eqz v6, :cond_2

    .line 853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 858
    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 849
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catch_0
    move-exception v7

    .line 852
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 852
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getWeatherImage()I
    .locals 10

    .prologue
    .line 409
    const/4 v8, 0x0

    .line 410
    .local v8, "iconNum":I
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    move v9, v8

    .line 437
    .end local v8    # "iconNum":I
    .local v9, "iconNum":I
    :goto_0
    return v9

    .line 414
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :cond_0
    const/4 v6, 0x0

    .line 416
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TODAY_ICON_NUM"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 423
    if-eqz v6, :cond_1

    .line 424
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 432
    :cond_1
    if-eqz v6, :cond_2

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    .line 437
    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 429
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catch_0
    move-exception v7

    .line 432
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    .end local v8    # "iconNum":I
    .restart local v9    # "iconNum":I
    goto :goto_0

    .line 432
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "iconNum":I
    .restart local v8    # "iconNum":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public getWeatherInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "KeyString"    # Ljava/lang/String;

    .prologue
    .line 1204
    const-string v8, ""

    .line 1205
    .local v8, "mRetString":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    move-object v9, v8

    .line 1231
    .end local v8    # "mRetString":Ljava/lang/String;
    .local v9, "mRetString":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 1210
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1212
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1214
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1215
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1218
    if-eqz v6, :cond_1

    .line 1219
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1227
    :cond_1
    if-eqz v6, :cond_2

    .line 1228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 1231
    .end local v8    # "mRetString":Ljava/lang/String;
    .restart local v9    # "mRetString":Ljava/lang/String;
    goto :goto_0

    .line 1224
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1227
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 1228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v8

    .end local v8    # "mRetString":Ljava/lang/String;
    .restart local v9    # "mRetString":Ljava/lang/String;
    goto :goto_0

    .line 1227
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "mRetString":Ljava/lang/String;
    .restart local v8    # "mRetString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public isChinaLocation(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1055
    const-string v6, ""

    .line 1056
    .local v6, "cityname":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1057
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "isChinaLocation: context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 1089
    :goto_0
    return v1

    .line 1061
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1063
    .local v0, "cp":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1065
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->WEATHERINFO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "STATE"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1068
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    if-eqz v7, :cond_1

    .line 1070
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1077
    :cond_1
    if-eqz v7, :cond_2

    .line 1078
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1081
    :cond_2
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityname :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    if-eqz v6, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    move v1, v9

    .line 1084
    goto :goto_0

    .line 1074
    :catch_0
    move-exception v8

    .line 1077
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_4

    .line 1078
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v9

    goto :goto_0

    .line 1077
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 1078
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 1086
    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->china_country_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v10

    .line 1087
    goto/16 :goto_0

    :cond_7
    move v1, v9

    .line 1089
    goto/16 :goto_0
.end method

.method public isDay(Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "sunrise"    # Ljava/lang/String;
    .param p3, "sunset"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "cal":Ljava/util/Calendar;
    if-eqz p1, :cond_2

    .line 1237
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1242
    :goto_0
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1243
    .local v2, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1244
    .local v3, "minute":I
    invoke-virtual {p0, p2, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->parseSunrise(Ljava/lang/String;Ljava/util/Calendar;)[I

    move-result-object v1

    .line 1245
    .local v1, "dayTime":[I
    invoke-virtual {p0, p3, v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->parseSunSet(Ljava/lang/String;Ljava/util/Calendar;)[I

    move-result-object v4

    .line 1246
    .local v4, "nightTime":[I
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 1247
    aget v7, v1, v5

    if-gt v2, v7, :cond_0

    aget v7, v1, v5

    if-ne v2, v7, :cond_1

    aget v7, v1, v6

    if-lt v3, v7, :cond_1

    .line 1248
    :cond_0
    aget v7, v4, v5

    if-gt v2, v7, :cond_1

    aget v7, v4, v5

    if-ne v2, v7, :cond_3

    aget v7, v4, v6

    if-lt v3, v7, :cond_3

    .line 1255
    :cond_1
    :goto_1
    return v5

    .line 1239
    .end local v1    # "dayTime":[I
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    .end local v4    # "nightTime":[I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .restart local v1    # "dayTime":[I
    .restart local v2    # "hour":I
    .restart local v3    # "minute":I
    .restart local v4    # "nightTime":[I
    :cond_3
    move v5, v6

    .line 1251
    goto :goto_1
.end method

.method public isWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    .local v8, "result":I
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return v10

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 233
    const/4 v6, 0x0

    .line 235
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->ACCU_SETTING_URI:Landroid/net/Uri;

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

    .line 238
    if-eqz v6, :cond_1

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 255
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    if-eqz v8, :cond_4

    move v1, v9

    :goto_3
    move v10, v1

    goto :goto_0

    .line 242
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 243
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 248
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/IllegalArgumentException;
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

    .line 250
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    if-eqz v6, :cond_2

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 251
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 252
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
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

    .line 253
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    if-eqz v6, :cond_2

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 255
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    move v1, v10

    .line 260
    goto :goto_3
.end method

.method public needAddOrDeletePage()Z
    .locals 4

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherHealthState()Z

    move-result v0

    .line 269
    .local v0, "currentState":Z
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

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    if-eq v1, v0, :cond_0

    .line 272
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bPageState:Z

    .line 273
    const/4 v1, 0x1

    .line 275
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 178
    const-string v0, "MiniViewWeatherHealthPage"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->initWeather()V

    .line 180
    return-void
.end method

.method public parseSunSet(Ljava/lang/String;Ljava/util/Calendar;)[I
    .locals 7
    .param p1, "sunset"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v6, 0x15

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1283
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1284
    .local v0, "month":I
    const/4 v1, 0x0

    .line 1285
    .local v1, "nightTime":[I
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v1

    .line 1286
    if-eqz v1, :cond_2

    .line 1288
    aget v2, v1, v4

    if-ge v2, v6, :cond_0

    aget v2, v1, v4

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 1289
    :cond_0
    aput v6, v1, v4

    .line 1290
    aput v4, v1, v5

    .line 1302
    :cond_1
    :goto_0
    return-object v1

    .line 1293
    :cond_2
    new-array v1, v3, [I

    .line 1294
    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 1295
    const/16 v2, 0x13

    aput v2, v1, v4

    .line 1299
    :goto_1
    aput v4, v1, v5

    goto :goto_0

    .line 1297
    :cond_3
    const/16 v2, 0x12

    aput v2, v1, v4

    goto :goto_1
.end method

.method public parseSunrise(Ljava/lang/String;Ljava/util/Calendar;)[I
    .locals 7
    .param p1, "sunrise"    # Ljava/lang/String;
    .param p2, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1260
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1261
    .local v1, "month":I
    const/4 v0, 0x0

    .line 1262
    .local v0, "dayTime":[I
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getHourAndMin(Ljava/lang/String;)[I

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_2

    .line 1265
    aget v2, v0, v4

    if-lt v2, v6, :cond_0

    aget v2, v0, v4

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1266
    :cond_0
    aput v6, v0, v4

    .line 1267
    aput v4, v0, v5

    .line 1278
    :cond_1
    :goto_0
    return-object v0

    .line 1270
    :cond_2
    new-array v0, v3, [I

    .line 1271
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 1272
    const/4 v2, 0x6

    aput v2, v0, v4

    .line 1276
    :goto_1
    aput v4, v0, v5

    goto :goto_0

    .line 1274
    :cond_3
    const/4 v2, 0x7

    aput v2, v0, v4

    goto :goto_1
.end method

.method public updateWeatherHealthVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visibleWeatherHealthPage weather state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "| health state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    if-nez v1, :cond_1

    .line 282
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "Don\'t need visibleWeatherHealthPage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 285
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v0

    .line 286
    .local v0, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v1, "shealth"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    .line 287
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 289
    :cond_2
    const-string v1, "MiniViewWeatherHealthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWeatherHealthVisibility health visibility by remoteViewInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniHealth:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->bMiniWeather:Z

    if-nez v1, :cond_5

    .line 299
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "Hide weather display"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPadding(IIII)V

    goto :goto_0

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_3

    .line 293
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "updateWeatherHealthVisibility Hide Shealth remoteView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_1

    .line 304
    :cond_5
    const-string v1, "MiniViewWeatherHealthPage"

    const-string v2, "Show weather display"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    if-eqz v1, :cond_6

    .line 307
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$dimen;->mini_cover_shealth_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPadding(IIII)V

    .line 311
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherInfoSec()V

    goto/16 :goto_0
.end method

.method public updateWeatherInfoSec()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getCityId()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "cityId":Ljava/lang/String;
    const-string v10, "MiniViewWeatherHealthPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWeatherInfoSec cityId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz v0, :cond_9

    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 320
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTemp:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnit:Landroid/widget/ImageView;

    if-eqz v10, :cond_2

    .line 321
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->isChinaLocation(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getHighTemperature()F

    move-result v3

    .line 325
    .local v3, "highTemp":F
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getLowTemperature()F

    move-result v6

    .line 326
    .local v6, "lowTemp":F
    invoke-direct {p0, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getValidTemp(F)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "highTempString":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getValidTemp(F)Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "lowTempString":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempHigh:Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 333
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempHigh:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getTemperatureScale()I

    move-result v8

    .line 336
    .local v8, "tempScale":I
    const-string v9, ""

    .line 337
    .local v9, "unit":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 339
    const-string v10, "MiniViewWeatherHealthPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cityId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " highTemp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tempScale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v8    # "tempScale":I
    .end local v9    # "unit":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempLow:Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 344
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mDivider:Landroid/widget/ImageView;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_slash:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTempLow:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getTemperatureScale()I

    move-result v8

    .line 348
    .restart local v8    # "tempScale":I
    const-string v9, ""

    .line 349
    .restart local v9    # "unit":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnitLow:Landroid/widget/ImageView;

    if-eqz v10, :cond_1

    .line 350
    if-nez v8, :cond_4

    .line 351
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnitLow:Landroid/widget/ImageView;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 364
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherContainerHighLow:Landroid/widget/LinearLayout;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    const-string v10, "MiniViewWeatherHealthPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cityId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " lowTemp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tempScale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v3    # "highTemp":F
    .end local v4    # "highTempString":Ljava/lang/String;
    .end local v6    # "lowTemp":F
    .end local v7    # "lowTempString":Ljava/lang/String;
    .end local v8    # "tempScale":I
    .end local v9    # "unit":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getWeatherIconNum()I

    move-result v5

    .line 400
    .local v5, "iconNum":I
    const-string v10, "MiniViewWeatherHealthPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mini iconNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getWeatherIconImage(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    .end local v5    # "iconNum":I
    :cond_3
    :goto_2
    return-void

    .line 357
    .restart local v3    # "highTemp":F
    .restart local v4    # "highTempString":Ljava/lang/String;
    .restart local v6    # "lowTemp":F
    .restart local v7    # "lowTempString":Ljava/lang/String;
    .restart local v8    # "tempScale":I
    .restart local v9    # "unit":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnitLow:Landroid/widget/ImageView;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 370
    .end local v3    # "highTemp":F
    .end local v4    # "highTempString":Ljava/lang/String;
    .end local v6    # "lowTemp":F
    .end local v7    # "lowTempString":Ljava/lang/String;
    .end local v8    # "tempScale":I
    .end local v9    # "unit":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getTemperature()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 371
    .local v1, "currentTemp":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "currentTempString":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getTemperature()F

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getValidTemp(F)Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_6
    const-string v10, "MiniViewWeatherHealthPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mini currentTempString = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTemp:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnit:Landroid/widget/ImageView;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 378
    const-string v9, ""

    .line 379
    .restart local v9    # "unit":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->getTemperatureScale()I

    move-result v8

    .line 380
    .restart local v8    # "tempScale":I
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnit:Landroid/widget/ImageView;

    if-eqz v10, :cond_7

    .line 381
    if-nez v8, :cond_8

    .line 382
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnit:Landroid/widget/ImageView;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 393
    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherTemp:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    const-string v10, "MiniViewWeatherHealthPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OPEN model cityId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " currentTempString="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tempScale="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 387
    :cond_8
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherUnit:Landroid/widget/ImageView;

    sget v11, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 404
    .end local v1    # "currentTemp":I
    .end local v2    # "currentTempString":Ljava/lang/String;
    .end local v8    # "tempScale":I
    .end local v9    # "unit":Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->mWeatherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method
