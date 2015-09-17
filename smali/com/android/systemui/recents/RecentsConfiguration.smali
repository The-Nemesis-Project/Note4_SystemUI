.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field static sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

.field static sPrevConfigurationHashCode:I


# instance fields
.field public altTabKeyDelay:I

.field public animationPxMovementPerSecond:F

.field public closeAllButtonSpaceHeightPx:I

.field public closeAllButtonVisibility:Z

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public displayRect:Landroid/graphics/Rect;

.field public doNotDrawTaskViewHeader:Z

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field isLandscape:Z

.field public launchedFromAppWithScreenshot:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromHome:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field public mIsMultiWindowEnabled:Z

.field public mIsUPSMEnabled:Z

.field public maxNumTasksToLoad:I

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public showMaxNumTasksToLoad:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarEnterAnimDelay:I

.field public taskBarEnterAnimDuration:I

.field public taskBarExitAnimDuration:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromHomeDelay:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewLockToAppButtonHeight:I

.field public taskViewLockToAppLongAnimDuration:I

.field public taskViewLockToAppShortAnimDuration:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public topTaskInitialScrollUpOffset:F

.field public topTaskInitialScrollUpOffsetOnMultiWindow:F

.field public useHardwareLayers:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 142
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    .line 150
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 152
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 158
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 162
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 166
    .local v0, "configHashCode":I
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 167
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 168
    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 170
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 171
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getCloseAllButtonBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "closeAllButtonrSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonSpaceHeightPx:I

    .line 422
    .local v0, "closeAllButtonSize":I
    const/4 v1, 0x0

    sub-int v2, p2, v0

    invoke-virtual {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    return-void
.end method

.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 403
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 405
    .local v0, "searchBarSize":I
    const/4 v0, 0x0

    .line 408
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 383
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 384
    .local v1, "searchBarBounds":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 385
    .local v0, "closeAllButtonBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 386
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getCloseAllButtonBounds(IIILandroid/graphics/Rect;)V

    .line 387
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v2, :cond_0

    .line 389
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, p1, p4

    invoke-virtual {p5, v2, p3, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5, v2, v3, p1, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasHorizontalLayout()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    return v0
.end method

.method update(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 182
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 183
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 186
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 187
    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v9, :cond_0

    .line 188
    sput-boolean v10, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    .line 192
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_1

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 193
    const v9, 0x7f0b0027

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 194
    const v9, 0x7f0b0028

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 197
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v9, v11, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    const v9, 0x7f0c02df

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->animationPxMovementPerSecond:F

    .line 204
    const v9, 0x7f0f0020

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 206
    const v9, 0x7f0f0021

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 211
    const v9, 0x7f0f000b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->showMaxNumTasksToLoad:I

    .line 214
    const v9, 0x7f0c02db

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 215
    sget-object v9, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 218
    const v9, 0x7f0c0357

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonSpaceHeightPx:I

    .line 221
    const v9, 0x7f0f002d

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 223
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 224
    .local v8, "widthPaddingPctValue":Landroid/util/TypedValue;
    const v9, 0x7f0c02dc

    invoke-virtual {v2, v9, v8, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 225
    invoke-virtual {v8}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 226
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 227
    .local v4, "stackOverscrollPctValue":Landroid/util/TypedValue;
    const v9, 0x7f0c02dd

    invoke-virtual {v2, v9, v4, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 228
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 229
    const v9, 0x7f0f002e

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 230
    const v9, 0x7f0c02de

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 233
    const v9, 0x7f0f0026

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDelay:I

    .line 235
    const v9, 0x7f0f0027

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 237
    const v9, 0x7f0f0028

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 239
    const v9, 0x7f0f0024

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 241
    const v9, 0x7f0f002c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 243
    const v9, 0x7f0c02d5

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 245
    const v9, 0x7f0c02d2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 247
    const v9, 0x7f0c02d6

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 248
    const v9, 0x7f0c02d3

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 249
    const v9, 0x7f0c02d4

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 250
    const v9, 0x7f0c02d8

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 252
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 253
    .local v5, "thumbnailAlphaValue":Landroid/util/TypedValue;
    const v9, 0x7f0c02d9

    invoke-virtual {v2, v9, v5, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 254
    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 257
    const v9, 0x7f0a0046

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 259
    const v9, 0x7f0a0047

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 261
    const v9, 0x7f0a0048

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 263
    const v9, 0x7f0a004b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 265
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 266
    .local v0, "affMinAlphaPctValue":Landroid/util/TypedValue;
    const v9, 0x7f0c02e0

    invoke-virtual {v2, v9, v0, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 267
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 270
    const v9, 0x7f0c02da

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    .line 271
    const v9, 0x7f0f0022

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    .line 273
    const v9, 0x7f0f0023

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDelay:I

    .line 275
    const v9, 0x7f0f0025

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    .line 277
    const v9, 0x7f0f001f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 281
    const v9, 0x7f0c02d7

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppButtonHeight:I

    .line 283
    const v9, 0x7f0f0029

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppShortAnimDuration:I

    .line 285
    const v9, 0x7f0f002a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewLockToAppLongAnimDuration:I

    .line 289
    const v9, 0x7f0f002b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 293
    const v9, 0x7f0b0017

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 294
    const v9, 0x7f0f002f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 296
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 297
    .local v6, "topTaskInitialScrollTopOffsetValue":Landroid/util/TypedValue;
    const v9, 0x7f0c038f

    invoke-virtual {v2, v9, v6, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 298
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffset:F

    .line 299
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 300
    .local v7, "topTaskInitialScrollTopOffsetValueOnMultiWindow":Landroid/util/TypedValue;
    const v9, 0x7f0c0390

    invoke-virtual {v2, v9, v7, v10}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 302
    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/recents/RecentsConfiguration;->topTaskInitialScrollUpOffsetOnMultiWindow:F

    .line 303
    return-void

    .end local v0    # "affMinAlphaPctValue":Landroid/util/TypedValue;
    .end local v4    # "stackOverscrollPctValue":Landroid/util/TypedValue;
    .end local v5    # "thumbnailAlphaValue":Landroid/util/TypedValue;
    .end local v6    # "topTaskInitialScrollTopOffsetValue":Landroid/util/TypedValue;
    .end local v7    # "topTaskInitialScrollTopOffsetValueOnMultiWindow":Landroid/util/TypedValue;
    .end local v8    # "widthPaddingPctValue":Landroid/util/TypedValue;
    :cond_1
    move v9, v11

    .line 192
    goto/16 :goto_0
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 339
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 341
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithScreenshot:Z

    .line 342
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 344
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 323
    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsUPSMEnabled:Z

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "multi_window_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowEnabled:Z

    .line 333
    return-void

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0

    :cond_1
    move v0, v2

    .line 323
    goto :goto_1

    :cond_2
    move v0, v2

    .line 325
    goto :goto_2

    :cond_3
    move v1, v2

    .line 329
    goto :goto_3
.end method

.method public updateSearchBarAppWidgetId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 312
    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    return-void
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    return-void
.end method
