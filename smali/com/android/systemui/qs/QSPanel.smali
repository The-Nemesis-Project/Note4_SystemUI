.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/FrameLayout;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;,
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# static fields
.field private static final DB_NUMBER_OF_APPS:Ljava/lang/String; = "notification_panel_active_number_of_apps"

.field private static final TILE_ASPECT:F = 1.2f

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar-QSPanel"


# instance fields
.field private mBottomPadding:I

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessHeight:I

.field private mBrightnessPaddingTop:I

.field private mButtonCorrectionWidth:I

.field private mButtonGap:I

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCocktailBarPresent:Z

.field private mColumns:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mDefaultDisplay:Landroid/view/Display;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mExtraMargin:I

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsCocktailBarEnabled:Z

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mListening:Z

.field private mNotificationPadding:I

.field private mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

.field private mPanelPaddingBottom:I

.field private mQConnectHeight:I

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleLine:Z

.field private final mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

.field private mTopMarginFirstRow:I

.field private mTopMarginRow:I

.field private mVisibleButtonNum:I

.field mWM:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    .line 118
    iput v4, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    .line 704
    new-instance v0, Lcom/android/systemui/qs/QSPanel$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$5;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTeardownDetailWhenDone:Landroid/animation/AnimatorListenerAdapter;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 132
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWM:Landroid/view/IWindowManager;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 135
    new-instance v0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mNumberObserver:Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 176
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/QSPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getButtonNumberFromDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    .line 348
    .local v4, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 349
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 350
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 351
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 397
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 398
    new-instance v1, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 404
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 410
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v1, v2}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 412
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 413
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 415
    new-instance v3, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 421
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSTileView;->extraInit(Landroid/view/View$OnLongClickListener;)V

    .line 424
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 427
    return-void
.end method

.method private adjustCellWidth()V
    .locals 4

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 585
    .local v0, "displayWidth":I
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCocktailBarEnabled:Z

    if-eqz v1, :cond_0

    .line 586
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mExtraMargin:I

    sub-int/2addr v0, v1

    .line 588
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 589
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    sub-int/2addr v1, v2

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonCorrectionWidth:I

    .line 590
    const-string v1, "StatusBar-QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCellWidth mButtonWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", displayWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 580
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 668
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 656
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method private getButtonNumberFromDB()I
    .locals 5

    .prologue
    .line 827
    const/16 v0, 0xa

    .line 829
    .local v0, "ButtonNumber":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 830
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "notification_panel_active_number_of_apps"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 836
    :cond_0
    :goto_0
    const-string v2, "StatusBar-QSPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button Number from DB :  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v0

    .line 832
    :catch_0
    move-exception v1

    .line 833
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "StatusBar-QSPanel"

    const-string v3, "getButtonNumberFromDB() - SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getColumnCount(I)I
    .locals 5
    .param p1, "row"    # I

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "cols":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 646
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 647
    iget v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v0, :cond_1

    .line 631
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    .line 632
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v0, p1

    goto :goto_0

    .line 634
    :cond_1
    if-gtz p1, :cond_2

    .line 635
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    goto :goto_0

    .line 636
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginRow:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 438
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 439
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    .line 443
    :goto_0
    return-void

    .line 441
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 492
    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 0
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 457
    return-void
.end method

.method private refreshAllTiles()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 300
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 305
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 672
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 673
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 675
    .local v0, "scanState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    .line 673
    .end local v0    # "scanState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 319
    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 315
    return-void

    :cond_0
    move v0, v2

    .line 314
    goto :goto_0
.end method

.method private updateButtonInfo()V
    .locals 4

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 735
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 736
    const v1, 0x7f0c02e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPadding:I

    .line 737
    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 738
    const v1, 0x7f0c0356

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->adjustCellWidth()V

    .line 740
    const v1, 0x7f0c02b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 741
    const v1, 0x7f0c0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeight:I

    .line 742
    const v1, 0x7f0c0377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mQConnectHeight:I

    .line 743
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginFirstRow:I

    .line 744
    const v1, 0x7f0c03d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTopMarginRow:I

    .line 745
    const v1, 0x7f0c03d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    .line 746
    const-string v1, "StatusBar-QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateButtonInfo mButtonWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mColumns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orien: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mButtonCorrectionWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mButtonCorrectionWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method

.method private updateDetailText()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method


# virtual methods
.method public SetCocktailBarEnabled(Z)V
    .locals 0
    .param p1, "isCocktailBarEnabled"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mIsCocktailBarEnabled:Z

    .line 859
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .prologue
    .line 434
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 435
    return-void
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleLine()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 257
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    .line 258
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 260
    .local v1, "limit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->useTruncatedName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->dynamicallyCutandReduceTextSize(I)V

    .line 260
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(I)V

    goto :goto_1

    .line 268
    .end local v0    # "i":I
    .end local v1    # "limit":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v7

    .line 605
    .local v7, "w":I
    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 606
    .local v5, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 607
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSPanel;->getColumnCount(I)I

    move-result v0

    .line 608
    .local v0, "cols":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 609
    .local v1, "cw":I
    mul-int v8, v1, v0

    sub-int v8, v7, v8

    add-int/lit8 v9, v0, 0x1

    div-int v2, v8, v9

    .line 610
    .local v2, "extra":I
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v9, v1

    mul-int v4, v8, v9

    .line 611
    .local v4, "left":I
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v6

    .line 612
    .local v6, "top":I
    iget-object v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    add-int/2addr v9, v4

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v10, v6

    invoke-virtual {v8, v4, v6, v9, v10}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    .line 615
    const-string v8, "StatusBar-QSPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLayout left:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " record.row:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    .end local v0    # "cols":I
    .end local v1    # "cw":I
    .end local v2    # "extra":I
    .end local v4    # "left":I
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v6    # "top":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 516
    const/4 v5, -0x1

    .line 517
    .local v5, "r":I
    const/4 v0, -0x1

    .line 518
    .local v0, "c":I
    const/4 v8, 0x0

    .line 519
    .local v8, "rows":I
    const/4 v7, 0x0

    .line 520
    .local v7, "rowIsDual":Z
    const/4 v9, 0x0

    .line 522
    .local v9, "visibleTile":I
    iget-boolean v11, p0, Lcom/android/systemui/qs/QSPanel;->mCocktailBarPresent:Z

    if-eqz v11, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->adjustCellWidth()V

    .line 525
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 526
    .local v6, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 528
    iget-boolean v11, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v11, :cond_3

    .line 529
    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v11, v11, -0x1

    if-ge v0, v11, :cond_2

    .line 531
    add-int/lit8 v9, v9, 0x1

    .line 536
    :cond_2
    const/4 v5, 0x0

    .line 537
    add-int/lit8 v0, v0, 0x1

    .line 538
    iput v5, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 539
    iput v0, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 540
    add-int/lit8 v8, v5, 0x1

    goto :goto_0

    .line 544
    :cond_3
    const/4 v11, -0x1

    if-eq v5, v11, :cond_4

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v11, v11, -0x1

    if-ne v0, v11, :cond_5

    .line 545
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 546
    const/4 v0, 0x0

    .line 550
    :goto_1
    iput v5, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 551
    iput v0, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 552
    add-int/lit8 v8, v5, 0x1

    goto :goto_0

    .line 548
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    .end local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 557
    .restart local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v12, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v12}, Lcom/android/systemui/qs/QSTile;->supportsDualTargets()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)V

    .line 558
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_7

    .line 559
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 560
    .local v2, "cw":I
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 561
    .local v1, "ch":I
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v12

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    goto :goto_2

    .line 564
    .end local v1    # "ch":I
    .end local v2    # "cw":I
    .end local v6    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_8
    iget-boolean v11, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v11, :cond_9

    add-int/lit8 v11, v8, -0x1

    invoke-direct {p0, v11}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int v3, v11, v12

    .line 574
    .local v3, "h":I
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v11, :cond_a

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v11, v12

    mul-int v10, v11, v9

    .line 575
    .local v10, "w":I
    :goto_4
    invoke-virtual {p0, v10, v3}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    .line 577
    return-void

    .line 564
    .end local v3    # "h":I
    .end local v10    # "w":I
    :cond_9
    add-int/lit8 v11, v8, -0x1

    invoke-direct {p0, v11}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    add-int v3, v11, v12

    goto :goto_3

    .line 574
    .restart local v3    # "h":I
    :cond_a
    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    mul-int v10, v11, v12

    goto :goto_4
.end method

.method public resetAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 852
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 853
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_0

    .line 855
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0e01e1

    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 187
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 188
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 189
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 190
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 191
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 195
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 200
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 279
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_1

    .line 296
    :cond_0
    return-void

    .line 280
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 281
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 282
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    goto :goto_0
.end method

.method public setSecondLineAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 844
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 845
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    goto :goto_0

    .line 849
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method public setSingleLine(Z)I
    .locals 14
    .param p1, "singleLine"    # Z

    .prologue
    const/16 v13, 0x8

    const/4 v12, -0x2

    const/4 v8, 0x0

    .line 752
    const-string v9, "StatusBar-QSPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSingleLine:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 755
    :cond_0
    const-string v9, "StatusBar-QSPanel"

    const-string v10, "setSingleLine() - return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    return v8

    .line 758
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    .line 759
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateButtonInfo()V

    .line 761
    const/4 v4, -0x1

    .line 762
    .local v4, "r":I
    const/4 v0, -0x1

    .line 763
    .local v0, "c":I
    const/4 v7, 0x0

    .line 764
    .local v7, "rows":I
    const/4 v6, 0x0

    .line 765
    .local v6, "rowIsDual":Z
    iget-object v9, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 766
    .local v5, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    if-eqz p1, :cond_3

    .line 767
    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I

    add-int/lit8 v9, v9, -0x1

    if-ge v0, v9, :cond_2

    .line 768
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 773
    :goto_2
    const/4 v4, 0x0

    .line 774
    add-int/lit8 v0, v0, 0x1

    .line 775
    iput v4, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 776
    iput v0, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 777
    add-int/lit8 v7, v4, 0x1

    goto :goto_1

    .line 771
    :cond_2
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v13}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    goto :goto_2

    .line 781
    :cond_3
    const/4 v9, -0x1

    if-eq v4, v9, :cond_4

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v9, v9, -0x1

    if-ne v0, v9, :cond_5

    .line 782
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 783
    const/4 v0, 0x0

    .line 787
    :goto_3
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v9, :cond_6

    .line 788
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v9, v8}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 791
    :goto_4
    iput v4, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 792
    iput v0, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    .line 793
    add-int/lit8 v7, v4, 0x1

    goto :goto_1

    .line 785
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 790
    :cond_6
    iget-object v9, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    goto :goto_4

    .line 796
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 797
    .restart local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v8

    if-eq v8, v13, :cond_8

    .line 800
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 802
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v9, v10

    mul-int v2, v8, v9

    .line 803
    .local v2, "left":I
    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 804
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mButtonGap:I

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 805
    iget v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 806
    iget-object v8, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v8, v3}, Lcom/android/systemui/qs/QSPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 808
    .end local v2    # "left":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_9
    const-string v8, "StatusBar-QSPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSingleLine height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-boolean v8, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z

    if-eqz v8, :cond_a

    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v8, v9

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/qs/QSPanel;->mBottomPadding:I

    add-int/2addr v8, v9

    goto/16 :goto_0
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const-string v4, "StatusBar-QSPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qstile setTiles"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 329
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v4, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 331
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile;

    .line 335
    .local v3, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_1

    .line 341
    .end local v3    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    :cond_2
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 308
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    .line 309
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 311
    return-void
.end method

.method public updateResources()V
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 208
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    const v3, 0x7f0f0015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 215
    .local v0, "columns":I
    const v2, 0x7f0c02bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 216
    const v2, 0x7f0c02b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    .line 217
    const v2, 0x7f0c02c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateButtonInfo()V

    .line 220
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    if-eq v2, v0, :cond_0

    .line 221
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->postInvalidate()V

    .line 224
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDetailText()V

    .line 231
    return-void
.end method
