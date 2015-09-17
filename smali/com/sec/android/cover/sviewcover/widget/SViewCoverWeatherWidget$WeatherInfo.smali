.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;
.super Ljava/lang/Object;
.source "SViewCoverWeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WeatherInfo"
.end annotation


# instance fields
.field private final WEATHER_INFO_TRUSTED:I

.field private mCurrentCityId:Ljava/lang/String;

.field private mCurrentTemperature:F

.field private mHighTemperature:F

.field private mIconNumber:I

.field private mLowTemperature:F

.field private mTempScale:I

.field private mTrusted:Z

.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;


# direct methods
.method protected constructor <init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->WEATHER_INFO_TRUSTED:I

    .line 166
    iput v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    .line 167
    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    .line 170
    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    .line 171
    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    .line 172
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    .line 173
    return-void
.end method


# virtual methods
.method protected dump()V
    .locals 3

    .prologue
    .line 245
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cityId, highTemp, lowTemp] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    return v0
.end method

.method protected isTrusted()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 188
    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    .line 189
    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 212
    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    .line 213
    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    .line 181
    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 220
    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    .line 221
    return-void
.end method

.method protected setTempScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    .line 197
    return-void
.end method

.method protected setTrusted(I)V
    .locals 3
    .param p1, "errCode"    # I

    .prologue
    const/16 v2, 0xc8

    .line 228
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    .line 231
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

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

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    .line 235
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 236
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_2
    if-eq p1, v2, :cond_0

    .line 239
    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weath info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
