.class public Lcom/android/keyguard/sec/WallpaperWidgetContainer;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidgetContainer.java"


# static fields
.field private static final COLLAPSED:I = 0x2

.field private static final EXPANDED:I = 0x0

.field private static final EXPANDING:I = 0x1

.field private static final INTENT_WALLPAPER_NEXT_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

.field private static final INTENT_WALLPAPER_PINUP_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

.field private static final INTENT_WALLPAPER_UPDATE_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_changing"

.field private static final MORE_CLOSE_IMAGE:I

.field private static final MORE_OPEN_IMAGE:I

.field private static final MSG_COLLAPSED:I = 0x3ea

.field private static final MSG_EXPANDED:I = 0x3e9

.field private static final MSG_EXPANDING:I = 0x3e8

.field private static final MSG_NEXT:I = 0x3ec

.field private static final MSG_PINUP:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "WallpaperWidgetContainer"


# instance fields
.field private isRichLockWallpaper:Z

.field private mBackgroundAnim:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

.field private mMoreButton:Landroid/widget/ImageView;

.field private mNextButton:Landroid/view/View;

.field private mPinButton:Landroid/widget/ImageView;

.field private mPinUpState:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueueImg:Landroid/view/View;

.field private mQueueLayout:Landroid/view/ViewGroup;

.field private mState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetItems:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_close:I

    sput v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_open:I

    sput v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    new-instance v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$3;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$4;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$5;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->init()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setVisibilityView(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->startBackgroundAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/WallpaperWidgetContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->startExpendingAnimation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/WallpaperWidgetContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setPinUpState(Z)V

    return-void
.end method

.method private calculateDstPosition(F)F
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    sub-float v0, p1, v3

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v1

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method private createMoreButton()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createWidgetItem()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->createMoreButton()V

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_background:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_remote:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->pin_button:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->next_button:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->menu_queue:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v3, Lcom/android/keyguard/R$id;->queue_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$1;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer$2;-><init>(Lcom/android/keyguard/sec/WallpaperWidgetContainer;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setPinUpState(Z)V

    return-void
.end method

.method private getMaxPosition()F
    .locals 4

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v2, v0, v1

    int-to-float v2, v2

    return v2
.end method

.method private getMoreImageSize()I
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    return v1
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/KeyguardEffectViewController;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_widget_grid:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "isRichLockWallpaper() add widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->createWidgetItem()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setVisibilityView(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "WallpaperWidgetContainer"

    const-string v1, "not isRichLockWallpaper() remove widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private relayoutParam(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->wallpaper_widget_width_include_ripple:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setBackgroundVisibility(I)V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v4, Lcom/android/keyguard/R$id;->wallpaper_widget_background:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMoreButtonVisibility(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setPinUpState(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinUpState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinned_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinup_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setRemoteButtonVisibility(I)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setVisibilityView(I)V
    .locals 1

    iput p1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setMoreButtonVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setRemoteButtonVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setBackgroundVisibility(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->relayoutParam(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSmooth(ILandroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBackgroundAnim()V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startExpendingAnimation(I)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->setVisibilityView(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v1, "WallpaperWidgetContainer"

    const-string v2, "onFinishInflate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->init()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.keyguardwallpaperupdator.wallpaper_changing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v10, 0x3ea

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    iget-boolean v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->isRichLockWallpaper:Z

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return v8

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    if-eqz v5, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    goto :goto_0

    :pswitch_1
    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->calculateDstPosition(F)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    div-float v6, v2, v6

    sub-float v1, v5, v6

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownX:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mDownY:F

    sub-float v3, v5, v6

    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onOutsideTouch()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
