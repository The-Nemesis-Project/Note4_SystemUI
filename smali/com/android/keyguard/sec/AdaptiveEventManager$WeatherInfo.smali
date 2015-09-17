.class public Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
.super Ljava/lang/Object;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WeatherInfo"
.end annotation


# instance fields
.field private final WEATHER_INFO_TRUSTED:I

.field private currentCityId:Ljava/lang/String;

.field private currentCityName:Ljava/lang/String;

.field private currentTemperature:F

.field private highTemperature:F

.field private iconNumber:I

.field private isChangedShowOption:Z

.field private lowTemperature:F

.field private showLockAndCover:I

.field private tempScale:I

.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

.field private trusted:Z


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 451
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->WEATHER_INFO_TRUSTED:I

    .line 452
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    .line 453
    iput v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    .line 454
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    .line 455
    iput-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    .line 456
    iput-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityName:Ljava/lang/String;

    .line 457
    iput v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->highTemperature:F

    .line 458
    iput v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->lowTemperature:F

    .line 459
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    .line 460
    iput v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->showLockAndCover:I

    .line 461
    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->isChangedShowOption:Z

    .line 462
    return-void
.end method


# virtual methods
.method protected dump()V
    .locals 3

    .prologue
    .line 556
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityName:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->highTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    return v0
.end method

.method protected getIsChangedShowOption()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->isChangedShowOption:Z

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->lowTemperature:F

    return v0
.end method

.method protected getShowLockAndCover()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->showLockAndCover:I

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    return v0
.end method

.method protected getTrusted()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    .line 494
    return-void
.end method

.method protected setCurrentCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityName:Ljava/lang/String;

    .line 502
    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 477
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentTemperature:F

    .line 478
    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 509
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->highTemperature:F

    .line 510
    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->iconNumber:I

    .line 470
    return-void
.end method

.method protected setIsChangedShowOption(Z)V
    .locals 0
    .param p1, "ischanged"    # Z

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->isChangedShowOption:Z

    .line 553
    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 517
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->lowTemperature:F

    .line 518
    return-void
.end method

.method protected setShowLockAndCover(I)V
    .locals 0
    .param p1, "show"    # I

    .prologue
    .line 544
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->showLockAndCover:I

    .line 545
    return-void
.end method

.method protected setTempScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->tempScale:I

    .line 486
    return-void
.end method

.method protected setTrusted(I)V
    .locals 3
    .param p1, "errCode"    # I

    .prologue
    const/16 v2, 0xc8

    .line 525
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    .line 527
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork State is Fine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & currentCityId is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->trusted:Z

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->currentCityId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 531
    const-string v0, "AdaptiveEventManager"

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    if-eq p1, v2, :cond_0

    .line 534
    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weather info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
