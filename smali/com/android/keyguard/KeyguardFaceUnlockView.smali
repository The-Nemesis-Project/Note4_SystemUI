.class public Lcom/android/keyguard/KeyguardFaceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I = 0x66ffffff

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FULKeyguardFaceUnlockView"


# instance fields
.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mIsShowingLock:Ljava/lang/Object;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$1;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$3;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardFaceUnlockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardFaceUnlockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initializeBiometricUnlockView()V
    .locals 2

    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "initializeBiometricUnlockView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/R$id;->face_unlock_area_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/FaceUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/FaceUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    sget v0, Lcom/android/keyguard/R$id;->face_unlock_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFaceUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$2;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private maybeStartBiometricUnlock()V
    .locals 6

    const-string v4, "FULKeyguardFaceUnlockView"

    const-string v5, "maybeStartBiometricUnlock()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v4}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_1
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->initializeBiometricUnlockView()V

    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume(I)V
    .locals 3

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/FaceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/FaceUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
