.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.super Landroid/widget/FrameLayout;
.source "CoverCircleView.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CoverCircleView"


# instance fields
.field private mAnimatingViews:[Landroid/view/View;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field private mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field protected mCoverUnlockEventHandler:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

.field protected mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field mScreenOnOffCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrowResId:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentResId:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mScreenOnOffCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onScreenTurnedOff()V

    return-void
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

    new-instance v5, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;

    invoke-direct {v5, p0, p1, v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$3;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;FLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onScreenTurnedOff()V
    .locals 2

    const-string v0, "CoverCircleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startStopArrowAnimation(Z)V

    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 2

    const-string v0, "CoverCircleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startStopArrowAnimation(Z)V

    return-void
.end method

.method private startStopArrowAnimation(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

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
.method protected getShortcutTextResId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "CoverCircleView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mScreenOnOffCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mScreenOnOffCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

    iget v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setArrowVisibility(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->doTransition(F[Landroid/view/View;)V

    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->DEFAULT:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setArrowVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->doTransition(F[Landroid/view/View;)V

    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->SWIPE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->PRESSED:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V

    goto :goto_0
.end method

.method protected reset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverUnlockEventHandler:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverUnlockEventHandler:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->reset()V

    :cond_0
    return-void
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mAnimatingViews:[Landroid/view/View;

    return-void
.end method

.method protected setArrowVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startStopArrowAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setEffectView(Lcom/samsung/android/visualeffect/EffectView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;Lcom/samsung/android/visualeffect/EffectView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverUnlockEventHandler:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;

    return-void
.end method

.method public setHelpText()V
    .locals 0

    return-void
.end method

.method public setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    return-void
.end method

.method public setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 0

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    return-void
.end method
