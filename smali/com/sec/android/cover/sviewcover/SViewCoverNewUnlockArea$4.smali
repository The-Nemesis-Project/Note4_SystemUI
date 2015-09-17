.class Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;
.super Ljava/lang/Object;
.source "SViewCoverNewUnlockArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 393
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Left"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Right"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    :cond_0
    const/4 v5, 0x1

    .line 475
    :goto_0
    return v5

    .line 398
    :cond_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    const/4 v5, 0x1

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 405
    .local v3, "touchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 407
    .local v4, "touchedEventY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 475
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 409
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 411
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v5, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 412
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v5, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 413
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-wide/16 v6, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D

    .line 414
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v6, "Up"

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/4 v6, 0x1

    sget-object v7, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/view/View;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v10

    aput-object v10, v8, v9

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 418
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/high16 v6, 0x3f000000    # 0.5f

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)V

    .line 419
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    .line 420
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    .line 421
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 422
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    .line 423
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 427
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 429
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v5

    sub-float v5, v3, v5

    float-to-int v0, v5

    .line 430
    .local v0, "diffX":I
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v5

    sub-float v5, v4, v5

    float-to-int v1, v5

    .line 432
    .local v1, "diffY":I
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v5, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D

    .line 433
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v6, v6

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 446
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v5

    const v6, 0x3e99999a    # 0.3f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 447
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v8

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    goto/16 :goto_1

    .line 449
    :cond_4
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v8

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    goto/16 :goto_1

    .line 454
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_2
    const-string v5, "SViewCoverNewUnlockArea"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_UP mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_5

    .line 457
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v6, ""

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v6

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    .line 460
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.cover.sviewcover.SViewCoverMissedEventActivity.LAUNCH"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v2, "intent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 466
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v6, ""

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/4 v6, 0x0

    sget-object v7, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/view/View;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v10

    aput-object v10, v8, v9

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 468
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/high16 v6, 0x3f800000    # 1.0f

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)V

    .line 469
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v6

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    .line 470
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
