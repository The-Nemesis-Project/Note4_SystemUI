.class public Lcom/sec/android/cover/custom/MontblancCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "MontblancCoverController.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private updateMonitorCallbacks:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "MontblancCoverController"

    iput-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/sec/android/cover/custom/MontblancCoverController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/custom/MontblancCoverController$1;-><init>(Lcom/sec/android/cover/custom/MontblancCoverController;)V

    iput-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->updateMonitorCallbacks:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 40
    iput-object p1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/custom/MontblancCoverController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/custom/MontblancCoverController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/custom/MontblancCoverController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/custom/MontblancCoverController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFirstAttachValue()I
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "s_view_cover_montblanc_first_attached"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private sendPopupEventBoardCast()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.popupuireceiver.action.montblanc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 58
    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    const-string v2, "show montblanc download popup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method private sendWallapaperBoardCast(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cover.notification.MontblancCover.firstAttached"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isAttached"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastAsUser isAttached : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    const-string v1, "onCoverAttached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.montblanc"

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/sec/android/cover/custom/MontblancCoverController;->sendPopupEventBoardCast()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->updateMonitorCallbacks:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 52
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 53
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    const-string v1, "onCoverDetatched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->updateMonitorCallbacks:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 66
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 67
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v4, 0x1

    .line 85
    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverEvent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/cover/custom/MontblancCoverController;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/sec/android/cover/custom/MontblancCoverController;->getFirstAttachValue()I

    move-result v0

    .line 88
    .local v0, "isSetWallpaer":I
    if-eq v0, v4, :cond_0

    .line 89
    invoke-direct {p0, v4}, Lcom/sec/android/cover/custom/MontblancCoverController;->sendWallapaperBoardCast(Z)V

    .line 92
    .end local v0    # "isSetWallpaer":I
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/cover/custom/MontblancCoverController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 95
    return-void
.end method
