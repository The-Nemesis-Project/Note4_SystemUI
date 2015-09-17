.class public Lcom/android/keyguard/sec/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternView$1;,
        Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;
    }
.end annotation


# static fields
.field private static final TYPE_COLORFUL:I = 0x3

.field private static final TYPE_DOT:I = 0x1

.field private static final TYPE_MORPHING:I = 0x2

.field private static final TYPE_NONE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field private festivalPaused:Z

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBtnDefaultForNone:Landroid/graphics/Bitmap;

.field private mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

.field private mBtnTouchedForNone:Landroid/graphics/Bitmap;

.field private mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

.field private mCircleDefaultForNone:Landroid/graphics/Bitmap;

.field private mCircleDefaultForPattern:Landroid/graphics/Bitmap;

.field private mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleGreenForMorphing:Landroid/graphics/Bitmap;

.field private mCircleGreenForNone:Landroid/graphics/Bitmap;

.field private mCircleGreenForPattern:Landroid/graphics/Bitmap;

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mCircleRedForCandy:Landroid/graphics/Bitmap;

.field private mCircleRedForMorphing:Landroid/graphics/Bitmap;

.field private mCircleRedForNone:Landroid/graphics/Bitmap;

.field private mCircleRedForPattern:Landroid/graphics/Bitmap;

.field private mDiameterFactor:F

.field private final mStrokeAlpha:I

.field private final morphAnimationStartThreshold:F

.field private final morphColor:I

.field private morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

.field private morphEffectScale:F

.field private final morphLineRatio:F

.field private morphPaint:Landroid/graphics/Paint;

.field private morphRatio:F

.field private final offsetForCircleLineInvalidateRect:I

.field private pathTotal:I

.field private patternType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/16 v10, 0x80

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v5, "SecLockPatternView"

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mDiameterFactor:F

    iput v10, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mStrokeAlpha:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    sget-object v5, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphColor:I

    const/16 v5, 0x14

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->offsetForCircleLineInvalidateRect:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationStartThreshold:F

    const v5, 0x3e4ccccd    # 0.2f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphLineRatio:F

    const v5, 0x3f6b851f    # 0.92f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    iput-boolean v8, p0, Lcom/android/keyguard/sec/SecLockPatternView;->festivalPaused:Z

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_pattern_type"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "patternType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v5, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    sget v5, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->loadResource()V

    const/4 v5, 0x5

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v8

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    if-ne v5, v9, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->setForMorphing()V

    :cond_1
    return-void
.end method

.method private checkDistance(FFFF)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    float-to-double v4, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    mul-float/2addr v4, v10

    float-to-double v4, v4

    div-double v4, v2, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_0

    sget-object v4, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    :cond_0
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getImagesForCircle(II)V

    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInStealthMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v16, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v17, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v12, v0

    int-to-float v0, v9

    move/from16 v21, v0

    sub-float v21, v16, v21

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    add-int v22, p2, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, p3, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    sget-object v21, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_8
    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unknown display mode "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v21

    move/from16 v0, p5

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v21

    move/from16 v0, p6

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    add-int v21, p2, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v6, v0

    add-int v21, p3, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/android/keyguard/sec/SecLockPatternView;->getDegree(FFFF)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v15}, Lcom/android/keyguard/sec/SecLockPatternView;->drawMorph(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawLastLine(Landroid/graphics/Path;FFFF)V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/keyguard/sec/SecLockPatternView;->checkDistance(FFFF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawMorph(Landroid/graphics/Canvas;FFF)V
    .locals 5

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    const/high16 v3, 0x42b40000    # 90.0f

    add-float v2, p4, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v3, p2

    neg-float v4, p3

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawSmallCircle(Landroid/graphics/Canvas;FFZ)V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v0, p2, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v1, p3, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getColor()I
    .locals 3

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v0, 0xb2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private getDegree(FFFF)D
    .locals 8

    const-wide/16 v0, 0x0

    sub-float v6, p3, p1

    float-to-double v2, v6

    sub-float v6, p4, p2

    float-to-double v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getImagesForCircle(II)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    const/4 v5, 0x5

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    const/4 v5, 0x3

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    const/4 v5, 0x4

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    if-nez v1, :cond_0

    move v5, v6

    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    if-nez v1, :cond_1

    move v5, v6

    :goto_3
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnDefaultForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_3
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_3

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getLineRadius()F
    .locals 3

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mDiameterFactor:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v1, v2

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private loadResource()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnDefaultForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_candy:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setForMorphing()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v2, :cond_1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reolution : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smallestWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x438

    if-eq v4, v5, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x44870000    # 1080.0f

    div-float v1, v5, v6

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ratio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "morphEffectScale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    :cond_0
    new-instance v5, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    invoke-direct {v5, v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;-><init>(F)V

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPathTotal()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_1
    move v4, v2

    goto/16 :goto_0
.end method

.method private setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Morphing current status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    :cond_0
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->festivalPaused:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v26

    if-eqz v26, :cond_0

    new-instance v12, Landroid/content/Intent;

    const-string v26, "com.bst.action.PAUSE_FESTIVAL"

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->festivalPaused:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "PAUSE_FESTIVAL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v13, 0x0

    const/4 v11, 0x0

    :goto_0
    add-int/lit8 v26, v7, 0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_8

    if-ge v11, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v24

    :goto_1
    if-ge v11, v7, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v25

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v8, :cond_1

    const/16 v26, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->notifyPatternStarted()V

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move/from16 v26, v0

    sub-float v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move/from16 v26, v0

    sub-float v26, v25, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/16 v26, 0x0

    cmpl-float v26, v4, v26

    if-gtz v26, :cond_2

    const/16 v26, 0x0

    cmpl-float v26, v5, v26

    if-lez v26, :cond_3

    :cond_2
    const/4 v13, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v26, v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v0, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    iget v0, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v16

    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v26

    sub-float v26, v26, v20

    const/high16 v27, 0x41a00000    # 20.0f

    sub-float v17, v26, v27

    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v26

    add-float v26, v26, v20

    const/high16 v27, 0x41a00000    # 20.0f

    add-float v21, v26, v27

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v26

    sub-float v26, v26, v20

    const/high16 v27, 0x41a00000    # 20.0f

    sub-float v22, v26, v27

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v26

    add-float v26, v26, v20

    const/high16 v27, 0x41a00000    # 20.0f

    add-float v3, v26, v27

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v23, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v6, v26, v27

    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v10

    sub-float v26, v9, v23

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    add-float v26, v9, v23

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    sub-float v26, v10, v6

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v22

    add-float v26, v10, v6

    move/from16 v0, v26

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v30

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->union(IIII)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v18, 0x1

    mul-int/lit16 v0, v2, 0x2bc

    move/from16 v30, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v6, v8

    long-to-int v2, v6

    rem-int v36, v2, v30

    move/from16 v0, v36

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPatternDrawLookup()V

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v29

    if-ge v11, v0, :cond_0

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v20, v2

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v6

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-lez v29, :cond_7

    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    const/16 v27, 0x1

    :goto_1
    if-eqz v27, :cond_1

    move/from16 v0, v36

    rem-int/lit16 v2, v0, 0x2bc

    int-to-float v2, v2

    const/high16 v6, 0x442f0000    # 700.0f

    div-float v34, v2, v6

    add-int/lit8 v2, v29, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/widget/LockPatternView$Cell;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v16

    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/LockPatternView$Cell;

    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float/2addr v2, v15

    mul-float v22, v34, v2

    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float v2, v2, v16

    mul-float v23, v34, v2

    add-float v2, v15, v22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    add-float v2, v16, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v37, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getColor()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v6, :cond_8

    :cond_3
    const/16 v21, 0x1

    :goto_2
    if-eqz v21, :cond_6

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v2, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v2, v20, v2

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v2, v2, v6

    if-nez v2, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v6, :cond_6

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_d

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/SecLockPatternView;->drawLastLine(Landroid/graphics/Path;FFFF)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaddingTop:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaddingLeft:I

    move/from16 v31, v0

    const/4 v11, 0x0

    :goto_5
    const/4 v2, 0x3

    if-ge v11, v2, :cond_f

    move/from16 v0, v32

    int-to-float v2, v0

    int-to-float v6, v11

    mul-float v6, v6, v37

    add-float v40, v2, v6

    const/4 v12, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v12, v2, :cond_e

    move/from16 v0, v31

    int-to-float v2, v0

    int-to-float v6, v12

    mul-float v6, v6, v38

    add-float v26, v2, v6

    move/from16 v0, v26

    float-to-int v8, v0

    move/from16 v0, v40

    float-to-int v9, v0

    aget-object v2, v20, v11

    aget-boolean v10, v2, v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/keyguard/sec/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x1

    iget v2, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    iget v2, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v16

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v2, v2, v6

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v39, v2, v6

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v6, 0x1

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_c

    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v6, 0x1

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_c

    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    move/from16 v24, v15

    move/from16 v25, v16

    add-int/lit8 v2, v18, -0x1

    if-ne v11, v2, :cond_b

    move v4, v15

    move/from16 v5, v16

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_c
    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_10

    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    :cond_10
    :goto_8
    return-void

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
