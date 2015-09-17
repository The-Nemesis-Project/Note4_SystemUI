.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWallpaperView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverWallpaperView"


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mCurCustomWallpaperPath:Ljava/lang/String;

.field private mCurWallpaperType:I

.field private mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->mainbg_pattern_mainarea:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setPreLoadWallpaperImage()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v2

    add-int/lit8 v1, v2, -0xa

    const-string v2, "SViewCoverWallpaperView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverWallpaperView wallpaper DB values :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    return-void
.end method


# virtual methods
.method public getCurrentWallpaperType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    return v0
.end method

.method public setCustomWallpaperImage(Ljava/lang/String;Z)V
    .locals 10

    const/4 v9, 0x2

    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v6, "SViewCoverWallpaperView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCustomWallpaperImage : Current wallpaper type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Force="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    if-eq p2, v6, :cond_1

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-static {p1, v4, v3}, Lcom/sec/android/cover/CoverUtils;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const v7, 0x106000c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/16 v7, 0x4d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    iput v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const-string v6, "SViewCoverWallpaperView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCustomWallpaperImage : Custom wallpaper file not exist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v6, "SViewCoverWallpaperView"

    const-string v7, "setCustomWallpaperImage : Wallpaer update skipped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEmergencyModeWallpaperImage(Z)V
    .locals 4

    const/4 v3, 0x4

    const-string v0, "SViewCoverWallpaperView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKidsModeWallpaperImage : Use emergency mode wallpaper - Current wallpaper type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v0, v3, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    :cond_1
    return-void
.end method

.method public setKidsModeWallpaperImage(Z)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string v3, "SViewCoverWallpaperView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKidsModeWallpaperImage : Use kids mode wallpaper - Current wallpaper type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v3, v7, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->sview_cover_kids_wallpaper:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const v4, 0x106000c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    :cond_2
    iput v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setProperWallpaper(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->isGuestMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setEmergencyModeWallpaperImage(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setKidsModeWallpaperImage(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isCustomWallpaperEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setCustomWallpaperImage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setPreLoadWallpaperImage()V

    goto :goto_0
.end method
