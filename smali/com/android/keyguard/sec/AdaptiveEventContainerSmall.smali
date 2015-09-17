.class public Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.super Landroid/widget/FrameLayout;
.source "AdaptiveEventContainerSmall.java"

# interfaces
.implements Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;


# static fields
.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field private static final LAYOUT_DIRECTION_TO_LTR:I = 0x0

.field private static final MARGIN_LEFT_RIGHT_CENTER_CONTAINER:I = 0xf

.field static final TAG:Ljava/lang/String; = "AdaptiveEventContainerSmall"

.field private static final TEST_WEATHER:Z = false

.field private static final UPDATE_EMERGENCY_MESSAGE:I = 0x132e

.field private static final UPDATE_PEDO_MESSAGE:I = 0x132f

.field private static final UPDATE_WEATHER_MESSAGE:I = 0x1330

.field private static final WEATHER_CURRENT_CITY_ID:Ljava/lang/String; = "cityId:current"

.field private static mIsPedoShowing:Z


# instance fields
.field private mAdaptiveInfoArea:Landroid/widget/LinearLayout;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mEmergencyContainer:Landroid/widget/LinearLayout;

.field private mPedContainer:Landroid/widget/LinearLayout;

.field private mSmallWeather:Landroid/view/View;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleEmergencyUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    .param p1, "x1"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    return-object v0
.end method

.method private getAdditionalInfoEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 666
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_info"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 595
    .local v0, "cpName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    :cond_0
    const-string v0, "Accuweather"

    .line 598
    :cond_1
    return-object v0
.end method

.method private getEmergencyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 671
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getKidsModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 675
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPedoEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 646
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_additional_steps"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPedoEnabledForPhone()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 652
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shealth_pedometer_view_step_count"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getShowInformation()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 661
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTemperatureUnit(I)I
    .locals 3
    .param p1, "scale"    # I

    .prologue
    .line 523
    const-string v1, "AdaptiveEventContainerSmall"

    const-string v2, "getWeatherTempUnit()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    packed-switch p1, :pswitch_data_0

    .line 531
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_c:I

    .line 534
    .local v0, "resource":I
    :goto_0
    return v0

    .line 527
    .end local v0    # "resource":I
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_f:I

    .line 528
    .restart local v0    # "resource":I
    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getTemperatureUnitText(I)Ljava/lang/String;
    .locals 4
    .param p1, "scale"    # I

    .prologue
    .line 538
    const-string v1, "AdaptiveEventContainerSmall"

    const-string v2, "getWeatherTempUnit()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    packed-switch p1, :pswitch_data_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temp_celsius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 542
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temp_fahrenheit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4
    .param p1, "temp"    # F

    .prologue
    .line 633
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "results":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    :cond_0
    const-string v1, "AdaptiveEventContainerSmall"

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

    .line 638
    const-string v0, "-"

    .line 641
    .end local v0    # "results":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getWeatherCityIconImageResources()I
    .locals 4

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "cityId":Ljava/lang/String;
    const-string v2, "cityId:current"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location:I

    .line 585
    .local v1, "resource":I
    :goto_0
    return v1

    .line 581
    .end local v1    # "resource":I
    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location_unable:I

    .restart local v1    # "resource":I
    goto :goto_0

    .line 583
    .end local v1    # "resource":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "resource":I
    goto :goto_0
.end method

.method private getWeatherEnabled()Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getWeatherTempUnitSmall(I)I
    .locals 3
    .param p1, "scale"    # I

    .prologue
    .line 555
    const-string v1, "AdaptiveEventContainerSmall"

    const-string v2, "getWeatherTempUnitSmall()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    packed-switch p1, :pswitch_data_0

    .line 563
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_s_c:I

    .line 566
    .local v0, "resource":I
    :goto_0
    return v0

    .line 559
    .end local v0    # "resource":I
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_s_f:I

    .line 560
    .restart local v0    # "resource":I
    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleEmergencyUpdate()V
    .locals 5

    .prologue
    .line 288
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "handleEmergencyUpdate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getEmergencyEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v0

    .line 290
    .local v0, "emergencyEvent":Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    if-nez v0, :cond_1

    .line 291
    const-string v3, "AdaptiveEventContainerSmall"

    const-string v4, "emergencyEvent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v2

    .line 297
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 299
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 303
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handlePedoUpdate()V
    .locals 14

    .prologue
    .line 308
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "handlePedoUpdate()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v9

    .line 310
    .local v9, "pedoEvent":Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;
    if-nez v9, :cond_1

    .line 311
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "pedoEvent == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v10

    .line 318
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_2

    .line 319
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "pedoEvent view == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_2
    if-eqz v10, :cond_0

    .line 325
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 326
    .local v8, "parent":Landroid/view/ViewGroup;
    if-eqz v8, :cond_3

    .line 327
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getShowInformation()Z

    move-result v6

    .line 332
    .local v6, "isShowInformation":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v4

    .line 333
    .local v4, "isPedoEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabledForPhone()Z

    move-result v5

    .line 334
    .local v5, "isPedoEnabledForPhone":Z
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    .line 335
    .local v2, "hasCocktailbar":Z
    const-string v11, "AdaptiveEventContainerSmall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handlePedoUpdate Show:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isPedoEnabled:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isPedoEnabledForPhone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    const/4 v11, 0x1

    :goto_1
    sput-boolean v11, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    .line 338
    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    sget-boolean v11, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 340
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 341
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 342
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 346
    const-string v11, "AdaptiveEventContainerSmall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    mPedoView= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v11, "AdaptiveEventContainerSmall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    view= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    .line 348
    check-cast v1, Landroid/view/ViewGroup;

    .line 349
    .local v1, "group":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 351
    .local v7, "nCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v7, :cond_0

    .line 352
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_4

    instance-of v11, v0, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    move-object v11, v0

    .line 354
    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 355
    const-string v12, "AdaptiveEventContainerSmall"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    string= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " textview= "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 336
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v7    # "nCount":I
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 338
    :cond_6
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 358
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v1    # "group":Landroid/view/ViewGroup;
    .restart local v3    # "i":I
    .restart local v7    # "nCount":I
    :cond_7
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "    string is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 24
    .param p1, "info"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    .line 368
    const-string v21, "AdaptiveEventContainerSmall"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleWeatherUpdate() : mSmallWeather= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 492
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_container:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 377
    .local v20, "weatherLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_icon:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 378
    .local v11, "icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_temp:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 379
    .local v15, "temp":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_unit:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 380
    .local v18, "unit":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_city_icon:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 381
    .local v7, "cityIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_city_name:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 383
    .local v8, "cityName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherIconImageResources(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 387
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->isChinaLocation(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v10

    .line 389
    .local v10, "highTemp":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v13

    .line 390
    .local v13, "lowTemp":F
    const-string v21, "AdaptiveEventContainerSmall"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleWeatherUpdate() outside [high, low] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_high_temp:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, "HighText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_temp:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 394
    .local v3, "LowText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_Separator:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 396
    .local v4, "SeparatorText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_unit:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 398
    .local v19, "unitLow":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "StrHigh":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, "StrLow":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int v14, v21, v22

    .line 404
    .local v14, "strLength":I
    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v14, v0, :cond_2

    .line 406
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 407
    .local v12, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 408
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    const/16 v21, 0x1

    const/high16 v22, 0x41d80000    # 27.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 410
    const/16 v21, 0x1

    const/high16 v22, 0x41d80000    # 27.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 411
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 412
    .restart local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 413
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    const/16 v21, 0x1

    const/high16 v22, 0x41d80000    # 27.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 422
    .end local v12    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 428
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 417
    :cond_2
    const/16 v21, 0x1

    const/high16 v22, 0x41f00000    # 30.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    const/16 v21, 0x1

    const/high16 v22, 0x41f00000    # 30.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 419
    const/16 v21, 0x1

    const/high16 v22, 0x41f00000    # 30.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 444
    .end local v2    # "HighText":Landroid/widget/TextView;
    .end local v3    # "LowText":Landroid/widget/TextView;
    .end local v4    # "SeparatorText":Landroid/widget/TextView;
    .end local v5    # "StrHigh":Ljava/lang/String;
    .end local v6    # "StrLow":Ljava/lang/String;
    .end local v10    # "highTemp":F
    .end local v13    # "lowTemp":F
    .end local v14    # "strLength":I
    .end local v19    # "unitLow":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 446
    .local v16, "tempInt":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "curLanguage":Ljava/lang/String;
    const-string v21, "ar"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    const-string v21, "fa"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 449
    :cond_4
    const-string v21, "AdaptiveEventContainerSmall"

    const-string v22, "Current language is Arabic"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v17

    .line 451
    .local v17, "tempText":Ljava/lang/String;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 461
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 465
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v10

    .line 467
    .restart local v10    # "highTemp":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v13

    .line 468
    .restart local v13    # "lowTemp":F
    const-string v21, "AdaptiveEventContainerSmall"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleWeatherUpdate() inside [high, low] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_high_temp:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 471
    .restart local v2    # "HighText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_temp:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 472
    .restart local v3    # "LowText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_Separator:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 474
    .restart local v4    # "SeparatorText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    sget v22, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_unit:I

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 477
    .restart local v19    # "unitLow":Landroid/widget/ImageView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    .end local v2    # "HighText":Landroid/widget/TextView;
    .end local v3    # "LowText":Landroid/widget/TextView;
    .end local v4    # "SeparatorText":Landroid/widget/TextView;
    .end local v10    # "highTemp":F
    .end local v13    # "lowTemp":F
    .end local v19    # "unitLow":Landroid/widget/ImageView;
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 453
    .end local v17    # "tempText":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tempText":Ljava/lang/String;
    goto/16 :goto_2

    .line 457
    .end local v17    # "tempText":Ljava/lang/String;
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tempText":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private inflateWeatherView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_adaptive_weather_small:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const-string v1, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/view/View;)V

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    .line 512
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void
.end method

.method private init()V
    .locals 14

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getAdditionalInfoEnabled()Z

    move-result v3

    .line 114
    .local v3, "isAdditionalInfoEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getEmergencyModeEnabled()Z

    move-result v4

    .line 115
    .local v4, "isEmergencyModeEnabled":Z
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getKidsModeEnabled()Z

    move-result v5

    .line 117
    .local v5, "isKidsMode":Z
    const-string v11, "AdaptiveEventContainerSmall"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isAdditionalInfoEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isEmergencyModeEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isKidsMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v3, :cond_e

    if-nez v4, :cond_e

    if-nez v5, :cond_e

    .line 121
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getShowInformation()Z

    move-result v6

    .line 122
    .local v6, "isShowInformation":Z
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    .line 124
    .local v2, "hasCocktailbar":Z
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_a

    .line 125
    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    const/4 v8, 0x0

    .line 126
    .local v8, "needToShowWeather":Z
    :goto_0
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTrusted()Z

    move-result v7

    .line 128
    .local v7, "isTrustInfo":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 129
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v8, 0x1

    .line 136
    :goto_1
    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_9

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    if-eqz v8, :cond_1

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v11, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->inflateWeatherView()V

    .line 145
    .end local v7    # "isTrustInfo":Z
    .end local v8    # "needToShowWeather":Z
    :cond_1
    :goto_3
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_d

    .line 146
    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabledForPhone()Z

    move-result v11

    if-eqz v11, :cond_b

    if-nez v2, :cond_b

    const/4 v11, 0x1

    :goto_4
    sput-boolean v11, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    .line 147
    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerExist()Z

    move-result v11

    if-eqz v11, :cond_c

    sget-boolean v11, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    sget-boolean v11, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v11, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    .line 155
    :cond_2
    :goto_6
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 157
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    .end local v2    # "hasCocktailbar":Z
    .end local v6    # "isShowInformation":Z
    :goto_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v1, v11, Landroid/util/DisplayMetrics;->density:F

    .line 181
    .local v1, "density":F
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 183
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 184
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .local v0, "aclp":Landroid/widget/FrameLayout$LayoutParams;
    float-to-int v11, v1

    mul-int/lit8 v11, v11, 0xf

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 186
    float-to-int v11, v1

    mul-int/lit8 v11, v11, 0xf

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 187
    const/4 v11, -0x1

    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 188
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .local v10, "weatherlp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 191
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 192
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .local v9, "pedolp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 195
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 196
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0    # "aclp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "density":F
    .end local v9    # "pedolp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "weatherlp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void

    .line 125
    .restart local v2    # "hasCocktailbar":Z
    .restart local v6    # "isShowInformation":Z
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 129
    .restart local v7    # "isTrustInfo":Z
    .restart local v8    # "needToShowWeather":Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 132
    :cond_6
    if-eqz v8, :cond_8

    if-nez v7, :cond_7

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    const/4 v8, 0x1

    :goto_8
    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    .line 136
    :cond_9
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 141
    .end local v7    # "isTrustInfo":Z
    .end local v8    # "needToShowWeather":Z
    :cond_a
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "mWeatherView == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 146
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 147
    :cond_c
    const/16 v11, 0x8

    goto/16 :goto_5

    .line 153
    :cond_d
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "mPedoView == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 159
    .end local v2    # "hasCocktailbar":Z
    .end local v6    # "isShowInformation":Z
    :cond_e
    const-string v11, "AdaptiveEventContainerSmall"

    const-string v12, "mAdaptiveInfoArea.setVisibility(View.GONE);"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_f

    .line 162
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    .line 163
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    :cond_f
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_10

    .line 166
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 169
    :cond_10
    if-eqz v4, :cond_11

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    .line 171
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 173
    :cond_11
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_7
.end method

.method private setContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    return-void
.end method


# virtual methods
.method public getWeatherIconImageResources(I)I
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 570
    const-string v0, "AdaptiveEventContainerSmall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherIconImageResources(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;->getImage(I)I

    move-result v0

    return v0
.end method

.method public isChinaLocation(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setContentObservers()V

    .line 205
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 102
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget v0, Lcom/android/keyguard/R$id;->adaptive_info_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    .line 105
    sget v0, Lcom/android/keyguard/R$id;->weather_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/android/keyguard/R$id;->ped_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    .line 107
    sget v0, Lcom/android/keyguard/R$id;->emergency_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mEmergencyContainer:Landroid/widget/LinearLayout;

    .line 109
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    .line 110
    return-void
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # I

    .prologue
    .line 616
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 617
    .local v3, "lengthSize":I
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 618
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-lez v3, :cond_0

    .line 622
    const-string v2, ""

    .line 623
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

    .line 624
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .end local v2    # "formatter":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 626
    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateAdaptiveContainer(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 233
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateEmergencyContainer()V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateContainer(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateAdaptiveContainer(I)V

    .line 268
    return-void
.end method

.method protected updateEmergencyContainer()V
    .locals 3

    .prologue
    const/16 v2, 0x132e

    .line 223
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updateEmergencyContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    return-void
.end method

.method protected updatePedoContainer()V
    .locals 3

    .prologue
    const/16 v2, 0x132f

    .line 215
    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updatePedoContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    return-void
.end method

.method public updateWeatherContainerVisible()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    .line 263
    return-void
.end method

.method public updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    .prologue
    const/16 v2, 0x1330

    .line 246
    if-nez p1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
