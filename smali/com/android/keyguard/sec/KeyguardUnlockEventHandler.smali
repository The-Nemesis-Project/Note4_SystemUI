.class public Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockEventHandler"


# instance fields
.field private mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsIgnoreTouch:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/KeyguardEffectViewBase;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->launch()V

    return-void
.end method

.method private launch()V
    .locals 3

    const-string v0, "KeyguardUnlockEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch() - mIsKeyguardDismissing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    instance-of v0, v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

    const-string v12, "KeyguardUnlockEventHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIsUnlockStarted - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v7, v2, 0xff

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    if-eq v2, v12, :cond_1

    const/4 v12, 0x3

    if-ne v2, v12, :cond_2

    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    packed-switch v7, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v12, :cond_12

    const/4 v12, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_6

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v12, "KeyguardUnlockEventHandler"

    const-string v13, "mIsMultiTouch true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v12, "KeyguardUnlockEventHandler"

    const-string v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartX:F

    sub-float v12, v10, v12

    float-to-int v3, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mStartY:F

    sub-float v12, v11, v12

    float-to-int v6, v12

    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-double v14, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v12, :cond_5

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v12, Landroid/view/View;

    new-instance v13, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v12, v13, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_2

    :pswitch_4
    const v12, 0xff00

    and-int/2addr v12, v2

    shr-int/lit8 v9, v12, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-nez v8, :cond_b

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    :cond_b
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v12, "KeyguardUnlockEventHandler"

    const-string v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_d

    const/4 v12, 0x3

    if-ne v7, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_d
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_e

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    const-string v12, "KeyguardUnlockEventHandler"

    const-string v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    :cond_f
    const-string v12, "KeyguardUnlockEventHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_UP mDistance: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mFirstBorder:I

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v14, v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v12, :cond_11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    if-nez p1, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v12, Landroid/view/View;

    new-instance v13, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;)V

    invoke-virtual {v12, v13, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v12}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;->setHelpText()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsIgnoreTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mDistance:D

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    return-void
.end method
