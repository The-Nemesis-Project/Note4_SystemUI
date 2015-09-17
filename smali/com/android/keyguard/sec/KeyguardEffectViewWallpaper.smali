.class public Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final BOTTOM_TO_TOP:I

.field private final DBG:Z

.field private final DIM_ALPHA:I

.field private final TAG:Ljava/lang/String;

.field private final TOP_TO_BOTTOM:I

.field private extractColor:I

.field private mContext:Landroid/content/Context;

.field private mIsLiveWallpaper:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mRect:Landroid/graphics/Rect;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->DIM_ALPHA:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->TOP_TO_BOTTOM:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->BOTTOM_TO_TOP:I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->setLockScreenWallpaper()V

    goto :goto_0
.end method

.method private applyBlendedFilter()V
    .locals 14

    const/4 v13, 0x0

    const/16 v12, 0x80

    const/16 v4, 0x34

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v10, Landroid/graphics/ImageFilterSet;

    invoke-direct {v10}, Landroid/graphics/ImageFilterSet;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v13}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {v4}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v4}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v9

    check-cast v9, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v11}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->calcGradientArea(ILandroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    invoke-static {v11, v2}, Lcom/android/keyguard/sec/ExtractColor;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v12, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const v5, 0x3f666666    # 0.9f

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v8, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    const-string v2, "WallpaperWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractedColor of top = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v13, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v8, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v11}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->calcGradientArea(ILandroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    invoke-static {v11, v2}, Lcom/android/keyguard/sec/ExtractColor;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-virtual {v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v12, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const v7, 0x3e23d70a    # 0.16f

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    const-string v1, "WallpaperWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractedColor of bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->extractColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v10, v9}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto/16 :goto_0
.end method

.method private calcGradientArea(ILandroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    :goto_0
    const-string v2, "WallpaperWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result rect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    return-object v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    int-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    int-to-double v4, v0

    const-wide v6, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int v3, v0, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetBlendedFilter()V
    .locals 7

    const/16 v6, 0x34

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {v6}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-static {v6}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    invoke-virtual {v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    invoke-virtual {v1, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    invoke-virtual {v1, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public getBitmapWallpaperImage()Landroid/graphics/Bitmap;
    .locals 3

    const-string v1, "WallpaperWidget"

    const-string v2, "getWallpaperImage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->buildDrawingCache()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWallpaperImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 0

    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "WallpaperWidget"

    const-string v1, "setContextualWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "WallpaperWidget"

    const-string v2, "setLockScreenWallpaper()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->applyBlendedFilter()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->resetBlendedFilter()V

    goto :goto_1
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewWallpaper;->setLockScreenWallpaper()V

    return-void
.end method
