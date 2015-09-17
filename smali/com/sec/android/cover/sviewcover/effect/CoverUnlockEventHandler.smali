.class public Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;
.super Ljava/lang/Object;
.source "CoverUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverUnlockEventHandler"


# instance fields
.field private mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

.field private mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsIgnoreTouch:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;Lcom/samsung/android/visualeffect/EffectView;)V
    .locals 4
    .param p1, "callback"    # Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;
    .param p2, "effectView"    # Lcom/samsung/android/visualeffect/EffectView;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 23
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 24
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 25
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 55
    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 56
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    .line 58
    check-cast p1, Landroid/view/View;

    .end local p1    # "callback":Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mFirstBorder:I

    .line 60
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mSecondBorder:I

    .line 61
    return-void
.end method

.method private launch()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v0, "CoverUnlockEventHandler"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 209
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    .line 210
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    const-string v10, "CoverUnlockEventHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsUnlockStarted - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 66
    .local v2, "action":I
    and-int/lit16 v5, v2, 0xff

    .line 67
    .local v5, "maskedAction":I
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    if-eqz v10, :cond_0

    .line 68
    const/4 v10, 0x1

    .line 189
    :goto_0
    return v10

    .line 71
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    if-eqz v10, :cond_4

    .line 72
    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    const/4 v10, 0x3

    if-ne v2, v10, :cond_2

    .line 73
    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 74
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 78
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v10, :cond_3

    .line 79
    const/4 v10, 0x0

    goto :goto_0

    .line 81
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 82
    const/4 v10, 0x1

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 87
    .local v8, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 89
    .local v9, "touchedEventY":F
    packed-switch v5, :pswitch_data_0

    .line 185
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v10, :cond_f

    .line 186
    const/4 v10, 0x0

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6

    .line 92
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 93
    const-string v10, "CoverUnlockEventHandler"

    const-string v11, "mIsMultiTouch true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 96
    const-string v10, "CoverUnlockEventHandler"

    const-string v11, "mIsMultiTouch false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :pswitch_2
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartX:F

    .line 101
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartY:F

    .line 102
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 104
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_5

    .line 105
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_1

    .line 110
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_7

    .line 111
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 114
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartX:F

    sub-float v10, v8, v10

    float-to-int v3, v10

    .line 115
    .local v3, "diffX":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartY:F

    sub-float v10, v9, v10

    float-to-int v4, v10

    .line 117
    .local v4, "diffY":I
    int-to-double v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-double v12, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 120
    if-eqz p1, :cond_8

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    cmpg-double v10, v10, v12

    if-gez v10, :cond_9

    .line 122
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_8

    .line 123
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    .line 132
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mSecondBorder:I

    int-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v10, :cond_5

    .line 133
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 135
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->launch()V

    .line 138
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    goto/16 :goto_1

    .line 126
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_8

    .line 127
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_2

    .line 143
    .end local v3    # "diffX":I
    .end local v4    # "diffY":I
    :pswitch_4
    const v10, 0xff00

    and-int/2addr v10, v2

    shr-int/lit8 v7, v10, 0x8

    .line 144
    .local v7, "pointer_index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 145
    .local v6, "pointer_id":I
    if-nez v6, :cond_a

    .line 146
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 150
    .end local v6    # "pointer_id":I
    .end local v7    # "pointer_index":I
    :cond_a
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_b

    .line 151
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 152
    const-string v10, "CoverUnlockEventHandler"

    const-string v11, "mIsMultiTouch false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_c

    const/4 v10, 0x3

    if-ne v5, v10, :cond_c

    .line 156
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 158
    :cond_c
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    goto/16 :goto_1

    .line 161
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_d

    .line 162
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 163
    const-string v10, "CoverUnlockEventHandler"

    const-string v11, "mIsMultiTouch false"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_e

    .line 167
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 170
    :cond_e
    const-string v10, "CoverUnlockEventHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_UP mDistance: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mFirstBorder:I

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    cmpg-double v10, v10, v12

    if-gez v10, :cond_5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mSecondBorder:I

    int-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v10, :cond_5

    .line 173
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 175
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v10, :cond_5

    .line 176
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v10}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->launch()V

    goto/16 :goto_1

    .line 188
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 189
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 89
    nop

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

    .prologue
    const/4 v2, 0x0

    .line 200
    const-string v0, "CoverUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 202
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 204
    return-void
.end method
