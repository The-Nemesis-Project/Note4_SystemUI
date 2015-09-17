.class public Lcom/android/keyguard/sec/SecKeyguardCircleView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardCircleView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleView"


# instance fields
.field private final MSG_SHORTCUT_MESSAGE_RESET:I

.field private mAnimatingViews:[Landroid/view/View;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field private mCurrentOrientation:F

.field private mHadFocus:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsLandscapeAvailable:Z

.field private mIsScreenOn:Z

.field protected mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mPowerManager:Landroid/os/PowerManager;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

.field protected mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x8a3

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->MSG_SHORTCUT_MESSAGE_RESET:I

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHadFocus:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    return v0
.end method

.method private varargs doTransition(F[Landroid/view/View;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;FLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isLandscapeLayoutAvailable()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->shouldEnableScreenRotation()Z

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private onScreenTurnedOff()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    return-void
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startStopArrowAnimation(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getShortcutTextResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getToastTextResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isShowingCMASText()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "SecKeyguardCircleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCMASText() can not found setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_camera:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_camera_shortcut_tts:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 3

    const/16 v2, 0x8a3

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getToastTextResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_2
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 8

    const/16 v7, 0x8a3

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget-object v3, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessage(I)V

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getToastTextResId()I

    move-result v3

    if-eq v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x109010a

    const v3, 0x1020379

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getToastTextResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 3

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->isShowingCMASText()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->removeShortcutReleaseMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->removeShortcutMessage()V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setMessage(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessageLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->removeShortcutMessage()V

    goto :goto_0
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    goto :goto_0
.end method

.method public removeShortcutReleaseMessage()V
    .locals 4

    const/16 v1, 0x8a3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected rotateIcon(I)V
    .locals 11

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v8, 0x43340000    # 180.0f

    const-string v4, "SecKeyguardCircleView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotateIcon-- mCurrentOrientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "currentOrientation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    int-to-float v2, p1

    cmpl-float v4, v0, v7

    if-nez v4, :cond_4

    cmpl-float v4, v2, v9

    if-nez v4, :cond_4

    const/high16 v0, 0x43b40000    # 360.0f

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cocktail_bar_enabled_180_rotate"

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_5

    move v1, v3

    :goto_1
    if-ne v1, v3, :cond_1

    cmpl-float v3, v2, v8

    if-nez v3, :cond_7

    cmpl-float v3, v0, v10

    if-nez v3, :cond_6

    const/high16 v2, 0x43b40000    # 360.0f

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    int-to-float v3, p1

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    :cond_3
    return-void

    :cond_4
    cmpl-float v4, v0, v9

    if-nez v4, :cond_0

    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    const/high16 v2, 0x43b40000    # 360.0f

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    cmpl-float v3, v2, v10

    if-eqz v3, :cond_8

    cmpl-float v3, v2, v9

    if-nez v3, :cond_1

    :cond_8
    cmpl-float v3, v0, v8

    if-nez v3, :cond_1

    add-float/2addr v2, v8

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    goto :goto_2
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    return-void
.end method

.method protected setArrowVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setHelpText()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    return-void
.end method

.method public setScrollView(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 0

    return-void
.end method

.method public setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
