.class Lcom/android/systemui/qs/tiles/WifiTile$2;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 343
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "noSim"    # Z
    .param p10, "isDataTypeIconWide"    # Z

    .prologue
    .line 333
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 300
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWifiSignalChanged enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabledDesc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    .line 302
    .local v0, "info":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 303
    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 304
    iput p3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 305
    iput-object p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 306
    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 307
    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 308
    iput-object p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, p7}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1002(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1002(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1002(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v5, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z

    .line 319
    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    if-nez v2, :cond_5

    move v1, v3

    .line 320
    .local v1, "wifiNotConnected":Z
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 321
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    .line 323
    :cond_3
    return-void

    .end local v1    # "wifiNotConnected":Z
    :cond_4
    move v2, v4

    .line 318
    goto :goto_0

    :cond_5
    move v1, v4

    .line 319
    goto :goto_1
.end method
