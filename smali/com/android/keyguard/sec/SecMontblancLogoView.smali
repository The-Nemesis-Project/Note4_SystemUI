.class public Lcom/android/keyguard/sec/SecMontblancLogoView;
.super Landroid/widget/FrameLayout;
.source "SecMontblancLogoView.java"


# static fields
.field private static final INK_NAME_BLUE:Ljava/lang/String; = "Midnight Blue"

.field private static final INK_NAME_RED:Ljava/lang/String; = "Burgundy Red"

.field private static final TAG:Ljava/lang/String; = "SecMontblancLogoView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecMontblancLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private getTypeOfCover(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v2, 0x2

    .line 107
    .local v2, "type":I
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 110
    .local v1, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    .line 113
    .end local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    return v2
.end method


# virtual methods
.method public isMontblancCoverAndWallpaper(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecMontblancLogoView;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 77
    .local v0, "coverType":I
    const/4 v1, 0x0

    .line 79
    .local v1, "isMontblancCover":Z
    const/16 v6, 0x64

    if-ne v0, v6, :cond_1

    move v1, v4

    .line 80
    :goto_0
    const/4 v2, 0x0

    .line 82
    .local v2, "isMontblancWallpaper":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_montblanc_wallpaper"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 85
    .local v3, "montblancWallpaperInkType":I
    if-eqz v3, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 89
    :cond_0
    const-string v6, "SecMontblancLogoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedToDisplayLogo() isMontblancCover = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isMontblancWallpaper = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :goto_1
    return v4

    .end local v2    # "isMontblancWallpaper":Z
    .end local v3    # "montblancWallpaperInkType":I
    :cond_1
    move v1, v5

    .line 79
    goto :goto_0

    .restart local v2    # "isMontblancWallpaper":Z
    .restart local v3    # "montblancWallpaperInkType":I
    :cond_2
    move v4, v5

    .line 92
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    sget v2, Lcom/android/keyguard/R$id;->montblanc_ink_name_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecMontblancLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "inkNameView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecMontblancLogoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_montblanc_wallpaper"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 59
    .local v1, "montblancWallpaperInkType":I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 61
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 62
    const-string v2, "Midnight Blue"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecMontblancLogoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->updateMontblancEffectType()V

    .line 69
    const-string v2, "SecMontblancLogoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ink name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_1
    return-void

    .line 64
    :cond_0
    const-string v2, "Burgundy Red"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_1
    const-string v2, "SecMontblancLogoView"

    const-string v3, "inkNameView or montblancWallpaperInkType is invalid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
