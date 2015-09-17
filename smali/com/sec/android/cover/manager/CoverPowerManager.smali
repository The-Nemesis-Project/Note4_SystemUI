.class public Lcom/sec/android/cover/manager/CoverPowerManager;
.super Ljava/lang/Object;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_SCREEN_DIM_DURATION:I = 0x0

.field public static final DEFAULT_SCREEN_OFF_DURATION:I = 0x1770

.field public static final DEFAULT_SCREEN_OFF_DURATION_ON_POWER_SAVING_MODE:I = 0xbb8

.field private static final MSG_SCREEN_OFF:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoverPowerManager"

.field private static instance:Lcom/sec/android/cover/manager/CoverPowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPMS:Landroid/os/PowerManager;

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mTimeOutDuration:I

.field private mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v1, 0x1770

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    .line 35
    new-instance v1, Lcom/sec/android/cover/manager/CoverPowerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/manager/CoverPowerManager$1;-><init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    .line 58
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v2, "create CoverPowerManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    .line 61
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    .line 63
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const-string v2, "SViewCoverBaseService.mCoverStateWakeLock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 65
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "powersavingState":I
    if-ne v0, v4, :cond_0

    .line 70
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/manager/CoverPowerManager;)Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/manager/CoverPowerManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "CoverPowerManager"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 137
    :cond_0
    return-void
.end method

.method public cancelScreenOffTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    const-string v0, "CoverPowerManager"

    const-string v1, "cancelScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public getCurrentBrightness()F
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "current_brightness":F
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    .line 152
    const-string v1, "CoverPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v0
.end method

.method public goToSleep()V
    .locals 4

    .prologue
    .line 129
    const-string v0, "CoverPowerManager"

    const-string v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 131
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "CoverPowerManager"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 143
    :cond_0
    return-void
.end method

.method public resetScreenOffTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    const-string v0, "CoverPowerManager"

    const-string v1, "resetScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    return-void
.end method

.method public setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .prologue
    .line 75
    const-string v0, "CoverPowerManager"

    const-string v1, "setTimerExpireHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 78
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 81
    :cond_0
    return-void
.end method

.method public setmTimeOutDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    .line 147
    return-void
.end method

.method public startScreenOffTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 84
    const-string v0, "CoverPowerManager"

    const-string v1, "startScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mScreenOffHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 115
    const-string v0, "CoverPowerManager"

    const-string v1, "userActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 117
    return-void
.end method

.method public wakeUp()V
    .locals 4

    .prologue
    .line 124
    const-string v0, "CoverPowerManager"

    const-string v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 126
    return-void
.end method
