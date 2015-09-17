.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I = 0xbb8

.field private static final AWAKE_INTERVAL_DEFAULT_MS_WITH_SMART_STAY:I = 0x1388

.field protected static final AWAKE_INTERVAL_DEFAULT_MS_WITH_TMO:I = 0x1770

.field private static final MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I = 0x64


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mStatusBarView:Landroid/view/View;

.field private mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .line 350
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->startObservingUserActivityTimeout()V

    .line 65
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->handleUserActivityTimeoutChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const/4 v2, 0x1

    .line 126
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mKeyguardScreenRotation:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 136
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 140
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 204
    .local v0, "useFullScreen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 207
    :cond_1
    return-void

    .end local v0    # "useFullScreen":Z
    :cond_2
    move v0, v1

    .line 201
    goto :goto_0

    .restart local v0    # "useFullScreen":Z
    :cond_3
    move v2, v1

    .line 205
    goto :goto_1
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const v3, -0x20001

    .line 143
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 154
    :goto_0
    const-string v1, "StatusBar-Window"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fnf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sanc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", kni="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sbf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_4

    .line 161
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : Focusable for SViewCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : SAMSUNG_FLAG_SVIEW_COVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 177
    :goto_2
    return-void

    .line 147
    :cond_0
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    if-eqz v0, :cond_2

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    .line 154
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 167
    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v0, :cond_5

    .line 168
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : Remove Focusable for AppCover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 173
    :cond_5
    const-string v0, "CoverUI"

    const-string v1, "applyFocusableFlag() : Remove SAMSUNG_FLAG_SVIEW_COVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_2
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const/4 v3, -0x1

    .line 180
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    if-eqz v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 182
    .local v0, "expanded":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 188
    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v1, :cond_2

    .line 189
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-eqz v1, :cond_5

    .line 190
    const-string v1, "CoverUI"

    const-string v2, "applyHeight : mBarHeight"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 198
    :cond_2
    :goto_2
    return-void

    .line 180
    .end local v0    # "expanded":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    .restart local v0    # "expanded":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 193
    :cond_5
    const-string v1, "CoverUI"

    const-string v2, "applyHeight : MATCH_PARENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 230
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const v2, -0x100001

    .line 106
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 114
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->isDisableStatusBarTransparent:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 210
    # invokes: Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 222
    :goto_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, 0x1770

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput-wide v4, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 227
    :cond_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_0
.end method

.method private handleUserActivityTimeoutChanged()V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 434
    :cond_0
    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startObservingUserActivityTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLowLevel"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_auto_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mUserActivityTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->getUserActivityTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 390
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 6
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 84
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    .line 100
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mBarHeight:I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mStatusBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method public getUserActivityTimeout()J
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 393
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_5

    move v6, v7

    .line 395
    .local v6, "isSmartStayOn":Z
    :goto_0
    const/4 v4, 0x0

    .line 397
    .local v4, "isPowerSavingMode":Z
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "powersaving_switch"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_6

    move v4, v7

    .line 402
    :goto_1
    if-nez v4, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ultra_powersaving_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v7, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_7

    :cond_0
    move v5, v7

    .line 406
    .local v5, "isPowerSavingOn":Z
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    .line 407
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "isLowLevel"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_8

    move v3, v7

    .line 408
    .local v3, "isLowLevel":Z
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "psm_auto_turn_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_9

    move v2, v7

    .line 410
    .local v2, "isAutoEnable":Z
    :goto_4
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 411
    const/4 v5, 0x0

    .line 415
    .end local v2    # "isAutoEnable":Z
    .end local v3    # "isLowLevel":Z
    :cond_1
    const-wide/16 v0, 0x2710

    .line 417
    .local v0, "displayTimeout":J
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTMOModel()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 418
    const-wide/16 v0, 0x1770

    .line 421
    :cond_2
    if-ne v6, v7, :cond_3

    const-wide/16 v8, 0x1388

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 423
    .restart local v0    # "displayTimeout":J
    if-ne v5, v7, :cond_4

    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 426
    .restart local v0    # "displayTimeout":J
    return-wide v0

    .end local v0    # "displayTimeout":J
    .end local v4    # "isPowerSavingMode":Z
    .end local v5    # "isPowerSavingOn":Z
    .end local v6    # "isSmartStayOn":Z
    :cond_5
    move v6, v8

    .line 393
    goto/16 :goto_0

    .restart local v4    # "isPowerSavingMode":Z
    .restart local v6    # "isSmartStayOn":Z
    :cond_6
    move v4, v8

    .line 397
    goto :goto_1

    :cond_7
    move v5, v8

    .line 402
    goto :goto_2

    .restart local v5    # "isPowerSavingOn":Z
    :cond_8
    move v3, v8

    .line 407
    goto :goto_3

    .restart local v3    # "isLowLevel":Z
    :cond_9
    move v2, v8

    .line 408
    goto :goto_4
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->bouncerShowing:Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 284
    return-void
.end method

.method public setCoverShowing(ZZ)V
    .locals 1
    .param p1, "sViewShowing"    # Z
    .param p2, "sAppShowing"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sViewCoverShowing:Z

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->sAppCoverShowing:Z

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 301
    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1
    .param p1, "keyguardFadingAway"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardFadingAway:Z

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 289
    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardNeedsInput:Z

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 263
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 258
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 253
    return-void
.end method

.method public setKeyguardUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-wide p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardUserActivityTimeout:J

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 279
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->qsExpanded:Z

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 294
    return-void
.end method

.method public setStatusBarExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarExpanded:Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 269
    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarFocusable:Z

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 274
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->statusBarState:I

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V

    .line 310
    return-void
.end method
