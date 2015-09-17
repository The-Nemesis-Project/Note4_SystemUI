.class public Lcom/sec/android/sviewcover/SViewCoverBase;
.super Ljava/lang/Object;
.source "SViewCoverBase.java"


# static fields
.field protected static final ENABLE_NOTIFICATION_LISTENER:Ljava/lang/String; = "com.sec.android.sviewcover/com.sec.android.cover.notification.ImNotiListenerService"

.field protected static final MSG_UPDATE_COVERSTATE:I = 0x2711

.field public static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "/cover_wallpaper.jpg"

.field public static mTestModeEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverController:Lcom/sec/android/cover/BaseCoverController;

.field private mHandler:Landroid/os/Handler;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/sviewcover/SViewCoverBase;->mTestModeEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverBase$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "SViewCoverBase is not allow default constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverBase$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    .line 148
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mRootView:Landroid/widget/FrameLayout;

    .line 155
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .line 156
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 157
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    .line 158
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    .line 159
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/sviewcover/SViewCoverBase;)Lcom/sec/android/cover/BaseCoverController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/SViewCoverBase;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;
    .param p1, "x1"    # Lcom/sec/android/cover/BaseCoverController;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverBase;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverBase;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public injectCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 193
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover BaseService injectCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "msgStateUpdate":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy : The cover service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->onDestroy()V

    .line 171
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy : Killing SViewCover process..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 173
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 177
    sget-boolean v1, Lcom/sec/android/sviewcover/SViewCoverBase;->mTestModeEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover BaseService updateCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "msgStateUpdate":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
