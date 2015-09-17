.class public Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;
.super Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.source "SViewCoverZeroUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SViewCoverZeroUnlockArea"


# instance fields
.field private mCameraCircleView:Landroid/view/View;

.field private mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

.field private mContactCircleView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mUnlockLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 13

    invoke-direct/range {p0 .. p3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v6, :cond_0

    move v8, v7

    :goto_0
    int-to-float v9, v8

    const/high16 v10, 0x44870000    # 1080.0f

    div-float v5, v9, v10

    const-string v9, "SViewCoverZeroUnlockArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenWidth : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SViewCoverZeroUnlockArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenHeight : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SViewCoverZeroUnlockArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ratio : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v0, v9

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v5

    float-to-int v4, v9

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v5

    float-to-int v3, v9

    new-instance v9, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    new-instance v1, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    iget-object v9, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v0, v9, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    iget-object v9, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v4, v9, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    iget-object v9, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v3, v9, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    iget-object v9, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    iput-object v10, v9, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    iget-object v9, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    const/4 v10, 0x0

    iput v10, v9, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v9, v1}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    return-void

    :cond_0
    move v8, v6

    goto/16 :goto_0
.end method

.method private updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V
    .locals 3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleHide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setVisibility(I)V

    return-void
.end method

.method public handleShow()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    return-void
.end method

.method public handleUnlock(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    :cond_0
    return-void
.end method

.method public initMultiTouched()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_contact_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "set_shortcuts_mode"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_effect_view_container:I

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCameraCircleView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEffectView(Lcom/samsung/android/visualeffect/EffectView;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContactCircleView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setEffectView(Lcom/samsung/android/visualeffect/EffectView;)V

    :cond_2
    return-void
.end method

.method public setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 0

    return-void
.end method

.method public setPageNavigationVisibility(I)V
    .locals 0

    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0

    return-void
.end method

.method public updateNotiArea(II)V
    .locals 0

    return-void
.end method

.method public updateNotiPageButton(II)V
    .locals 0

    return-void
.end method
